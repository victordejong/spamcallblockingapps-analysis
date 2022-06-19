package com.mopub.volley;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.exoplayer2.C0515C;
import com.mopub.volley.Cache;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyLog;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/Request.class */
public abstract class Request<T> implements Comparable<Request<T>> {

    /* renamed from: a */
    public final VolleyLog.C1233a f5468a;

    /* renamed from: b */
    public final int f5469b;

    /* renamed from: c */
    public final String f5470c;

    /* renamed from: d */
    public final int f5471d;

    /* renamed from: f */
    public final Object f5472f;

    /* renamed from: g */
    public Response.ErrorListener f5473g;

    /* renamed from: h */
    public Integer f5474h;

    /* renamed from: j */
    public RequestQueue f5475j;

    /* renamed from: k */
    public boolean f5476k;

    /* renamed from: l */
    public boolean f5477l;

    /* renamed from: m */
    public boolean f5478m;

    /* renamed from: n */
    public boolean f5479n;

    /* renamed from: o */
    public RetryPolicy f5480o;

    /* renamed from: p */
    public Cache.Entry f5481p;

    /* renamed from: q */
    public Object f5482q;

    /* renamed from: r */
    public AbstractC1231b f5483r;

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
    public class RunnableC1230a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f5485a;

        /* renamed from: b */
        public final /* synthetic */ long f5486b;

        public RunnableC1230a(String str, long j) {
            Request.this = r5;
            this.f5485a = str;
            this.f5486b = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            Request.this.f5468a.add(this.f5485a, this.f5486b);
            Request.this.f5468a.finish(Request.this.toString());
        }
    }

    /* renamed from: com.mopub.volley.Request$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/Request$b.class */
    public interface AbstractC1231b {
        void onNoUsableResponseReceived(Request<?> request);

        void onResponseReceived(Request<?> request, Response<?> response);
    }

    public Request(int i, String str, Response.ErrorListener errorListener) {
        this.f5468a = VolleyLog.C1233a.ENABLED ? new VolleyLog.C1233a() : null;
        this.f5472f = new Object();
        this.f5476k = true;
        this.f5477l = false;
        this.f5478m = false;
        this.f5479n = false;
        this.f5481p = null;
        this.f5469b = i;
        this.f5470c = str;
        this.f5473g = errorListener;
        setRetryPolicy(new DefaultRetryPolicy());
        this.f5471d = m3171c(str);
    }

    @Deprecated
    public Request(String str, Response.ErrorListener errorListener) {
        this(-1, str, errorListener);
    }

    /* renamed from: c */
    public static int m3171c(String str) {
        Uri parse;
        String host;
        if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || (host = parse.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    public void addMarker(String str) {
        if (VolleyLog.C1233a.ENABLED) {
            this.f5468a.add(str, Thread.currentThread().getId());
        }
    }

    /* renamed from: b */
    public final byte[] m3172b(Map<String, String> map, String str) {
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

    public void cancel() {
        synchronized (this.f5472f) {
            this.f5477l = true;
            this.f5473g = null;
        }
    }

    public int compareTo(Request<T> request) {
        Priority priority = getPriority();
        Priority priority2 = request.getPriority();
        return priority == priority2 ? this.f5474h.intValue() - request.f5474h.intValue() : priority2.ordinal() - priority.ordinal();
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return compareTo((Request) ((Request) obj));
    }

    /* renamed from: d */
    public void m3170d(String str) {
        RequestQueue requestQueue = this.f5475j;
        if (requestQueue != null) {
            requestQueue.m3160a(this);
        }
        if (VolleyLog.C1233a.ENABLED) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new RunnableC1230a(str, id));
                return;
            }
            this.f5468a.add(str, id);
            this.f5468a.finish(toString());
        }
    }

    public void deliverError(VolleyError volleyError) {
        Response.ErrorListener errorListener;
        synchronized (this.f5472f) {
            errorListener = this.f5473g;
        }
        if (errorListener != null) {
            errorListener.onErrorResponse(volleyError);
        }
    }

    public abstract void deliverResponse(T t);

    /* renamed from: e */
    public Map<String, String> mo3169e() {
        return null;
    }

    /* renamed from: f */
    public String m3168f() {
        return C0515C.UTF8_NAME;
    }

    @Deprecated
    /* renamed from: g */
    public Map<String, String> m3167g() {
        return mo3169e();
    }

    public byte[] getBody() {
        Map<String, String> mo3169e = mo3169e();
        if (mo3169e == null || mo3169e.size() <= 0) {
            return null;
        }
        return m3172b(mo3169e, m3168f());
    }

    public String getBodyContentType() {
        return "application/x-www-form-urlencoded; charset=" + m3168f();
    }

    public Cache.Entry getCacheEntry() {
        return this.f5481p;
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

    public Response.ErrorListener getErrorListener() {
        Response.ErrorListener errorListener;
        synchronized (this.f5472f) {
            errorListener = this.f5473g;
        }
        return errorListener;
    }

    public Map<String, String> getHeaders() {
        return Collections.emptyMap();
    }

    public int getMethod() {
        return this.f5469b;
    }

    @Deprecated
    public byte[] getPostBody() {
        Map<String, String> m3167g = m3167g();
        if (m3167g == null || m3167g.size() <= 0) {
            return null;
        }
        return m3172b(m3167g, m3166h());
    }

    @Deprecated
    public String getPostBodyContentType() {
        return getBodyContentType();
    }

    public Priority getPriority() {
        return Priority.NORMAL;
    }

    public RetryPolicy getRetryPolicy() {
        return this.f5480o;
    }

    public final int getSequence() {
        Integer num = this.f5474h;
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("getSequence called before setSequence");
    }

    public Object getTag() {
        return this.f5482q;
    }

    public final int getTimeoutMs() {
        return getRetryPolicy().getCurrentTimeout();
    }

    public int getTrafficStatsTag() {
        return this.f5471d;
    }

    public String getUrl() {
        return this.f5470c;
    }

    @Deprecated
    /* renamed from: h */
    public String m3166h() {
        return m3168f();
    }

    public boolean hasHadResponseDelivered() {
        boolean z;
        synchronized (this.f5472f) {
            z = this.f5478m;
        }
        return z;
    }

    /* renamed from: i */
    public void m3165i() {
        AbstractC1231b abstractC1231b;
        synchronized (this.f5472f) {
            abstractC1231b = this.f5483r;
        }
        if (abstractC1231b != null) {
            abstractC1231b.onNoUsableResponseReceived(this);
        }
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this.f5472f) {
            z = this.f5477l;
        }
        return z;
    }

    /* renamed from: j */
    public void m3164j(Response<?> response) {
        AbstractC1231b abstractC1231b;
        synchronized (this.f5472f) {
            abstractC1231b = this.f5483r;
        }
        if (abstractC1231b != null) {
            abstractC1231b.onResponseReceived(this, response);
        }
    }

    /* renamed from: k */
    public VolleyError m3163k(VolleyError volleyError) {
        return volleyError;
    }

    /* renamed from: l */
    public abstract Response<T> mo3087l(NetworkResponse networkResponse);

    /* renamed from: m */
    public void m3162m(int i) {
        RequestQueue requestQueue = this.f5475j;
        if (requestQueue != null) {
            requestQueue.m3159b(this, i);
        }
    }

    public void markDelivered() {
        synchronized (this.f5472f) {
            this.f5478m = true;
        }
    }

    /* renamed from: n */
    public void m3161n(AbstractC1231b abstractC1231b) {
        synchronized (this.f5472f) {
            this.f5483r = abstractC1231b;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setCacheEntry(Cache.Entry entry) {
        this.f5481p = entry;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setRequestQueue(RequestQueue requestQueue) {
        this.f5475j = requestQueue;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setRetryPolicy(RetryPolicy retryPolicy) {
        this.f5480o = retryPolicy;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setSequence(int i) {
        this.f5474h = Integer.valueOf(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setShouldCache(boolean z) {
        this.f5476k = z;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setShouldRetryServerErrors(boolean z) {
        this.f5479n = z;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setTag(Object obj) {
        this.f5482q = obj;
        return this;
    }

    public final boolean shouldCache() {
        return this.f5476k;
    }

    public final boolean shouldRetryServerErrors() {
        return this.f5479n;
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
        sb.append(this.f5474h);
        return sb.toString();
    }
}
