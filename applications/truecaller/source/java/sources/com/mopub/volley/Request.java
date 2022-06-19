package com.mopub.volley;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.CallSuper;
import android.support.annotation.GuardedBy;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.volley.Cache;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyLog;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/Request.class */
public abstract class Request<T> implements Comparable<Request<T>> {

    /* renamed from: a */
    public final VolleyLog.C2722a f9274a;

    /* renamed from: b */
    public final int f9275b;

    /* renamed from: c */
    public final String f9276c;

    /* renamed from: d */
    public final int f9277d;

    /* renamed from: e */
    public final Object f9278e;
    @GuardedBy("mLock")
    @Nullable

    /* renamed from: f */
    public Response.ErrorListener f9279f;

    /* renamed from: g */
    public Integer f9280g;

    /* renamed from: h */
    public RequestQueue f9281h;

    /* renamed from: i */
    public boolean f9282i;
    @GuardedBy("mLock")

    /* renamed from: j */
    public boolean f9283j;
    @GuardedBy("mLock")

    /* renamed from: k */
    public boolean f9284k;

    /* renamed from: l */
    public boolean f9285l;

    /* renamed from: m */
    public RetryPolicy f9286m;

    /* renamed from: n */
    public Cache.Entry f9287n;

    /* renamed from: o */
    public Object f9288o;
    @GuardedBy("mLock")

    /* renamed from: p */
    public AbstractC2721b f9289p;

    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/Request$Method.class */
    public interface Method {
        public static final int DELETE = 3;
        public static final int DEPRECATED_GET_OR_POST = -1;
        public static final int GET = 0;
        public static final int HEAD = 4;
        public static final int OPTIONS = 5;
        public static final int PATCH = 7;
        public static final int POST = 1;
        public static final int PUT = 2;
        public static final int TRACE = 6;
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/Request$Priority.class */
    public enum Priority {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    /* renamed from: com.mopub.volley.Request$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/Request$a.class */
    public class RunnableC2720a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f9291a;

        /* renamed from: b */
        public final /* synthetic */ long f9292b;

        public RunnableC2720a(String str, long j) {
            Request.this = r5;
            this.f9291a = str;
            this.f9292b = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            Request.this.f9274a.add(this.f9291a, this.f9292b);
            Request request = Request.this;
            request.f9274a.finish(request.toString());
        }
    }

    /* renamed from: com.mopub.volley.Request$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/Request$b.class */
    public interface AbstractC2721b {
        void onNoUsableResponseReceived(Request<?> request);

        void onResponseReceived(Request<?> request, Response<?> response);
    }

    public Request(int i, String str, @Nullable Response.ErrorListener errorListener) {
        this.f9274a = VolleyLog.C2722a.ENABLED ? new VolleyLog.C2722a() : null;
        this.f9278e = new Object();
        this.f9282i = true;
        this.f9283j = false;
        this.f9284k = false;
        this.f9285l = false;
        this.f9287n = null;
        this.f9275b = i;
        this.f9276c = str;
        this.f9279f = errorListener;
        setRetryPolicy(new DefaultRetryPolicy());
        int i2 = 0;
        if (!TextUtils.isEmpty(str)) {
            Uri parse = Uri.parse(str);
            i2 = 0;
            if (parse != null) {
                String host = parse.getHost();
                i2 = 0;
                if (host != null) {
                    i2 = host.hashCode();
                }
            }
        }
        this.f9277d = i2;
    }

    @Deprecated
    public Request(String str, Response.ErrorListener errorListener) {
        this(-1, str, errorListener);
    }

    /* renamed from: a */
    public final byte[] m36168a(Map<String, String> map, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getKey() == null || entry.getValue() == null) {
                    throw new IllegalArgumentException(String.format("Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null.", entry.getKey(), entry.getValue()));
                }
                sb.append(URLEncoder.encode(entry.getKey(), str));
                sb.append('=');
                sb.append(URLEncoder.encode(entry.getValue(), str));
                sb.append('&');
            }
            return sb.toString().getBytes(str);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(C22128a.m8543z2("Encoding not supported: ", str), e);
        }
    }

    public void addMarker(String str) {
        if (VolleyLog.C2722a.ENABLED) {
            this.f9274a.add(str, Thread.currentThread().getId());
        }
    }

    /* renamed from: c */
    public void m36167c(String str) {
        RequestQueue requestQueue = this.f9281h;
        if (requestQueue != null) {
            synchronized (requestQueue.f9295b) {
                requestQueue.f9295b.remove(this);
            }
            synchronized (requestQueue.f9303j) {
                for (RequestQueue.RequestFinishedListener requestFinishedListener : requestQueue.f9303j) {
                    requestFinishedListener.onRequestFinished(this);
                }
            }
            requestQueue.m36161a(this, 5);
        }
        if (VolleyLog.C2722a.ENABLED) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new RunnableC2720a(str, id));
                return;
            }
            this.f9274a.add(str, id);
            this.f9274a.finish(toString());
        }
    }

    @CallSuper
    public void cancel() {
        synchronized (this.f9278e) {
            this.f9283j = true;
            this.f9279f = null;
        }
    }

    public int compareTo(Request<T> request) {
        Priority priority = getPriority();
        Priority priority2 = request.getPriority();
        return priority == priority2 ? this.f9280g.intValue() - request.f9280g.intValue() : priority2.ordinal() - priority.ordinal();
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return compareTo((Request) ((Request) obj));
    }

    /* renamed from: d */
    public Map<String, String> m36166d() throws AuthFailureError {
        return null;
    }

    public void deliverError(VolleyError volleyError) {
        Response.ErrorListener errorListener;
        synchronized (this.f9278e) {
            errorListener = this.f9279f;
        }
        if (errorListener != null) {
            errorListener.onErrorResponse(volleyError);
        }
    }

    public abstract void deliverResponse(T t);

    /* renamed from: e */
    public void m36165e() {
        AbstractC2721b abstractC2721b;
        synchronized (this.f9278e) {
            abstractC2721b = this.f9289p;
        }
        if (abstractC2721b != null) {
            abstractC2721b.onNoUsableResponseReceived(this);
        }
    }

    /* renamed from: f */
    public void m36164f(Response<?> response) {
        AbstractC2721b abstractC2721b;
        synchronized (this.f9278e) {
            abstractC2721b = this.f9289p;
        }
        if (abstractC2721b != null) {
            abstractC2721b.onResponseReceived(this, response);
        }
    }

    /* renamed from: g */
    public abstract Response<T> m36163g(NetworkResponse networkResponse);

    public byte[] getBody() throws AuthFailureError {
        Map<String, String> m36166d = m36166d();
        if (m36166d == null || m36166d.size() <= 0) {
            return null;
        }
        return m36168a(m36166d, StringConstant.UTF8);
    }

    public String getBodyContentType() {
        return C22128a.m8543z2("application/x-www-form-urlencoded; charset=", StringConstant.UTF8);
    }

    public Cache.Entry getCacheEntry() {
        return this.f9287n;
    }

    public String getCacheKey() {
        String url = getUrl();
        int method = getMethod();
        String str = url;
        if (method != 0) {
            if (method == -1) {
                str = url;
            } else {
                str = Integer.toString(method) + '-' + url;
            }
        }
        return str;
    }

    @Nullable
    public Response.ErrorListener getErrorListener() {
        Response.ErrorListener errorListener;
        synchronized (this.f9278e) {
            errorListener = this.f9279f;
        }
        return errorListener;
    }

    public Map<String, String> getHeaders() throws AuthFailureError {
        return Collections.emptyMap();
    }

    public int getMethod() {
        return this.f9275b;
    }

    @Deprecated
    public byte[] getPostBody() throws AuthFailureError {
        Map<String, String> m36166d = m36166d();
        if (m36166d == null || m36166d.size() <= 0) {
            return null;
        }
        return m36168a(m36166d, StringConstant.UTF8);
    }

    @Deprecated
    public String getPostBodyContentType() {
        return getBodyContentType();
    }

    public Priority getPriority() {
        return Priority.NORMAL;
    }

    public RetryPolicy getRetryPolicy() {
        return this.f9286m;
    }

    public final int getSequence() {
        Integer num = this.f9280g;
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("getSequence called before setSequence");
    }

    public Object getTag() {
        return this.f9288o;
    }

    public final int getTimeoutMs() {
        return getRetryPolicy().getCurrentTimeout();
    }

    public int getTrafficStatsTag() {
        return this.f9277d;
    }

    public String getUrl() {
        return this.f9276c;
    }

    /* renamed from: h */
    public void m36162h(int i) {
        RequestQueue requestQueue = this.f9281h;
        if (requestQueue != null) {
            requestQueue.m36161a(this, i);
        }
    }

    public boolean hasHadResponseDelivered() {
        boolean z;
        synchronized (this.f9278e) {
            z = this.f9284k;
        }
        return z;
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this.f9278e) {
            z = this.f9283j;
        }
        return z;
    }

    public void markDelivered() {
        synchronized (this.f9278e) {
            this.f9284k = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setCacheEntry(Cache.Entry entry) {
        this.f9287n = entry;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setRequestQueue(RequestQueue requestQueue) {
        this.f9281h = requestQueue;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setRetryPolicy(RetryPolicy retryPolicy) {
        this.f9286m = retryPolicy;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setSequence(int i) {
        this.f9280g = Integer.valueOf(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setShouldCache(boolean z) {
        this.f9282i = z;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setShouldRetryServerErrors(boolean z) {
        this.f9285l = z;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setTag(Object obj) {
        this.f9288o = obj;
        return this;
    }

    public final boolean shouldCache() {
        return this.f9282i;
    }

    public final boolean shouldRetryServerErrors() {
        return this.f9285l;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("0x");
        m8728C.append(Integer.toHexString(getTrafficStatsTag()));
        String sb = m8728C.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(isCanceled() ? "[X] " : "[ ] ");
        sb2.append(getUrl());
        sb2.append(StringConstant.SPACE);
        sb2.append(sb);
        sb2.append(StringConstant.SPACE);
        sb2.append(getPriority());
        sb2.append(StringConstant.SPACE);
        sb2.append(this.f9280g);
        return sb2.toString();
    }
}
