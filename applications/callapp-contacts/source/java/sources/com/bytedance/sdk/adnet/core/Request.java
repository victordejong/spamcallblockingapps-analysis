package com.bytedance.sdk.adnet.core;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.core.C4221o;
import com.bytedance.sdk.adnet.err.C4239a;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.face.AbstractC4246a;
import com.bytedance.sdk.adnet.face.AbstractC4250d;
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

    /* renamed from: a */
    protected C4218m.AbstractC4219a<T> f15367a;

    /* renamed from: b */
    protected Handler f15368b;

    /* renamed from: c */
    private final C4221o.C4222a f15369c;

    /* renamed from: d */
    private final int f15370d;

    /* renamed from: e */
    private String f15371e;

    /* renamed from: f */
    private String f15372f;

    /* renamed from: g */
    private final int f15373g;

    /* renamed from: h */
    private final Object f15374h;

    /* renamed from: i */
    private Integer f15375i;

    /* renamed from: j */
    private C4215l f15376j;

    /* renamed from: k */
    private boolean f15377k;

    /* renamed from: l */
    private boolean f15378l;

    /* renamed from: m */
    private boolean f15379m;

    /* renamed from: n */
    private boolean f15380n;

    /* renamed from: o */
    private AbstractC4250d f15381o;

    /* renamed from: p */
    private AbstractC4246a.C4247a f15382p;

    /* renamed from: q */
    private Object f15383q;

    /* renamed from: r */
    private long f15384r;

    /* renamed from: s */
    private long f15385s;

    /* renamed from: t */
    private boolean f15386t;

    /* renamed from: u */
    private String f15387u;

    /* renamed from: v */
    private Map<String, Object> f15388v;

    /* renamed from: w */
    private AbstractC4194a f15389w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.adnet.core.Request$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/Request$a.class */
    public interface AbstractC4194a {
        /* renamed from: a */
        void mo36175a(Request<?> request);

        /* renamed from: a */
        void mo36174a(Request<?> request, C4218m<?> c4218m);
    }

    /* renamed from: com.bytedance.sdk.adnet.core.Request$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/Request$b.class */
    public enum EnumC4195b {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public Request(int i, String str, C4218m.AbstractC4219a abstractC4219a) {
        this.f15369c = C4221o.C4222a.f15478a ? new C4221o.C4222a() : null;
        this.f15372f = "VADNetAgent/0";
        this.f15374h = new Object();
        this.f15377k = true;
        this.f15378l = false;
        this.f15379m = false;
        this.f15380n = false;
        this.f15382p = null;
        this.f15384r = 0L;
        this.f15385s = 0L;
        this.f15386t = true;
        this.f15368b = new Handler(Looper.getMainLooper());
        this.f15370d = i;
        this.f15371e = str;
        this.f15367a = abstractC4219a;
        setRetryPolicy(new C4203e());
        this.f15373g = m36195b(str);
    }

    @Deprecated
    public Request(String str, C4218m.AbstractC4219a abstractC4219a) {
        this(-1, str, abstractC4219a);
    }

    /* renamed from: a */
    private byte[] m36198a(Map<String, String> map, String str) {
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

    /* renamed from: b */
    private static int m36195b(String str) {
        Uri parse;
        String host;
        try {
            if (!TextUtils.isEmpty(str) && (parse = Uri.parse(str)) != null && (host = parse.getHost()) != null) {
                return host.hashCode();
            }
            return 0;
        } catch (Throwable th) {
            return 0;
        }
    }

    /* renamed from: a */
    public abstract C4218m<T> mo33324a(C4211i c4211i);

    /* renamed from: a */
    public VAdError m36200a(VAdError vAdError) {
        return vAdError;
    }

    @Deprecated
    /* renamed from: a */
    protected Map<String, String> m36205a() throws C4239a {
        return m36194c();
    }

    /* renamed from: a */
    public void m36204a(int i) {
        C4215l c4215l = this.f15376j;
        if (c4215l != null) {
            c4215l.m36122a(this, i);
        }
    }

    /* renamed from: a */
    protected void mo36203a(long j, long j2) {
    }

    /* renamed from: a */
    public void m36202a(AbstractC4194a abstractC4194a) {
        synchronized (this.f15374h) {
            this.f15389w = abstractC4194a;
        }
    }

    /* renamed from: a */
    public abstract void mo33323a(C4218m<T> c4218m);

    /* renamed from: a */
    public void m36199a(final String str) {
        C4215l c4215l = this.f15376j;
        if (c4215l != null) {
            c4215l.m36118c(this);
        }
        if (C4221o.C4222a.f15478a) {
            final long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                this.f15368b.post(new Runnable() { // from class: com.bytedance.sdk.adnet.core.Request.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Request.this.f15369c.m36100a(str, id);
                        Request.this.f15369c.m36101a(Request.this.toString());
                    }
                });
                return;
            }
            this.f15369c.m36100a(str, id);
            this.f15369c.m36101a(toString());
        }
    }

    public Request addExtra(String str, Object obj) {
        if (!TextUtils.isEmpty(str) && obj != null) {
            if (this.f15388v == null) {
                this.f15388v = new HashMap();
            }
            this.f15388v.put(str, obj);
        }
        return this;
    }

    public void addMarker(String str) {
        if (C4221o.C4222a.f15478a) {
            this.f15369c.m36100a(str, Thread.currentThread().getId());
        }
    }

    @Deprecated
    /* renamed from: b */
    protected String m36197b() {
        return m36193d();
    }

    /* renamed from: b */
    public void m36196b(C4218m<?> c4218m) {
        AbstractC4194a abstractC4194a;
        synchronized (this.f15374h) {
            abstractC4194a = this.f15389w;
        }
        if (abstractC4194a != null) {
            abstractC4194a.mo36174a(this, c4218m);
        }
    }

    public void build(C4215l c4215l) {
        if (c4215l != null) {
            c4215l.m36123a(this);
        }
    }

    /* renamed from: c */
    protected Map<String, String> m36194c() throws C4239a {
        return null;
    }

    public void cancel() {
        synchronized (this.f15374h) {
            this.f15378l = true;
            this.f15367a = null;
        }
    }

    public int compareTo(Request<T> request) {
        EnumC4195b priority = getPriority();
        EnumC4195b priority2 = request.getPriority();
        return priority == priority2 ? this.f15375i.intValue() - request.f15375i.intValue() : priority2.ordinal() - priority.ordinal();
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return compareTo((Request) ((Request) obj));
    }

    /* renamed from: d */
    protected String m36193d() {
        return "UTF-8";
    }

    public void deliverError(C4218m<T> c4218m) {
        C4218m.AbstractC4219a<T> abstractC4219a;
        synchronized (this.f15374h) {
            abstractC4219a = this.f15367a;
        }
        if (abstractC4219a != null) {
            abstractC4219a.mo33419b(c4218m);
        }
    }

    /* renamed from: e */
    public void m36192e() {
        AbstractC4194a abstractC4194a;
        synchronized (this.f15374h) {
            abstractC4194a = this.f15389w;
        }
        if (abstractC4194a != null) {
            abstractC4194a.mo36175a(this);
        }
    }

    public C4218m.AbstractC4219a getBaseListener() {
        C4218m.AbstractC4219a<T> abstractC4219a;
        synchronized (this.f15374h) {
            abstractC4219a = this.f15367a;
        }
        return abstractC4219a;
    }

    public byte[] getBody() throws C4239a {
        Map<String, String> m36194c = m36194c();
        if (m36194c == null || m36194c.size() <= 0) {
            return null;
        }
        return m36198a(m36194c, m36193d());
    }

    public String getBodyContentType() {
        return "application/x-www-form-urlencoded; charset=" + m36193d();
    }

    public AbstractC4246a.C4247a getCacheEntry() {
        return this.f15382p;
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
        return this.f15388v;
    }

    public Map<String, String> getHeaders() throws C4239a {
        return Collections.emptyMap();
    }

    public String getIpAddrStr() {
        return this.f15387u;
    }

    public int getMethod() {
        return this.f15370d;
    }

    public long getNetDuration() {
        return this.f15385s;
    }

    @Deprecated
    public byte[] getPostBody() throws C4239a {
        Map<String, String> m36205a = m36205a();
        if (m36205a == null || m36205a.size() <= 0) {
            return null;
        }
        return m36198a(m36205a, m36197b());
    }

    public EnumC4195b getPriority() {
        return EnumC4195b.NORMAL;
    }

    public final C4215l getRequestQueue() {
        return this.f15376j;
    }

    public AbstractC4250d getRetryPolicy() {
        return this.f15381o;
    }

    public final int getSequence() {
        Integer num = this.f15375i;
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("getSequence called before setSequence");
    }

    public long getStartTime() {
        return this.f15384r;
    }

    public Object getTag() {
        return this.f15383q;
    }

    public final int getTimeoutMs() {
        return getRetryPolicy().mo36059a();
    }

    public int getTrafficStatsTag() {
        return this.f15373g;
    }

    public String getUrl() {
        return this.f15371e;
    }

    public String getUserAgent() {
        return this.f15372f;
    }

    public boolean hasHadResponseDelivered() {
        boolean z;
        synchronized (this.f15374h) {
            z = this.f15379m;
        }
        return z;
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this.f15374h) {
            z = this.f15378l;
        }
        return z;
    }

    public boolean isResponseOnMain() {
        return this.f15386t;
    }

    public void markDelivered() {
        synchronized (this.f15374h) {
            this.f15379m = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setCacheEntry(AbstractC4246a.C4247a c4247a) {
        this.f15382p = c4247a;
        return this;
    }

    public void setIpAddrStr(String str) {
        this.f15387u = str;
    }

    public void setNetDuration(long j) {
        this.f15385s = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setRequestQueue(C4215l c4215l) {
        this.f15376j = c4215l;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setResponseOnMain(boolean z) {
        this.f15386t = z;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setRetryPolicy(AbstractC4250d abstractC4250d) {
        this.f15381o = abstractC4250d;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setSequence(int i) {
        this.f15375i = Integer.valueOf(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setShouldCache(boolean z) {
        this.f15377k = z;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setShouldRetryServerErrors(boolean z) {
        this.f15380n = z;
        return this;
    }

    public void setStartTime() {
        this.f15384r = SystemClock.elapsedRealtime();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setTag(Object obj) {
        this.f15383q = obj;
        return this;
    }

    public void setUrl(String str) {
        this.f15371e = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setUserAgent(String str) {
        this.f15372f = str;
        return this;
    }

    public final boolean shouldCache() {
        return this.f15377k;
    }

    public final boolean shouldRetryServerErrors() {
        return this.f15380n;
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
        sb.append(this.f15375i);
        return sb.toString();
    }
}
