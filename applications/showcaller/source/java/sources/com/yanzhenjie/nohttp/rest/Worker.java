package com.yanzhenjie.nohttp.rest;

import com.yanzhenjie.nohttp.rest.Request;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/Worker.class */
public class Worker<T extends Request<S>, S> implements Callable<Response<S>> {
    private final T mRequest;

    public Worker(T t) {
        this.mRequest = t;
    }

    @Override // java.util.concurrent.Callable
    public Response<S> call() {
        return SyncRequestExecutor.INSTANCE.execute(this.mRequest);
    }

    public T getRequest() {
        return this.mRequest;
    }
}
