package zendesk.support.request;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import zendesk.belvedere.Belvedere;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestModule_ProvidesBelvedereFactory.class */
public final class RequestModule_ProvidesBelvedereFactory implements Factory<Belvedere> {
    private final Provider<Context> contextProvider;

    public RequestModule_ProvidesBelvedereFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    public static Factory<Belvedere> create(Provider<Context> provider) {
        return new RequestModule_ProvidesBelvedereFactory(provider);
    }

    public static Belvedere proxyProvidesBelvedere(Context context) {
        return RequestModule.providesBelvedere(context);
    }

    @Override // javax.inject.Provider
    public Belvedere get() {
        return (Belvedere) Preconditions.checkNotNull(RequestModule.providesBelvedere(this.contextProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
