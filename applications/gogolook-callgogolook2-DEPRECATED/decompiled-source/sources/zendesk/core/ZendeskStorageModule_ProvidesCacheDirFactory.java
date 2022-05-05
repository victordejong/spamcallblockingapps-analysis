package zendesk.core;

import android.content.Context;
import java.io.File;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvidesCacheDirFactory.class */
public final class ZendeskStorageModule_ProvidesCacheDirFactory implements AbstractC10866b<File> {
    public final Provider<Context> contextProvider;

    public ZendeskStorageModule_ProvidesCacheDirFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    public static ZendeskStorageModule_ProvidesCacheDirFactory create(Provider<Context> provider) {
        return new ZendeskStorageModule_ProvidesCacheDirFactory(provider);
    }

    public static File providesCacheDir(Context context) {
        File providesCacheDir = ZendeskStorageModule.providesCacheDir(context);
        C10867c.m10383a(providesCacheDir, "Cannot return null from a non-@Nullable @Provides method");
        return providesCacheDir;
    }

    @Override // javax.inject.Provider
    public File get() {
        return providesCacheDir(this.contextProvider.get());
    }
}
