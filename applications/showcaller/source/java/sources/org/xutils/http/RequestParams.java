package org.xutils.http;

import android.content.Context;
import android.text.TextUtils;
import java.net.Proxy;
import java.util.concurrent.Executor;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import org.xutils.C9682x;
import org.xutils.common.task.Priority;
import org.xutils.http.C9649a;
import org.xutils.http.annotation.HttpRequest;
import org.xutils.http.app.DefaultParamsBuilder;
import org.xutils.http.app.DefaultRedirectHandler;
import org.xutils.http.app.HttpRetryHandler;
import org.xutils.http.app.ParamsBuilder;
import org.xutils.http.app.RedirectHandler;
import org.xutils.http.app.RequestTracker;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/RequestParams.class */
public class RequestParams extends BaseParams {
    public static final int MAX_FILE_LOAD_WORKER = 10;

    /* renamed from: k */
    private static final DefaultRedirectHandler f40696k = new DefaultRedirectHandler();

    /* renamed from: A */
    private Executor f40697A;

    /* renamed from: B */
    private Priority f40698B;

    /* renamed from: C */
    private int f40699C;

    /* renamed from: D */
    private int f40700D;

    /* renamed from: E */
    private boolean f40701E;

    /* renamed from: F */
    private boolean f40702F;

    /* renamed from: G */
    private int f40703G;

    /* renamed from: H */
    private String f40704H;

    /* renamed from: I */
    private boolean f40705I;

    /* renamed from: J */
    private int f40706J;

    /* renamed from: K */
    private HttpRetryHandler f40707K;

    /* renamed from: L */
    private RequestTracker f40708L;

    /* renamed from: M */
    private RedirectHandler f40709M;

    /* renamed from: N */
    private boolean f40710N;

    /* renamed from: l */
    private HttpRequest f40711l;

    /* renamed from: m */
    private String f40712m;

    /* renamed from: n */
    private final String[] f40713n;

    /* renamed from: o */
    private final String[] f40714o;

    /* renamed from: p */
    private ParamsBuilder f40715p;

    /* renamed from: q */
    private String f40716q;

    /* renamed from: r */
    private String f40717r;

    /* renamed from: s */
    private SSLSocketFactory f40718s;

    /* renamed from: t */
    private Context f40719t;

    /* renamed from: u */
    private Proxy f40720u;

    /* renamed from: v */
    private HostnameVerifier f40721v;

    /* renamed from: w */
    private boolean f40722w;

    /* renamed from: x */
    private String f40723x;

    /* renamed from: y */
    private long f40724y;

    /* renamed from: z */
    private long f40725z;

    /* renamed from: org.xutils.http.RequestParams$a */
    /* loaded from: classes2-dex2jar.jar:org/xutils/http/RequestParams$a.class */
    public class C9648a implements C9649a.AbstractC9651b {
        C9648a() {
            RequestParams.this = r4;
        }

        @Override // org.xutils.http.C9649a.AbstractC9651b
        public void onParseKV(String str, Object obj) {
            RequestParams.this.addParameter(str, obj);
        }
    }

    public RequestParams() {
        this(null, null, null, null);
    }

    public RequestParams(String str) {
        this(str, null, null, null);
    }

    public RequestParams(String str, ParamsBuilder paramsBuilder, String[] strArr, String[] strArr2) {
        this.f40722w = true;
        this.f40698B = Priority.DEFAULT;
        this.f40699C = 15000;
        this.f40700D = 15000;
        this.f40701E = true;
        this.f40702F = false;
        this.f40703G = 2;
        this.f40705I = false;
        this.f40706J = 300;
        this.f40709M = f40696k;
        this.f40710N = false;
        DefaultParamsBuilder defaultParamsBuilder = paramsBuilder;
        if (str != null) {
            defaultParamsBuilder = paramsBuilder;
            if (paramsBuilder == null) {
                defaultParamsBuilder = new DefaultParamsBuilder();
            }
        }
        this.f40712m = str;
        this.f40713n = strArr;
        this.f40714o = strArr2;
        this.f40715p = defaultParamsBuilder;
        this.f40719t = C9682x.app();
    }

    /* renamed from: c */
    private HttpRequest m201c() {
        if (this.f40711l == null && !this.f40710N) {
            this.f40710N = true;
            Class<?> cls = getClass();
            if (cls != RequestParams.class) {
                this.f40711l = (HttpRequest) cls.getAnnotation(HttpRequest.class);
            }
        }
        return this.f40711l;
    }

    /* renamed from: e */
    private void m199e() {
        C9649a.m197b(this, getClass(), new C9648a());
    }

    /* renamed from: d */
    public void m200d() {
        if (!TextUtils.isEmpty(this.f40716q)) {
            return;
        }
        if (TextUtils.isEmpty(this.f40712m) && m201c() == null) {
            throw new IllegalStateException("uri is empty && @HttpRequest == null");
        }
        m199e();
        this.f40716q = this.f40712m;
        HttpRequest m201c = m201c();
        if (m201c != null) {
            ParamsBuilder newInstance = m201c.builder().newInstance();
            this.f40715p = newInstance;
            this.f40716q = newInstance.buildUri(this, m201c);
            this.f40715p.buildParams(this);
            this.f40715p.buildSign(this, m201c.signs());
            if (this.f40718s != null) {
                return;
            }
            this.f40718s = this.f40715p.getSSLSocketFactory();
            return;
        }
        ParamsBuilder paramsBuilder = this.f40715p;
        if (paramsBuilder == null) {
            return;
        }
        paramsBuilder.buildParams(this);
        this.f40715p.buildSign(this, this.f40713n);
        if (this.f40718s != null) {
            return;
        }
        this.f40718s = this.f40715p.getSSLSocketFactory();
    }

    public String getCacheDirName() {
        return this.f40723x;
    }

    public String getCacheKey() {
        if (TextUtils.isEmpty(this.f40717r) && this.f40715p != null) {
            HttpRequest m201c = m201c();
            if (m201c != null) {
                this.f40717r = this.f40715p.buildCacheKey(this, m201c.cacheKeys());
            } else {
                this.f40717r = this.f40715p.buildCacheKey(this, this.f40714o);
            }
        }
        return this.f40717r;
    }

    public long getCacheMaxAge() {
        return this.f40725z;
    }

    public long getCacheSize() {
        return this.f40724y;
    }

    public int getConnectTimeout() {
        return this.f40699C;
    }

    public Context getContext() {
        return this.f40719t;
    }

    public Executor getExecutor() {
        return this.f40697A;
    }

    public HostnameVerifier getHostnameVerifier() {
        return this.f40721v;
    }

    public HttpRetryHandler getHttpRetryHandler() {
        return this.f40707K;
    }

    public int getLoadingUpdateMaxTimeSpan() {
        return this.f40706J;
    }

    public int getMaxRetryCount() {
        return this.f40703G;
    }

    public Priority getPriority() {
        return this.f40698B;
    }

    public Proxy getProxy() {
        return this.f40720u;
    }

    public int getReadTimeout() {
        return this.f40700D;
    }

    public RedirectHandler getRedirectHandler() {
        return this.f40709M;
    }

    public RequestTracker getRequestTracker() {
        return this.f40708L;
    }

    public String getSaveFilePath() {
        return this.f40704H;
    }

    public SSLSocketFactory getSslSocketFactory() {
        return this.f40718s;
    }

    public String getUri() {
        return TextUtils.isEmpty(this.f40716q) ? this.f40712m : this.f40716q;
    }

    public boolean isAutoRename() {
        return this.f40702F;
    }

    public boolean isAutoResume() {
        return this.f40701E;
    }

    public boolean isCancelFast() {
        return this.f40705I;
    }

    public boolean isUseCookie() {
        return this.f40722w;
    }

    public void setAutoRename(boolean z) {
        this.f40702F = z;
    }

    public void setAutoResume(boolean z) {
        this.f40701E = z;
    }

    public void setCacheDirName(String str) {
        this.f40723x = str;
    }

    public void setCacheMaxAge(long j) {
        this.f40725z = j;
    }

    public void setCacheSize(long j) {
        this.f40724y = j;
    }

    public void setCancelFast(boolean z) {
        this.f40705I = z;
    }

    public void setConnectTimeout(int i) {
        if (i > 0) {
            this.f40699C = i;
        }
    }

    public void setContext(Context context) {
        this.f40719t = context;
    }

    public void setExecutor(Executor executor) {
        this.f40697A = executor;
    }

    public void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.f40721v = hostnameVerifier;
    }

    public void setHttpRetryHandler(HttpRetryHandler httpRetryHandler) {
        this.f40707K = httpRetryHandler;
    }

    public void setLoadingUpdateMaxTimeSpan(int i) {
        this.f40706J = i;
    }

    public void setMaxRetryCount(int i) {
        this.f40703G = i;
    }

    public void setPriority(Priority priority) {
        this.f40698B = priority;
    }

    public void setProxy(Proxy proxy) {
        this.f40720u = proxy;
    }

    public void setReadTimeout(int i) {
        if (i > 0) {
            this.f40700D = i;
        }
    }

    public void setRedirectHandler(RedirectHandler redirectHandler) {
        this.f40709M = redirectHandler;
    }

    public void setRequestTracker(RequestTracker requestTracker) {
        this.f40708L = requestTracker;
    }

    public void setSaveFilePath(String str) {
        this.f40704H = str;
    }

    public void setSslSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.f40718s = sSLSocketFactory;
    }

    public void setUri(String str) {
        if (TextUtils.isEmpty(this.f40716q)) {
            this.f40712m = str;
        } else {
            this.f40716q = str;
        }
    }

    public void setUseCookie(boolean z) {
        this.f40722w = z;
    }

    @Override // org.xutils.http.BaseParams
    public String toString() {
        String str;
        String uri = getUri();
        String baseParams = super.toString();
        if (TextUtils.isEmpty(uri)) {
            str = baseParams;
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(uri);
            String str2 = "?";
            if (uri.contains("?")) {
                str2 = "&";
            }
            sb.append(str2);
            sb.append(baseParams);
            str = sb.toString();
        }
        return str;
    }
}
