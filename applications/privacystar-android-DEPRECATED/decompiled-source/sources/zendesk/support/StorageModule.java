package zendesk.support;

import android.content.Context;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import zendesk.core.MemoryCache;
import zendesk.core.SessionStorage;
/* JADX INFO: Access modifiers changed from: package-private */
@Module
/* loaded from: classes3-dex2jar.jar:zendesk/support/StorageModule.class */
public class StorageModule {
    private static final String LEGACY_REQUEST_STORAGE_PREFS_NAME = "zendesk-authorization";

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public ArticleVoteStorage provideArticleVoteStorage(SessionStorage sessionStorage) {
        return new ZendeskArticleVoteStorage(sessionStorage.getAdditionalSdkStorage());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public HelpCenterSessionCache provideHelpCenterSessionCache() {
        return new ZendeskHelpCenterSessionCache();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public RequestMigrator provideRequestMigrator(Context context) {
        return new LegacyRequestMigrator(context.getSharedPreferences(LEGACY_REQUEST_STORAGE_PREFS_NAME, 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public RequestSessionCache provideRequestSessionCache() {
        return new ZendeskRequestSessionCache();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public RequestStorage provideRequestStorage(SessionStorage sessionStorage, RequestMigrator requestMigrator, MemoryCache memoryCache) {
        return new ZendeskRequestStorage(sessionStorage.getAdditionalSdkStorage(), requestMigrator, memoryCache);
    }
}
