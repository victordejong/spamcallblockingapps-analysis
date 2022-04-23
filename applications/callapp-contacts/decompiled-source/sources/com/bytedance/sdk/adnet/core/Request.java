package com.bytedance.sdk.adnet.core;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.adnet.core.o;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.face.a;
import com.bytedance.sdk.adnet.face.d;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/Request.class */
public abstract class Request<T> implements Comparable<Request<T>> {
    public static final int METHOD_DELETE = 3;
    public static final int METHOD_DEPRECATED_GET_OR_POST = -1;
    public static final int METHOD_GET = 0;
    public static final int METHOD_HEAD = 4;
    public static final int METHOD_OPTIONS = 5;
    public static final int METHOD_PATCH = 7;
    public static final int METHOD_POST = 1;
    public static final int METHOD_PUT = 2;
    public static final int METHOD_TRACE = 6;

    /* renamed from: a  reason: collision with root package name */
    protected m.a<T> f8269a;

    /* renamed from: b  reason: collision with root package name */
    protected Handler f8270b;

    /* renamed from: c  reason: collision with root package name */
    private final o.a f8271c;

    /* renamed from: d  reason: collision with root package name */
    private final int f8272d;
    private String e;
    private String f;
    private final int g;
    private final Object h;
    private Integer i;
    private l j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private d o;
    private a.C0159a p;
    private Object q;
    private long r;
    private long s;
    private boolean t;
    private String u;
    private Map<String, Object> v;
    private a w;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/Request$a.class */
    interface a {
        void a(Request<?> request);

        void a(Request<?> request, m<?> mVar);
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/Request$b.class */
    public enum b {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public Request(int i, String str, m.a aVar) {
        this.f8271c = o.a.f8338a ? new o.a() : null;
        this.f = "VADNetAgent/0";
        this.h = new Object();
        this.k = true;
        this.l = false;
        this.m = false;
        this.n = false;
        this.p = null;
        this.r = 0L;
        this.s = 0L;
        this.t = true;
        this.f8270b = new Handler(Looper.getMainLooper());
        this.f8272d = i;
        this.e = str;
        this.f8269a = aVar;
        setRetryPolicy(new e());
        this.g = b(str);
    }

    @Deprecated
    public Request(String str, m.a aVar) {
        this(-1, str, aVar);
    }

    private byte[] a(Map<String, String> map, String str) {
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
            throw new RuntimeException("Encoding not supported: ".concat(String.valueOf(str)), e);
        }
    }

    private static int b(String str) {
        Uri parse;
        String host;
        try {
            if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || (host = parse.getHost()) == null) {
                return 0;
            }
            return host.hashCode();
        } catch (Throwable th) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract m<T> a(i iVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public VAdError a(VAdError vAdError) {
        return vAdError;
    }

    @Deprecated
    protected Map<String, String> a() throws com.bytedance.sdk.adnet.err.a {
        return c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        l lVar = this.j;
        if (lVar != null) {
            lVar.a(this, i);
        }
    }

    protected void a(long j, long j2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        synchronized (this.h) {
            this.w = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(m<T> mVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final String str) {
        l lVar = this.j;
        if (lVar != null) {
            lVar.c(this);
        }
        if (o.a.f8338a) {
            final long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                this.f8270b.post(new Runnable() { // from class: com.bytedance.sdk.adnet.core.Request.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Request.this.f8271c.a(str, id);
                        Request.this.f8271c.a(Request.this.toString());
                    }
                });
                return;
            }
            this.f8271c.a(str, id);
            this.f8271c.a(toString());
        }
    }

    public Request addExtra(String str, Object obj) {
        if (!TextUtils.isEmpty(str) && obj != null) {
            if (this.v == null) {
                this.v = new HashMap();
            }
            this.v.put(str, obj);
        }
        return this;
    }

    public void addMarker(String str) {
        if (o.a.f8338a) {
            this.f8271c.a(str, Thread.currentThread().getId());
        }
    }

    @Deprecated
    protected String b() {
        return d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(m<?> mVar) {
        a aVar;
        synchronized (this.h) {
            aVar = this.w;
        }
        if (aVar != null) {
            aVar.a(this, mVar);
        }
    }

    public void build(l lVar) {
        if (lVar != null) {
            lVar.a(this);
        }
    }

    protected Map<String, String> c() throws com.bytedance.sdk.adnet.err.a {
        return null;
    }

    public void cancel() {
        synchronized (this.h) {
            this.l = true;
            this.f8269a = null;
        }
    }

    public int compareTo(Request<T> request) {
        b priority = getPriority();
        b priority2 = request.getPriority();
        return priority == priority2 ? this.i.intValue() - request.i.intValue() : priority2.ordinal() - priority.ordinal();
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return compareTo((Request) ((Request) obj));
    }

    protected String d() {
        return "UTF-8";
    }

    public void deliverError(m<T> mVar) {
        m.a<T> aVar;
        synchronized (this.h) {
            aVar = this.f8269a;
        }
        if (aVar != null) {
            aVar.b(mVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        a aVar;
        synchronized (this.h) {
            aVar = this.w;
        }
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public m.a getBaseListener() {
        m.a<T> aVar;
        synchronized (this.h) {
            aVar = this.f8269a;
        }
        return aVar;
    }

    public byte[] getBody() throws com.bytedance.sdk.adnet.err.a {
        Map<String, String> c2 = c();
        if (c2 == null || c2.size() <= 0) {
            return null;
        }
        return a(c2, d());
    }

    public String getBodyContentType() {
        return "application/x-www-form-urlencoded; charset=" + d();
    }

    public a.C0159a getCacheEntry() {
        return this.p;
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

    public Map<String, Object> getExtra() {
        return this.v;
    }

    public Map<String, String> getHeaders() throws com.bytedance.sdk.adnet.err.a {
        return Collections.emptyMap();
    }

    public String getIpAddrStr() {
        return this.u;
    }

    public int getMethod() {
        return this.f8272d;
    }

    public long getNetDuration() {
        return this.s;
    }

    @Deprecated
    public byte[] getPostBody() throws com.bytedance.sdk.adnet.err.a {
        Map<String, String> a2 = a();
        if (a2 == null || a2.size() <= 0) {
            return null;
        }
        return a(a2, b());
    }

    public b getPriority() {
        return b.NORMAL;
    }

    public final l getRequestQueue() {
        return this.j;
    }

    public d getRetryPolicy() {
        return this.o;
    }

    public final int getSequence() {
        Integer num = this.i;
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("getSequence called before setSequence");
    }

    public long getStartTime() {
        return this.r;
    }

    public Object getTag() {
        return this.q;
    }

    public final int getTimeoutMs() {
        return getRetryPolicy().a();
    }

    public int getTrafficStatsTag() {
        return this.g;
    }

    public String getUrl() {
        return this.e;
    }

    public String getUserAgent() {
        return this.f;
    }

    public boolean hasHadResponseDelivered() {
        boolean z;
        synchronized (this.h) {
            z = this.m;
        }
        return z;
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this.h) {
            z = this.l;
        }
        return z;
    }

    public boolean isResponseOnMain() {
        return this.t;
    }

    public void markDelivered() {
        synchronized (this.h) {
            this.m = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setCacheEntry(a.C0159a aVar) {
        this.p = aVar;
        return this;
    }

    public void setIpAddrStr(String str) {
        this.u = str;
    }

    public void setNetDuration(long j) {
        this.s = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setRequestQueue(l lVar) {
        this.j = lVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setResponseOnMain(boolean z) {
        this.t = z;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setRetryPolicy(d dVar) {
        this.o = dVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setSequence(int i) {
        this.i = Integer.valueOf(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setShouldCache(boolean z) {
        this.k = z;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setShouldRetryServerErrors(boolean z) {
        this.n = z;
        return this;
    }

    public void setStartTime() {
        this.r = SystemClock.elapsedRealtime();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setTag(Object obj) {
        this.q = obj;
        return this;
    }

    public void setUrl(String str) {
        this.e = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setUserAgent(String str) {
        this.f = str;
        return this;
    }

    public final boolean shouldCache() {
        return this.k;
    }

    public final boolean shouldRetryServerErrors() {
        return this.n;
    }

    public String toString() {
        String str = "0x" + Integer.toHexString(getTrafficStatsTag());
        StringBuilder sb = new StringBuilder();
        sb.append(isCanceled() ? "[X] " : "[ ] ");
        sb.append(getUrl());
        sb.append(StringUtils.SPACE);
        sb.append(str);
        sb.append(StringUtils.SPACE);
        sb.append(getPriority());
        sb.append(StringUtils.SPACE);
        sb.append(this.i);
        return sb.toString();
    }
}
