package zendesk.core;

import android.content.Context;
import java.io.File;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvidesBelvedereDirFactory.class */
public final class ZendeskStorageModule_ProvidesBelvedereDirFactory implements AbstractC10866b<File> {
    public final Provider<Context> contextProvider;

    public ZendeskStorageModule_ProvidesBelvedereDirFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    public static ZendeskStorageModule_ProvidesBelvedereDirFactory create(Provider<Context> provider) {
        return new ZendeskStorageModule_ProvidesBelvedereDirFactory(provider);
    }

    public static File providesBelvedereDir(Context context) {
        File providesBelvedereDir = ZendeskStorageModule.providesBelvedereDir(context);
        C10867c.m10383a(providesBelvedereDir, "Cannot return null from a non-@Nullable @Provides method");
        return providesBelvedereDir;
    }

    @Override // javax.inject.Provider
    public File get() {
        return providesBelvedereDir(this.contextProvider.get());
    }
}
