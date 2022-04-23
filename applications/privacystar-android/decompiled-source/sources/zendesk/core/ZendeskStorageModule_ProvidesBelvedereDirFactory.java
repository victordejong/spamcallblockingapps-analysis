package zendesk.core;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.io.File;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvidesBelvedereDirFactory.class */
public final class ZendeskStorageModule_ProvidesBelvedereDirFactory implements Factory<File> {
    private final Provider<Context> contextProvider;

    public ZendeskStorageModule_ProvidesBelvedereDirFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    public static Factory<File> create(Provider<Context> provider) {
        return new ZendeskStorageModule_ProvidesBelvedereDirFactory(provider);
    }

    public static File proxyProvidesBelvedereDir(Context context) {
        return ZendeskStorageModule.providesBelvedereDir(context);
    }

    @Override // javax.inject.Provider
    public File get() {
        return (File) Preconditions.checkNotNull(ZendeskStorageModule.providesBelvedereDir(this.contextProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
