package zendesk.support.request;

import android.content.Context;
import android.support.annotation.RestrictTo;
import com.squareup.picasso.Picasso;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import javax.inject.Named;
import okhttp3.OkHttpClient;
import zendesk.belvedere.Belvedere;
import zendesk.commonui.UiConfig;
import zendesk.core.ActionHandlerRegistry;
import zendesk.core.AuthenticationProvider;
import zendesk.core.Zendesk;
import zendesk.suas.Dispatcher;
import zendesk.suas.Filters;
import zendesk.suas.Reducer;
import zendesk.suas.Store;
import zendesk.suas.Suas;
import zendesk.support.ActivityScope;
import zendesk.support.RequestProvider;
import zendesk.support.SupportBlipsProvider;
import zendesk.support.SupportSettingsProvider;
import zendesk.support.SupportUiStorage;
import zendesk.support.UploadProvider;
import zendesk.support.ZendeskDeepLinkHelper;
import zendesk.support.request.AsyncMiddleware;
import zendesk.support.request.AttachmentDownloaderComponent;
import zendesk.support.request.ComponentPersistence;
import zendesk.support.requestlist.RequestInfoDataSource;
@Module
@ActivityScope
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestModule.class */
public class RequestModule {
    private final UiConfig uiConfig;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestModule(UiConfig uiConfig) {
        this.uiConfig = uiConfig;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public static ActionFactory providesActionFactory(RequestProvider requestProvider, SupportSettingsProvider supportSettingsProvider, UploadProvider uploadProvider, Belvedere belvedere, SupportUiStorage supportUiStorage, ExecutorService executorService, @Named("SUPPORT_MAIN_THREAD_EXECUTOR") Executor executor, AuthenticationProvider authenticationProvider, SupportBlipsProvider supportBlipsProvider) {
        return new ActionFactory(requestProvider, uploadProvider, supportSettingsProvider, belvedere, supportUiStorage, executorService, "2.2.1", authenticationProvider, Zendesk.INSTANCE, supportBlipsProvider, executor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public static AsyncMiddleware providesAsyncMiddleware() {
        return new AsyncMiddleware(new AsyncMiddleware.Queue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public static AttachmentDownloaderComponent.AttachmentDownloader providesAttachmentDownloader(Belvedere belvedere, AttachmentDownloadService attachmentDownloadService) {
        return new AttachmentDownloaderComponent.AttachmentDownloader(belvedere, attachmentDownloadService);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public static AttachmentDownloaderComponent providesAttachmentDownloaderComponent(Dispatcher dispatcher, ActionFactory actionFactory, AttachmentDownloaderComponent.AttachmentDownloader attachmentDownloader) {
        return new AttachmentDownloaderComponent(dispatcher, actionFactory, attachmentDownloader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public static AttachmentDownloadService providesAttachmentToDiskService(OkHttpClient okHttpClient, ExecutorService executorService) {
        return new AttachmentDownloadService(okHttpClient, executorService);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public static Belvedere providesBelvedere(Context context) {
        return Belvedere.from(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Reusable
    public static ComponentUpdateActionHandlers providesConversationsUpdatesComponent(Context context, ActionHandlerRegistry actionHandlerRegistry, RequestInfoDataSource.LocalDataSource localDataSource) {
        return new ComponentUpdateActionHandlers(context, actionHandlerRegistry, localDataSource);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public static ComponentPersistence.PersistenceQueue providesDiskQueue(ExecutorService executorService) {
        return new ComponentPersistence.PersistenceQueue(executorService);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public static Dispatcher providesDispatcher(Store store) {
        return store;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public static HeadlessComponentListener providesHeadlessComponentListener(ComponentPersistence componentPersistence, AttachmentDownloaderComponent attachmentDownloaderComponent, ComponentUpdateActionHandlers componentUpdateActionHandlers) {
        return new HeadlessComponentListener(componentPersistence, attachmentDownloaderComponent, componentUpdateActionHandlers);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public static ComponentPersistence providesPersistenceComponent(SupportUiStorage supportUiStorage, ComponentPersistence.PersistenceQueue persistenceQueue, ExecutorService executorService) {
        return new ComponentPersistence(supportUiStorage, persistenceQueue, executorService);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public static List<Reducer> providesReducer() {
        return Arrays.asList(new ReducerProgress(), new ReducerConfiguration(), new ReducerConversation(), new ReducerAttachments(), new ReducerAndroidLifecycle(), new ReducerUiState(), new ReducerError());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public static Store providesStore(List<Reducer> list, AsyncMiddleware asyncMiddleware) {
        return Suas.createStore(list).withMiddleware(asyncMiddleware).withDefaultFilter(Filters.EQUALS).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @ActivityScope
    public CellFactory providesMessageFactory(Context context, Picasso picasso, ActionFactory actionFactory, Dispatcher dispatcher, ZendeskDeepLinkHelper zendeskDeepLinkHelper) {
        return new CellFactory(context.getApplicationContext(), picasso, actionFactory, dispatcher, zendeskDeepLinkHelper, this.uiConfig);
    }
}
