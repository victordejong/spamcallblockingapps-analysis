package zendesk.support.request;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestModule_ProvidesAsyncMiddlewareFactory.class */
public final class RequestModule_ProvidesAsyncMiddlewareFactory implements Factory<AsyncMiddleware> {
    private static final RequestModule_ProvidesAsyncMiddlewareFactory INSTANCE = new RequestModule_ProvidesAsyncMiddlewareFactory();

    public static Factory<AsyncMiddleware> create() {
        return INSTANCE;
    }

    public static AsyncMiddleware proxyProvidesAsyncMiddleware() {
        return RequestModule.providesAsyncMiddleware();
    }

    @Override // javax.inject.Provider
    public AsyncMiddleware get() {
        return (AsyncMiddleware) Preconditions.checkNotNull(RequestModule.providesAsyncMiddleware(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
