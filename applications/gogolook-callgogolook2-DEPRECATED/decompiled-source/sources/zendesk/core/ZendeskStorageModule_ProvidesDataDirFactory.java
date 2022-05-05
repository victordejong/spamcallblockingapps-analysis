package zendesk.core;

import android.content.Context;
import java.io.File;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvidesDataDirFactory.class */
public final class ZendeskStorageModule_ProvidesDataDirFactory implements AbstractC10866b<File> {
    public final Provider<Context> contextProvider;

    public ZendeskStorageModule_ProvidesDataDirFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    public static ZendeskStorageModule_ProvidesDataDirFactory create(Provider<Context> provider) {
        return new ZendeskStorageModule_ProvidesDataDirFactory(provider);
    }

    public static File providesDataDir(Context context) {
        File providesDataDir = ZendeskStorageModule.providesDataDir(context);
        C10867c.m10383a(providesDataDir, "Cannot return null from a non-@Nullable @Provides method");
        return providesDataDir;
    }

    @Override // javax.inject.Provider
    public File get() {
        return providesDataDir(this.contextProvider.get());
    }
}
