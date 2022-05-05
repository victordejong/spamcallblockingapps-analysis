package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import zendesk.core.SessionStorage;
/* loaded from: classes3-dex2jar.jar:zendesk/support/StorageModule_ProvideArticleVoteStorageFactory.class */
public final class StorageModule_ProvideArticleVoteStorageFactory implements Factory<ArticleVoteStorage> {
    private final Provider<SessionStorage> baseStorageProvider;
    private final StorageModule module;

    public StorageModule_ProvideArticleVoteStorageFactory(StorageModule storageModule, Provider<SessionStorage> provider) {
        this.module = storageModule;
        this.baseStorageProvider = provider;
    }

    public static Factory<ArticleVoteStorage> create(StorageModule storageModule, Provider<SessionStorage> provider) {
        return new StorageModule_ProvideArticleVoteStorageFactory(storageModule, provider);
    }

    public static ArticleVoteStorage proxyProvideArticleVoteStorage(StorageModule storageModule, SessionStorage sessionStorage) {
        return storageModule.provideArticleVoteStorage(sessionStorage);
    }

    @Override // javax.inject.Provider
    public ArticleVoteStorage get() {
        return (ArticleVoteStorage) Preconditions.checkNotNull(this.module.provideArticleVoteStorage(this.baseStorageProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
