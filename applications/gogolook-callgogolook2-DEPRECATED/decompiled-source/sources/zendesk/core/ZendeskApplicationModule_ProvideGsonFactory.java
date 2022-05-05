package zendesk.core;

import com.google.gson.Gson;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule_ProvideGsonFactory.class */
public final class ZendeskApplicationModule_ProvideGsonFactory implements AbstractC10866b<Gson> {
    public static final ZendeskApplicationModule_ProvideGsonFactory INSTANCE = new ZendeskApplicationModule_ProvideGsonFactory();

    public static ZendeskApplicationModule_ProvideGsonFactory create() {
        return INSTANCE;
    }

    public static Gson provideGson() {
        Gson provideGson = ZendeskApplicationModule.provideGson();
        C10867c.m10383a(provideGson, "Cannot return null from a non-@Nullable @Provides method");
        return provideGson;
    }

    @Override // javax.inject.Provider
    public Gson get() {
        return provideGson();
    }
}
