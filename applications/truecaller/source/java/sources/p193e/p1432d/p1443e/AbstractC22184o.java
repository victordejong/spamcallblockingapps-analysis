package p193e.p1432d.p1443e;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.CallSuper;
import android.support.annotation.GuardedBy;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1432d.p1443e.AbstractC22169b;
import p193e.p1432d.p1443e.C22172d;
import p193e.p1432d.p1443e.C22188p;
import p193e.p1432d.p1443e.C22190q;
import p193e.p1432d.p1443e.C22198w;
/* renamed from: e.d.e.o */
/* loaded from: classes-dex2jar.jar:e/d/e/o.class */
public abstract class AbstractC22184o<T> implements Comparable<AbstractC22184o<T>> {
    private static final String DEFAULT_PARAMS_ENCODING = "UTF-8";
    private AbstractC22169b.C22170a mCacheEntry;
    @GuardedBy("mLock")
    private boolean mCanceled;
    private final int mDefaultTrafficStatsTag;
    @GuardedBy("mLock")
    @Nullable
    private C22190q.AbstractC22191a mErrorListener;
    private final C22198w.C22199a mEventLog;
    private final Object mLock;
    private final int mMethod;
    @GuardedBy("mLock")
    private AbstractC22186b mRequestCompleteListener;
    private C22188p mRequestQueue;
    @GuardedBy("mLock")
    private boolean mResponseDelivered;
    private AbstractC22194s mRetryPolicy;
    private Integer mSequence;
    private boolean mShouldCache;
    private boolean mShouldRetryServerErrors;
    private Object mTag;
    private final String mUrl;

    /* renamed from: e.d.e.o$a */
    /* loaded from: classes-dex2jar.jar:e/d/e/o$a.class */
    public class RunnableC22185a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f61636a;

        /* renamed from: b */
        public final /* synthetic */ long f61637b;

        public RunnableC22185a(String str, long j) {
            AbstractC22184o.this = r5;
            this.f61636a = str;
            this.f61637b = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC22184o.this.mEventLog.m8482a(this.f61636a, this.f61637b);
            AbstractC22184o.this.mEventLog.m8481b(AbstractC22184o.this.toString());
        }
    }

    /* renamed from: e.d.e.o$b */
    /* loaded from: classes-dex2jar.jar:e/d/e/o$b.class */
    public interface AbstractC22186b {
    }

    /* renamed from: e.d.e.o$c */
    /* loaded from: classes-dex2jar.jar:e/d/e/o$c.class */
    public enum EnumC22187c {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public AbstractC22184o(int i, String str, @Nullable C22190q.AbstractC22191a abstractC22191a) {
        this.mEventLog = C22198w.C22199a.f61661c ? new C22198w.C22199a() : null;
        this.mLock = new Object();
        this.mShouldCache = true;
        this.mCanceled = false;
        this.mResponseDelivered = false;
        this.mShouldRetryServerErrors = false;
        this.mCacheEntry = null;
        this.mMethod = i;
        this.mUrl = str;
        this.mErrorListener = abstractC22191a;
        setRetryPolicy(new C22174f());
        this.mDefaultTrafficStatsTag = findDefaultTrafficStatsTag(str);
    }

    @Deprecated
    public AbstractC22184o(String str, C22190q.AbstractC22191a abstractC22191a) {
        this(-1, str, abstractC22191a);
    }

    private byte[] encodeParameters(Map<String, String> map, String str) {
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

    private static int findDefaultTrafficStatsTag(String str) {
        Uri parse;
        String host;
        if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || (host = parse.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    public void addMarker(String str) {
        if (C22198w.C22199a.f61661c) {
            this.mEventLog.m8482a(str, Thread.currentThread().getId());
        }
    }

    @CallSuper
    public void cancel() {
        synchronized (this.mLock) {
            this.mCanceled = true;
            this.mErrorListener = null;
        }
    }

    public int compareTo(AbstractC22184o<T> abstractC22184o) {
        EnumC22187c priority = getPriority();
        EnumC22187c priority2 = abstractC22184o.getPriority();
        return priority == priority2 ? this.mSequence.intValue() - abstractC22184o.mSequence.intValue() : priority2.ordinal() - priority.ordinal();
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return compareTo((AbstractC22184o) ((AbstractC22184o) obj));
    }

    public void deliverError(C22197v c22197v) {
        C22190q.AbstractC22191a abstractC22191a;
        synchronized (this.mLock) {
            abstractC22191a = this.mErrorListener;
        }
        if (abstractC22191a != null) {
            abstractC22191a.onErrorResponse(c22197v);
        }
    }

    public abstract void deliverResponse(T t);

    public void finish(String str) {
        C22188p c22188p = this.mRequestQueue;
        if (c22188p != null) {
            synchronized (c22188p.f61645b) {
                c22188p.f61645b.remove(this);
            }
            synchronized (c22188p.f61653j) {
                for (C22188p.AbstractC22189a abstractC22189a : c22188p.f61653j) {
                    abstractC22189a.m8485a(this);
                }
            }
        }
        if (C22198w.C22199a.f61661c) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new RunnableC22185a(str, id));
                return;
            }
            this.mEventLog.m8482a(str, id);
            this.mEventLog.m8481b(toString());
        }
    }

    public byte[] getBody() throws C22168a {
        Map<String, String> params = getParams();
        if (params == null || params.size() <= 0) {
            return null;
        }
        return encodeParameters(params, getParamsEncoding());
    }

    public String getBodyContentType() {
        StringBuilder m8728C = C22128a.m8728C("application/x-www-form-urlencoded; charset=");
        m8728C.append(getParamsEncoding());
        return m8728C.toString();
    }

    public AbstractC22169b.C22170a getCacheEntry() {
        return this.mCacheEntry;
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
    public C22190q.AbstractC22191a getErrorListener() {
        C22190q.AbstractC22191a abstractC22191a;
        synchronized (this.mLock) {
            abstractC22191a = this.mErrorListener;
        }
        return abstractC22191a;
    }

    public Map<String, String> getHeaders() throws C22168a {
        return Collections.emptyMap();
    }

    public int getMethod() {
        return this.mMethod;
    }

    public Map<String, String> getParams() throws C22168a {
        return null;
    }

    public String getParamsEncoding() {
        return "UTF-8";
    }

    @Deprecated
    public byte[] getPostBody() throws C22168a {
        Map<String, String> postParams = getPostParams();
        if (postParams == null || postParams.size() <= 0) {
            return null;
        }
        return encodeParameters(postParams, getPostParamsEncoding());
    }

    @Deprecated
    public String getPostBodyContentType() {
        return getBodyContentType();
    }

    @Deprecated
    public Map<String, String> getPostParams() throws C22168a {
        return getParams();
    }

    @Deprecated
    public String getPostParamsEncoding() {
        return getParamsEncoding();
    }

    public EnumC22187c getPriority() {
        return EnumC22187c.NORMAL;
    }

    public AbstractC22194s getRetryPolicy() {
        return this.mRetryPolicy;
    }

    public final int getSequence() {
        Integer num = this.mSequence;
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("getSequence called before setSequence");
    }

    public Object getTag() {
        return this.mTag;
    }

    public final int getTimeoutMs() {
        return ((C22174f) getRetryPolicy()).f61615a;
    }

    public int getTrafficStatsTag() {
        return this.mDefaultTrafficStatsTag;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public boolean hasHadResponseDelivered() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mResponseDelivered;
        }
        return z;
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mCanceled;
        }
        return z;
    }

    public void markDelivered() {
        synchronized (this.mLock) {
            this.mResponseDelivered = true;
        }
    }

    public void notifyListenerResponseNotUsable() {
        AbstractC22186b abstractC22186b;
        synchronized (this.mLock) {
            abstractC22186b = this.mRequestCompleteListener;
        }
        if (abstractC22186b != null) {
            ((C22172d.C22173a) abstractC22186b).m8489b(this);
        }
    }

    public void notifyListenerResponseReceived(C22190q<?> c22190q) {
        AbstractC22186b abstractC22186b;
        List<AbstractC22184o<?>> remove;
        synchronized (this.mLock) {
            abstractC22186b = this.mRequestCompleteListener;
        }
        if (abstractC22186b != null) {
            C22172d.C22173a c22173a = (C22172d.C22173a) abstractC22186b;
            AbstractC22169b.C22170a c22170a = c22190q.f61655b;
            if (c22170a != null) {
                if (!(c22170a.f61600e < System.currentTimeMillis())) {
                    String cacheKey = getCacheKey();
                    synchronized (c22173a) {
                        remove = c22173a.f61613a.remove(cacheKey);
                    }
                    if (remove == null) {
                        return;
                    }
                    if (C22198w.f61659a) {
                        C22198w.m8483b("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), cacheKey);
                    }
                    for (AbstractC22184o<?> abstractC22184o : remove) {
                        ((C22175g) c22173a.f61614b.f61610d).m8488a(abstractC22184o, c22190q);
                    }
                    return;
                }
            }
            c22173a.m8489b(this);
        }
    }

    public C22197v parseNetworkError(C22197v c22197v) {
        return c22197v;
    }

    public abstract C22190q<T> parseNetworkResponse(C22182l c22182l);

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractC22184o<?> setCacheEntry(AbstractC22169b.C22170a c22170a) {
        this.mCacheEntry = c22170a;
        return this;
    }

    public void setNetworkRequestCompleteListener(AbstractC22186b abstractC22186b) {
        synchronized (this.mLock) {
            this.mRequestCompleteListener = abstractC22186b;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractC22184o<?> setRequestQueue(C22188p c22188p) {
        this.mRequestQueue = c22188p;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractC22184o<?> setRetryPolicy(AbstractC22194s abstractC22194s) {
        this.mRetryPolicy = abstractC22194s;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AbstractC22184o<?> setSequence(int i) {
        this.mSequence = Integer.valueOf(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AbstractC22184o<?> setShouldCache(boolean z) {
        this.mShouldCache = z;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AbstractC22184o<?> setShouldRetryServerErrors(boolean z) {
        this.mShouldRetryServerErrors = z;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractC22184o<?> setTag(Object obj) {
        this.mTag = obj;
        return this;
    }

    public final boolean shouldCache() {
        return this.mShouldCache;
    }

    public final boolean shouldRetryServerErrors() {
        return this.mShouldRetryServerErrors;
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
        sb2.append(this.mSequence);
        return sb2.toString();
    }
}
