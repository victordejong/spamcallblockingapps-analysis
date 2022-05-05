package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportModule_ProvidesArticleVoteStorageFactory.class */
public final class SupportModule_ProvidesArticleVoteStorageFactory implements Factory<ArticleVoteStorage> {
    private final SupportModule module;

    public SupportModule_ProvidesArticleVoteStorageFactory(SupportModule supportModule) {
        this.module = supportModule;
    }

    public static Factory<ArticleVoteStorage> create(SupportModule supportModule) {
        return new SupportModule_ProvidesArticleVoteStorageFactory(supportModule);
    }

    public static ArticleVoteStorage proxyProvidesArticleVoteStorage(SupportModule supportModule) {
        return supportModule.providesArticleVoteStorage();
    }

    @Override // javax.inject.Provider
    public ArticleVoteStorage get() {
        return (ArticleVoteStorage) Preconditions.checkNotNull(this.module.providesArticleVoteStorage(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
