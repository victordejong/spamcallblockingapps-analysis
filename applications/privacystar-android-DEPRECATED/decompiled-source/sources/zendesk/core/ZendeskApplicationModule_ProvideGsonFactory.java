package zendesk.core;

import com.google.gson.Gson;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule_ProvideGsonFactory.class */
public final class ZendeskApplicationModule_ProvideGsonFactory implements Factory<Gson> {
    private static final ZendeskApplicationModule_ProvideGsonFactory INSTANCE = new ZendeskApplicationModule_ProvideGsonFactory();

    public static Factory<Gson> create() {
        return INSTANCE;
    }

    public static Gson proxyProvideGson() {
        return ZendeskApplicationModule.provideGson();
    }

    @Override // javax.inject.Provider
    public Gson get() {
        return (Gson) Preconditions.checkNotNull(ZendeskApplicationModule.provideGson(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
