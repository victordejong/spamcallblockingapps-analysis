package zendesk.core;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import p081h.p451q.p453b.C10845a;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CachingInterceptor.class */
public class CachingInterceptor implements Interceptor {
    public final BaseStorage cache;
    public final Map<String, Lock> locks = new HashMap();

    public CachingInterceptor(BaseStorage baseStorage) {
        this.cache = baseStorage;
    }

    public final Response createResponse(int i, Request request, ResponseBody responseBody) {
        Response.Builder builder = new Response.Builder();
        if (responseBody != null) {
            builder.body(responseBody);
        } else {
            C10845a.m10417d("CachingInterceptor", "Response body is null", new Object[0]);
        }
        builder.code(i);
        builder.message(request.method());
        builder.request(request);
        builder.protocol(Protocol.HTTP_1_1);
        return builder.build();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Lock lock;
        String httpUrl = chain.request().url().toString();
        synchronized (this.locks) {
            if (this.locks.containsKey(httpUrl)) {
                lock = this.locks.get(httpUrl);
            } else {
                lock = new ReentrantLock();
                this.locks.put(httpUrl, lock);
            }
        }
        try {
            lock.lock();
            return loadData(httpUrl, chain);
        } finally {
            lock.unlock();
        }
    }

    public final Response loadData(String str, Interceptor.Chain chain) throws IOException {
        int i;
        ResponseBody responseBody;
        ResponseBody responseBody2 = (ResponseBody) this.cache.get(str, ResponseBody.class);
        if (responseBody2 == null) {
            C10845a.m10422a("CachingInterceptor", "Response not cached, loading it from the network. | %s", str);
            Response proceed = chain.proceed(chain.request());
            if (proceed.isSuccessful()) {
                MediaType contentType = proceed.body().contentType();
                byte[] bytes = proceed.body().bytes();
                this.cache.put(str, ResponseBody.create(contentType, bytes));
                responseBody = ResponseBody.create(contentType, bytes);
            } else {
                C10845a.m10422a("CachingInterceptor", "Unable to load data from network. | %s", str);
                responseBody = proceed.body();
            }
            i = proceed.code();
        } else {
            i = 200;
            responseBody = responseBody2;
        }
        return createResponse(i, chain.request(), responseBody);
    }
}
