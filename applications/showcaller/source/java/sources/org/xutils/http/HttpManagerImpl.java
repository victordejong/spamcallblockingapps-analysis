package org.xutils.http;

import java.lang.reflect.Type;
import org.xutils.C9682x;
import org.xutils.HttpManager;
import org.xutils.common.Callback;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/HttpManagerImpl.class */
public final class HttpManagerImpl implements HttpManager {

    /* renamed from: a */
    private static final Object f40666a = new Object();

    /* renamed from: b */
    private static volatile HttpManagerImpl f40667b;

    /* renamed from: org.xutils.http.HttpManagerImpl$a */
    /* loaded from: classes2-dex2jar.jar:org/xutils/http/HttpManagerImpl$a.class */
    public class C9644a<T> implements Callback.TypedCallback<T> {

        /* renamed from: a */
        private final Class<T> f40668a;

        public C9644a(Class<T> cls) {
            HttpManagerImpl.this = r4;
            this.f40668a = cls;
        }

        @Override // org.xutils.common.Callback.TypedCallback
        public Type getLoadType() {
            return this.f40668a;
        }

        @Override // org.xutils.common.Callback.CommonCallback
        public void onCancelled(Callback.CancelledException cancelledException) {
        }

        @Override // org.xutils.common.Callback.CommonCallback
        public void onError(Throwable th, boolean z) {
        }

        @Override // org.xutils.common.Callback.CommonCallback
        public void onFinished() {
        }

        @Override // org.xutils.common.Callback.CommonCallback
        public void onSuccess(T t) {
        }
    }

    private HttpManagerImpl() {
    }

    public static void registerInstance() {
        if (f40667b == null) {
            synchronized (f40666a) {
                if (f40667b == null) {
                    f40667b = new HttpManagerImpl();
                }
            }
        }
        C9682x.Ext.setHttpManager(f40667b);
    }

    @Override // org.xutils.HttpManager
    public <T> Callback.Cancelable get(RequestParams requestParams, Callback.CommonCallback<T> commonCallback) {
        return request(HttpMethod.GET, requestParams, commonCallback);
    }

    @Override // org.xutils.HttpManager
    public <T> T getSync(RequestParams requestParams, Class<T> cls) {
        return (T) requestSync(HttpMethod.GET, requestParams, cls);
    }

    @Override // org.xutils.HttpManager
    public <T> Callback.Cancelable post(RequestParams requestParams, Callback.CommonCallback<T> commonCallback) {
        return request(HttpMethod.POST, requestParams, commonCallback);
    }

    @Override // org.xutils.HttpManager
    public <T> T postSync(RequestParams requestParams, Class<T> cls) {
        return (T) requestSync(HttpMethod.POST, requestParams, cls);
    }

    @Override // org.xutils.HttpManager
    public <T> Callback.Cancelable request(HttpMethod httpMethod, RequestParams requestParams, Callback.CommonCallback<T> commonCallback) {
        requestParams.setMethod(httpMethod);
        return C9682x.task().start(new HttpTask(requestParams, commonCallback instanceof Callback.Cancelable ? (Callback.Cancelable) commonCallback : null, commonCallback));
    }

    @Override // org.xutils.HttpManager
    public <T> T requestSync(HttpMethod httpMethod, RequestParams requestParams, Class<T> cls) {
        return (T) requestSync(httpMethod, requestParams, new C9644a(cls));
    }

    @Override // org.xutils.HttpManager
    public <T> T requestSync(HttpMethod httpMethod, RequestParams requestParams, Callback.TypedCallback<T> typedCallback) {
        requestParams.setMethod(httpMethod);
        return (T) C9682x.task().startSync(new HttpTask(requestParams, null, typedCallback));
    }
}
