package com.yanzhenjie.nohttp.rest;

import com.yanzhenjie.nohttp.InitializationConfig;
import com.yanzhenjie.nohttp.NoHttp;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/SyncRequestExecutor.class */
public enum SyncRequestExecutor {
    INSTANCE;
    
    private RequestHandler mRequestHandler;

    SyncRequestExecutor() {
        InitializationConfig initializeConfig = NoHttp.getInitializeConfig();
        this.mRequestHandler = new RequestHandler(initializeConfig.getCacheStore(), initializeConfig.getNetworkExecutor(), initializeConfig.getInterceptor());
    }

    public <T> Response<T> execute(Request<T> request) {
        return this.mRequestHandler.handle(request);
    }
}
