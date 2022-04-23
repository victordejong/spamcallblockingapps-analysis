package com.mopub.volley;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.CallSuper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.mopub.volley.Cache;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyLog;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/Request.class */
public abstract class Request<T> implements Comparable<Request<T>> {

    /* renamed from: a */
    public final VolleyLog.C4047a f9494a;

    /* renamed from: b */
    public final int f9495b;

    /* renamed from: c */
    public final String f9496c;

    /* renamed from: d */
    public final int f9497d;

    /* renamed from: e */
    public final Object f9498e;
    @Nullable
    @GuardedBy("mLock")

    /* renamed from: f */
    public Response.ErrorListener f9499f;

    /* renamed from: g */
    public Integer f9500g;

    /* renamed from: h */
    public RequestQueue f9501h;

    /* renamed from: i */
    public boolean f9502i;
    @GuardedBy("mLock")

    /* renamed from: j */
    public boolean f9503j;
    @GuardedBy("mLock")

    /* renamed from: k */
    public boolean f9504k;

    /* renamed from: l */
    public boolean f9505l;

    /* renamed from: m */
    public RetryPolicy f9506m;

    /* renamed from: n */
    public Cache.Entry f9507n;

    /* renamed from: o */
    public Object f9508o;
    @GuardedBy("mLock")

    /* renamed from: p */
    public AbstractC4045b f9509p;

    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/Request$Method.class */
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

    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/Request$Priority.class */
    public enum Priority {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    /* renamed from: com.mopub.volley.Request$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/Request$a.class */
    public class RunnableC4044a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f9511a;

        /* renamed from: b */
        public final /* synthetic */ long f9512b;

        public RunnableC4044a(String str, long j) {
            this.f9511a = str;
            this.f9512b = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            Request.this.f9494a.add(this.f9511a, this.f9512b);
            Request.this.f9494a.finish(Request.this.toString());
        }
    }

    /* renamed from: com.mopub.volley.Request$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/Request$b.class */
    public interface AbstractC4045b {
        void onNoUsableResponseReceived(Request<?> request);

        void onResponseReceived(Request<?> request, Response<?> response);
    }

    public Request(int i, String str, @Nullable Response.ErrorListener errorListener) {
        this.f9494a = VolleyLog.C4047a.ENABLED ? new VolleyLog.C4047a() : null;
        this.f9498e = new Object();
        this.f9502i = true;
        this.f9503j = false;
        this.f9504k = false;
        this.f9505l = false;
        this.f9507n = null;
        this.f9495b = i;
        this.f9496c = str;
        this.f9499f = errorListener;
        setRetryPolicy(new DefaultRetryPolicy());
        this.f9497d = m29948b(str);
    }

    @Deprecated
    public Request(String str, Response.ErrorListener errorListener) {
        this(-1, str, errorListener);
    }

    /* renamed from: b */
    public static int m29948b(String str) {
        Uri parse;
        String host;
        if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || (host = parse.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    /* renamed from: a */
    public abstract Response<T> mo29871a(NetworkResponse networkResponse);

    /* renamed from: a */
    public VolleyError m29952a(VolleyError volleyError) {
        return volleyError;
    }

    /* renamed from: a */
    public Map<String, String> mo29957a() throws AuthFailureError {
        return null;
    }

    /* renamed from: a */
    public void m29956a(int i) {
        RequestQueue requestQueue = this.f9501h;
        if (requestQueue != null) {
            requestQueue.m29943a(this, i);
        }
    }

    /* renamed from: a */
    public void m29955a(AbstractC4045b bVar) {
        synchronized (this.f9498e) {
            this.f9509p = bVar;
        }
    }

    /* renamed from: a */
    public void m29953a(Response<?> response) {
        AbstractC4045b bVar;
        synchronized (this.f9498e) {
            bVar = this.f9509p;
        }
        if (bVar != null) {
            bVar.onResponseReceived(this, response);
        }
    }

    /* renamed from: a */
    public void m29951a(String str) {
        RequestQueue requestQueue = this.f9501h;
        if (requestQueue != null) {
            requestQueue.m29944a(this);
        }
        if (VolleyLog.C4047a.ENABLED) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new RunnableC4044a(str, id));
                return;
            }
            this.f9494a.add(str, id);
            this.f9494a.finish(toString());
        }
    }

    /* renamed from: a */
    public final byte[] m29950a(Map<String, String> map, String str) {
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
            throw new RuntimeException("Encoding not supported: " + str, e);
        }
    }

    public void addMarker(String str) {
        if (VolleyLog.C4047a.ENABLED) {
            this.f9494a.add(str, Thread.currentThread().getId());
        }
    }

    /* renamed from: b */
    public String m29949b() {
        return "UTF-8";
    }

    @Deprecated
    /* renamed from: c */
    public Map<String, String> m29947c() throws AuthFailureError {
        return mo29957a();
    }

    @CallSuper
    public void cancel() {
        synchronized (this.f9498e) {
            this.f9503j = true;
            this.f9499f = null;
        }
    }

    public int compareTo(Request<T> request) {
        Priority priority = getPriority();
        Priority priority2 = request.getPriority();
        return priority == priority2 ? this.f9500g.intValue() - request.f9500g.intValue() : priority2.ordinal() - priority.ordinal();
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return compareTo((Request) ((Request) obj));
    }

    @Deprecated
    /* renamed from: d */
    public String m29946d() {
        return m29949b();
    }

    public void deliverError(VolleyError volleyError) {
        Response.ErrorListener errorListener;
        synchronized (this.f9498e) {
            errorListener = this.f9499f;
        }
        if (errorListener != null) {
            errorListener.onErrorResponse(volleyError);
        }
    }

    public abstract void deliverResponse(T t);

    /* renamed from: e */
    public void m29945e() {
        AbstractC4045b bVar;
        synchronized (this.f9498e) {
            bVar = this.f9509p;
        }
        if (bVar != null) {
            bVar.onNoUsableResponseReceived(this);
        }
    }

    public byte[] getBody() throws AuthFailureError {
        Map<String, String> a = mo29957a();
        if (a == null || a.size() <= 0) {
            return null;
        }
        return m29950a(a, m29949b());
    }

    public String getBodyContentType() {
        return "application/x-www-form-urlencoded; charset=" + m29949b();
    }

    public Cache.Entry getCacheEntry() {
        return this.f9507n;
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
        synchronized (this.f9498e) {
            errorListener = this.f9499f;
        }
        return errorListener;
    }

    public Map<String, String> getHeaders() throws AuthFailureError {
        return Collections.emptyMap();
    }

    public int getMethod() {
        return this.f9495b;
    }

    @Deprecated
    public byte[] getPostBody() throws AuthFailureError {
        Map<String, String> c = m29947c();
        if (c == null || c.size() <= 0) {
            return null;
        }
        return m29950a(c, m29946d());
    }

    @Deprecated
    public String getPostBodyContentType() {
        return getBodyContentType();
    }

    public Priority getPriority() {
        return Priority.NORMAL;
    }

    public RetryPolicy getRetryPolicy() {
        return this.f9506m;
    }

    public final int getSequence() {
        Integer num = this.f9500g;
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("getSequence called before setSequence");
    }

    public Object getTag() {
        return this.f9508o;
    }

    public final int getTimeoutMs() {
        return getRetryPolicy().getCurrentTimeout();
    }

    public int getTrafficStatsTag() {
        return this.f9497d;
    }

    public String getUrl() {
        return this.f9496c;
    }

    public boolean hasHadResponseDelivered() {
        boolean z;
        synchronized (this.f9498e) {
            z = this.f9504k;
        }
        return z;
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this.f9498e) {
            z = this.f9503j;
        }
        return z;
    }

    public void markDelivered() {
        synchronized (this.f9498e) {
            this.f9504k = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setCacheEntry(Cache.Entry entry) {
        this.f9507n = entry;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setRequestQueue(RequestQueue requestQueue) {
        this.f9501h = requestQueue;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setRetryPolicy(RetryPolicy retryPolicy) {
        this.f9506m = retryPolicy;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setSequence(int i) {
        this.f9500g = Integer.valueOf(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setShouldCache(boolean z) {
        this.f9502i = z;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setShouldRetryServerErrors(boolean z) {
        this.f9505l = z;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setTag(Object obj) {
        this.f9508o = obj;
        return this;
    }

    public final boolean shouldCache() {
        return this.f9502i;
    }

    public final boolean shouldRetryServerErrors() {
        return this.f9505l;
    }

    public String toString() {
        String str = "0x" + Integer.toHexString(getTrafficStatsTag());
        StringBuilder sb = new StringBuilder();
        sb.append(isCanceled() ? "[X] " : "[ ] ");
        sb.append(getUrl());
        sb.append(" ");
        sb.append(str);
        sb.append(" ");
        sb.append(getPriority());
        sb.append(" ");
        sb.append(this.f9500g);
        return sb.toString();
    }
}
