package zendesk.support;

import dagger.Module;
import dagger.Provides;
import java.util.UUID;
import okhttp3.OkHttpClient;
@Module
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportModule.class */
public class SupportModule {
    private final ArticleVoteStorage articleVoteStorage;
    private final SupportBlipsProvider blipsProvider;
    private final HelpCenterProvider helpCenterProvider;

    /* renamed from: id */
    private final UUID f1854id = UUID.randomUUID();
    private final OkHttpClient okHttpClient;
    private final RequestProvider requestProvider;
    private final SupportSettingsProvider settingsProvider;
    private final UploadProvider uploadProvider;
    private final ZendeskTracker zendeskTracker;

    public SupportModule(RequestProvider requestProvider, UploadProvider uploadProvider, HelpCenterProvider helpCenterProvider, SupportSettingsProvider supportSettingsProvider, SupportBlipsProvider supportBlipsProvider, OkHttpClient okHttpClient, ZendeskTracker zendeskTracker, ArticleVoteStorage articleVoteStorage) {
        this.requestProvider = requestProvider;
        this.uploadProvider = uploadProvider;
        this.helpCenterProvider = helpCenterProvider;
        this.settingsProvider = supportSettingsProvider;
        this.blipsProvider = supportBlipsProvider;
        this.okHttpClient = okHttpClient;
        this.zendeskTracker = zendeskTracker;
        this.articleVoteStorage = articleVoteStorage;
    }

    public UUID getId() {
        return this.f1854id;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public ArticleVoteStorage providesArticleVoteStorage() {
        return this.articleVoteStorage;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public SupportBlipsProvider providesBlipsProvider() {
        return this.blipsProvider;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public HelpCenterProvider providesHelpCenterProvider() {
        return this.helpCenterProvider;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public OkHttpClient providesOkHttpClient() {
        return this.okHttpClient;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public RequestProvider providesRequestProvider() {
        return this.requestProvider;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public SupportSettingsProvider providesSettingsProvider() {
        return this.settingsProvider;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public UploadProvider providesUploadProvider() {
        return this.uploadProvider;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public ZendeskTracker providesZendeskTracker() {
        return this.zendeskTracker;
    }
}
