package zendesk.support.request;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.List;
import zendesk.suas.Reducer;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestModule_ProvidesReducerFactory.class */
public final class RequestModule_ProvidesReducerFactory implements Factory<List<Reducer>> {
    private static final RequestModule_ProvidesReducerFactory INSTANCE = new RequestModule_ProvidesReducerFactory();

    public static Factory<List<Reducer>> create() {
        return INSTANCE;
    }

    public static List<Reducer> proxyProvidesReducer() {
        return RequestModule.providesReducer();
    }

    @Override // javax.inject.Provider
    public List<Reducer> get() {
        return (List) Preconditions.checkNotNull(RequestModule.providesReducer(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
