package zendesk.support.request;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
import zendesk.belvedere.Belvedere;
import zendesk.core.AuthenticationProvider;
import zendesk.support.RequestProvider;
import zendesk.support.SupportBlipsProvider;
import zendesk.support.SupportSettingsProvider;
import zendesk.support.SupportUiStorage;
import zendesk.support.UploadProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestModule_ProvidesActionFactoryFactory.class */
public final class RequestModule_ProvidesActionFactoryFactory implements Factory<ActionFactory> {
    private final Provider<AuthenticationProvider> authProvider;
    private final Provider<Belvedere> belvedereProvider;
    private final Provider<SupportBlipsProvider> blipsProvider;
    private final Provider<ExecutorService> executorProvider;
    private final Provider<Executor> mainThreadExecutorProvider;
    private final Provider<RequestProvider> requestProvider;
    private final Provider<SupportSettingsProvider> settingsProvider;
    private final Provider<SupportUiStorage> supportUiStorageProvider;
    private final Provider<UploadProvider> uploadProvider;

    public RequestModule_ProvidesActionFactoryFactory(Provider<RequestProvider> provider, Provider<SupportSettingsProvider> provider2, Provider<UploadProvider> provider3, Provider<Belvedere> provider4, Provider<SupportUiStorage> provider5, Provider<ExecutorService> provider6, Provider<Executor> provider7, Provider<AuthenticationProvider> provider8, Provider<SupportBlipsProvider> provider9) {
        this.requestProvider = provider;
        this.settingsProvider = provider2;
        this.uploadProvider = provider3;
        this.belvedereProvider = provider4;
        this.supportUiStorageProvider = provider5;
        this.executorProvider = provider6;
        this.mainThreadExecutorProvider = provider7;
        this.authProvider = provider8;
        this.blipsProvider = provider9;
    }

    public static Factory<ActionFactory> create(Provider<RequestProvider> provider, Provider<SupportSettingsProvider> provider2, Provider<UploadProvider> provider3, Provider<Belvedere> provider4, Provider<SupportUiStorage> provider5, Provider<ExecutorService> provider6, Provider<Executor> provider7, Provider<AuthenticationProvider> provider8, Provider<SupportBlipsProvider> provider9) {
        return new RequestModule_ProvidesActionFactoryFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9);
    }

    public static ActionFactory proxyProvidesActionFactory(RequestProvider requestProvider, SupportSettingsProvider supportSettingsProvider, UploadProvider uploadProvider, Belvedere belvedere, SupportUiStorage supportUiStorage, ExecutorService executorService, Executor executor, AuthenticationProvider authenticationProvider, SupportBlipsProvider supportBlipsProvider) {
        return RequestModule.providesActionFactory(requestProvider, supportSettingsProvider, uploadProvider, belvedere, supportUiStorage, executorService, executor, authenticationProvider, supportBlipsProvider);
    }

    @Override // javax.inject.Provider
    public ActionFactory get() {
        return (ActionFactory) Preconditions.checkNotNull(RequestModule.providesActionFactory(this.requestProvider.get(), this.settingsProvider.get(), this.uploadProvider.get(), this.belvedereProvider.get(), this.supportUiStorageProvider.get(), this.executorProvider.get(), this.mainThreadExecutorProvider.get(), this.authProvider.get(), this.blipsProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
