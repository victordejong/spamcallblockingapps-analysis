package org.xutils.http;

import android.text.TextUtils;
import java.io.Closeable;
import java.io.File;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import org.xutils.C9682x;
import org.xutils.common.Callback;
import org.xutils.common.task.AbsTask;
import org.xutils.common.task.Priority;
import org.xutils.common.task.PriorityExecutor;
import org.xutils.common.util.IOUtil;
import org.xutils.common.util.ParameterizedTypeUtil;
import org.xutils.http.app.RedirectHandler;
import org.xutils.http.app.RequestInterceptListener;
import org.xutils.http.app.RequestTracker;
import org.xutils.http.request.UriRequest;
import org.xutils.http.request.UriRequestFactory;
import org.xutils.p344ex.HttpException;
import org.xutils.p344ex.HttpRedirectException;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/HttpTask.class */
public class HttpTask<ResultType> extends AbsTask<ResultType> implements ProgressHandler {

    /* renamed from: f */
    private static final AtomicInteger f40671f = new AtomicInteger(0);

    /* renamed from: g */
    private static final HashMap<String, WeakReference<HttpTask<?>>> f40672g = new HashMap<>(1);

    /* renamed from: h */
    private static final PriorityExecutor f40673h = new PriorityExecutor(5, true);

    /* renamed from: i */
    private static final PriorityExecutor f40674i = new PriorityExecutor(5, true);

    /* renamed from: j */
    private RequestParams f40675j;

    /* renamed from: k */
    private UriRequest f40676k;

    /* renamed from: l */
    private Type f40677l;

    /* renamed from: n */
    private final Callback.CommonCallback<ResultType> f40679n;

    /* renamed from: r */
    private Callback.CacheCallback<ResultType> f40683r;

    /* renamed from: s */
    private Callback.PrepareCallback f40684s;

    /* renamed from: t */
    private Callback.ProgressCallback f40685t;

    /* renamed from: u */
    private RequestInterceptListener f40686u;

    /* renamed from: v */
    private RequestTracker f40687v;

    /* renamed from: w */
    private final Executor f40688w;

    /* renamed from: x */
    private long f40689x;

    /* renamed from: m */
    private volatile boolean f40678m = false;

    /* renamed from: o */
    private Object f40680o = null;

    /* renamed from: p */
    private volatile Boolean f40681p = null;

    /* renamed from: q */
    private final Object f40682q = new Object();

    /* renamed from: y */
    private long f40690y = 300;

    /* renamed from: org.xutils.http.HttpTask$a */
    /* loaded from: classes2-dex2jar.jar:org/xutils/http/HttpTask$a.class */
    class RunnableC9645a implements Runnable {
        RunnableC9645a() {
            HttpTask.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpTask.this.m205o();
        }
    }

    /* renamed from: org.xutils.http.HttpTask$b */
    /* loaded from: classes2-dex2jar.jar:org/xutils/http/HttpTask$b.class */
    class RunnableC9646b implements Runnable {
        RunnableC9646b() {
            HttpTask.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpTask.this.m205o();
        }
    }

    /* renamed from: org.xutils.http.HttpTask$c */
    /* loaded from: classes2-dex2jar.jar:org/xutils/http/HttpTask$c.class */
    private final class C9647c {

        /* renamed from: a */
        Object f40693a;

        /* renamed from: b */
        Throwable f40694b;

        private C9647c() {
            HttpTask.this = r4;
        }

        /* synthetic */ C9647c(HttpTask httpTask, RunnableC9645a runnableC9645a) {
            this();
        }

        /* renamed from: a */
        public void m202a() {
            RedirectHandler redirectHandler;
            RequestParams redirectParams;
            boolean z = false;
            try {
                if (File.class == HttpTask.this.f40677l) {
                    synchronized (HttpTask.f40671f) {
                        while (true) {
                            z = false;
                            if (HttpTask.f40671f.get() < 10) {
                                break;
                            }
                            z = false;
                            if (HttpTask.this.isCancelled()) {
                                break;
                            }
                            try {
                                HttpTask.f40671f.wait(10L);
                            } catch (InterruptedException e) {
                                z = true;
                            } catch (Throwable th) {
                            }
                        }
                    }
                    HttpTask.f40671f.incrementAndGet();
                }
                if (z || HttpTask.this.isCancelled()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("cancelled before request");
                    sb.append(z ? "(interrupted)" : "");
                    throw new Callback.CancelledException(sb.toString());
                }
                HttpTask.this.f40676k.setRequestInterceptListener(HttpTask.this.f40686u);
                this.f40693a = HttpTask.this.f40676k.loadResult();
                Throwable th2 = this.f40694b;
                if (th2 != null) {
                    throw th2;
                }
                if (File.class != HttpTask.this.f40677l) {
                    return;
                }
                synchronized (HttpTask.f40671f) {
                    HttpTask.f40671f.decrementAndGet();
                    HttpTask.f40671f.notifyAll();
                }
            } catch (Throwable th3) {
                try {
                    this.f40694b = th3;
                    if (th3 instanceof HttpException) {
                        HttpException httpException = th3;
                        int code = httpException.getCode();
                        if ((code == 301 || code == 302) && (redirectHandler = HttpTask.this.f40675j.getRedirectHandler()) != null && (redirectParams = redirectHandler.getRedirectParams(HttpTask.this.f40676k)) != null) {
                            if (redirectParams.getMethod() == null) {
                                redirectParams.setMethod(HttpTask.this.f40675j.getMethod());
                            }
                            HttpTask.this.f40675j = redirectParams;
                            HttpTask httpTask = HttpTask.this;
                            httpTask.f40676k = httpTask.m204p();
                            this.f40694b = new HttpRedirectException(code, httpException.getMessage(), httpException.getResult());
                        }
                    }
                    if (File.class != HttpTask.this.f40677l) {
                        return;
                    }
                    synchronized (HttpTask.f40671f) {
                        HttpTask.f40671f.decrementAndGet();
                        HttpTask.f40671f.notifyAll();
                    }
                } catch (Throwable th4) {
                    if (File.class == HttpTask.this.f40677l) {
                        synchronized (HttpTask.f40671f) {
                            HttpTask.f40671f.decrementAndGet();
                            HttpTask.f40671f.notifyAll();
                        }
                    }
                    throw th4;
                }
            }
        }
    }

    public HttpTask(RequestParams requestParams, Callback.Cancelable cancelable, Callback.CommonCallback<ResultType> commonCallback) {
        super(cancelable);
        this.f40675j = requestParams;
        this.f40679n = commonCallback;
        if (commonCallback instanceof Callback.CacheCallback) {
            this.f40683r = (Callback.CacheCallback) commonCallback;
        }
        if (commonCallback instanceof Callback.PrepareCallback) {
            this.f40684s = (Callback.PrepareCallback) commonCallback;
        }
        if (commonCallback instanceof Callback.ProgressCallback) {
            this.f40685t = (Callback.ProgressCallback) commonCallback;
        }
        if (commonCallback instanceof RequestInterceptListener) {
            this.f40686u = (RequestInterceptListener) commonCallback;
        }
        RequestTracker requestTracker = requestParams.getRequestTracker();
        RequestTracker defaultTracker = requestTracker == null ? commonCallback instanceof RequestTracker ? (RequestTracker) commonCallback : UriRequestFactory.getDefaultTracker() : requestTracker;
        if (defaultTracker != null) {
            this.f40687v = new C9653b(defaultTracker);
        }
        if (requestParams.getExecutor() != null) {
            this.f40688w = requestParams.getExecutor();
        } else if (this.f40683r != null) {
            this.f40688w = f40674i;
        } else {
            this.f40688w = f40673h;
        }
    }

    /* renamed from: m */
    private void m207m() {
        if (File.class == this.f40677l) {
            HashMap<String, WeakReference<HttpTask<?>>> hashMap = f40672g;
            synchronized (hashMap) {
                String saveFilePath = this.f40675j.getSaveFilePath();
                if (!TextUtils.isEmpty(saveFilePath)) {
                    WeakReference<HttpTask<?>> weakReference = hashMap.get(saveFilePath);
                    if (weakReference != null) {
                        HttpTask<?> httpTask = weakReference.get();
                        if (httpTask != null) {
                            httpTask.cancel();
                            httpTask.m205o();
                        }
                        hashMap.remove(saveFilePath);
                    }
                    hashMap.put(saveFilePath, new WeakReference<>(this));
                }
                if (hashMap.size() > 10) {
                    Iterator<Map.Entry<String, WeakReference<HttpTask<?>>>> it = hashMap.entrySet().iterator();
                    while (it.hasNext()) {
                        WeakReference<HttpTask<?>> value = it.next().getValue();
                        if (value == null || value.get() == null) {
                            it.remove();
                        }
                    }
                }
            }
        }
    }

    /* renamed from: n */
    private void m206n() {
        Object obj = this.f40680o;
        if (obj instanceof Closeable) {
            IOUtil.closeQuietly((Closeable) obj);
        }
        this.f40680o = null;
    }

    /* renamed from: o */
    public void m205o() {
        if (File.class == this.f40677l) {
            AtomicInteger atomicInteger = f40671f;
            synchronized (atomicInteger) {
                atomicInteger.notifyAll();
            }
        }
        m206n();
        IOUtil.closeQuietly(this.f40676k);
    }

    /* renamed from: p */
    public UriRequest m204p() {
        this.f40675j.m200d();
        UriRequest uriRequest = UriRequestFactory.getUriRequest(this.f40675j, this.f40677l);
        uriRequest.setProgressHandler(this);
        this.f40690y = this.f40675j.getLoadingUpdateMaxTimeSpan();
        update(1, uriRequest);
        return uriRequest;
    }

    /* renamed from: q */
    private void m203q() {
        Class<?> cls = this.f40679n.getClass();
        Callback.CommonCallback<ResultType> commonCallback = this.f40679n;
        if (commonCallback instanceof Callback.TypedCallback) {
            this.f40677l = ((Callback.TypedCallback) commonCallback).getLoadType();
        } else if (commonCallback instanceof Callback.PrepareCallback) {
            this.f40677l = ParameterizedTypeUtil.getParameterizedType(cls, Callback.PrepareCallback.class, 0);
        } else {
            this.f40677l = ParameterizedTypeUtil.getParameterizedType(cls, Callback.CommonCallback.class, 0);
        }
    }

    @Override // org.xutils.common.task.AbsTask
    protected void cancelWorks() {
        C9682x.task().run(new RunnableC9646b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x018e  */
    @Override // org.xutils.common.task.AbsTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ResultType doBackground() {
        /*
            Method dump skipped, instructions count: 1018
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xutils.http.HttpTask.doBackground():java.lang.Object");
    }

    @Override // org.xutils.common.task.AbsTask
    public Executor getExecutor() {
        return this.f40688w;
    }

    @Override // org.xutils.common.task.AbsTask
    public Priority getPriority() {
        return this.f40675j.getPriority();
    }

    @Override // org.xutils.common.task.AbsTask
    protected boolean isCancelFast() {
        return this.f40675j.isCancelFast();
    }

    @Override // org.xutils.common.task.AbsTask
    public void onCancelled(Callback.CancelledException cancelledException) {
        RequestTracker requestTracker = this.f40687v;
        if (requestTracker != null) {
            requestTracker.onCancelled(this.f40676k);
        }
        this.f40679n.onCancelled(cancelledException);
    }

    @Override // org.xutils.common.task.AbsTask
    public void onError(Throwable th, boolean z) {
        RequestTracker requestTracker = this.f40687v;
        if (requestTracker != null) {
            requestTracker.onError(this.f40676k, th, z);
        }
        this.f40679n.onError(th, z);
    }

    @Override // org.xutils.common.task.AbsTask
    public void onFinished() {
        RequestTracker requestTracker = this.f40687v;
        if (requestTracker != null) {
            requestTracker.onFinished(this.f40676k);
        }
        C9682x.task().run(new RunnableC9645a());
        this.f40679n.onFinished();
    }

    @Override // org.xutils.common.task.AbsTask
    public void onStarted() {
        RequestTracker requestTracker = this.f40687v;
        if (requestTracker != null) {
            requestTracker.onStart(this.f40675j);
        }
        Callback.ProgressCallback progressCallback = this.f40685t;
        if (progressCallback != null) {
            progressCallback.onStarted();
        }
    }

    @Override // org.xutils.common.task.AbsTask
    public void onSuccess(ResultType resulttype) {
        if (this.f40678m) {
            return;
        }
        RequestTracker requestTracker = this.f40687v;
        if (requestTracker != null) {
            requestTracker.onSuccess(this.f40676k, resulttype);
        }
        this.f40679n.onSuccess(resulttype);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.xutils.common.task.AbsTask
    public void onUpdate(int i, Object... objArr) {
        Callback.ProgressCallback progressCallback;
        if (i == 1) {
            RequestTracker requestTracker = this.f40687v;
            if (requestTracker == null) {
                return;
            }
            requestTracker.onRequestCreated((UriRequest) objArr[0]);
        } else if (i == 2) {
            synchronized (this.f40682q) {
                Object obj = objArr[0];
                RequestTracker requestTracker2 = this.f40687v;
                if (requestTracker2 != null) {
                    requestTracker2.onCache(this.f40676k, obj);
                }
                this.f40681p = Boolean.valueOf(this.f40683r.onCache(obj));
                this.f40682q.notifyAll();
            }
        } else if (i != 3 || (progressCallback = this.f40685t) == null || objArr.length != 3) {
        } else {
            try {
                progressCallback.onLoading(((Number) objArr[0]).longValue(), ((Number) objArr[1]).longValue(), ((Boolean) objArr[2]).booleanValue());
            } catch (Throwable th) {
                this.f40679n.onError(th, true);
            }
        }
    }

    @Override // org.xutils.common.task.AbsTask
    public void onWaiting() {
        RequestTracker requestTracker = this.f40687v;
        if (requestTracker != null) {
            requestTracker.onWaiting(this.f40675j);
        }
        Callback.ProgressCallback progressCallback = this.f40685t;
        if (progressCallback != null) {
            progressCallback.onWaiting();
        }
    }

    public String toString() {
        return this.f40675j.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.xutils.http.ProgressHandler
    public boolean updateProgress(long j, long j2, boolean z) {
        char c;
        boolean z2 = false;
        if (!isCancelled()) {
            if (isFinished()) {
                z2 = false;
            } else {
                if (this.f40685t != null && this.f40676k != null && j2 > 0) {
                    if (j < 0) {
                        c = 65535;
                    } else {
                        c = j;
                        if (j < j2) {
                            c = j2;
                        }
                    }
                    if (z) {
                        this.f40689x = System.currentTimeMillis();
                        update(3, Long.valueOf(c), Long.valueOf(j2), Boolean.valueOf(this.f40676k.isLoading()));
                    } else {
                        long currentTimeMillis = System.currentTimeMillis();
                        if (currentTimeMillis - this.f40689x >= this.f40690y) {
                            this.f40689x = currentTimeMillis;
                            update(3, Long.valueOf(c), Long.valueOf(j2), Boolean.valueOf(this.f40676k.isLoading()));
                        }
                    }
                }
                z2 = false;
                if (!isCancelled()) {
                    z2 = false;
                    if (!isFinished()) {
                        z2 = true;
                    }
                }
            }
        }
        return z2;
    }
}
