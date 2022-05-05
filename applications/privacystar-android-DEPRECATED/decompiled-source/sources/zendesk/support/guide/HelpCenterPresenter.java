package zendesk.support.guide;

import android.support.annotation.VisibleForTesting;
import com.zendesk.logger.Logger;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ZendeskCallback;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import zendesk.core.NetworkAware;
import zendesk.core.NetworkInfoProvider;
import zendesk.core.RetryAction;
import zendesk.support.SearchArticle;
import zendesk.support.SupportSdkSettings;
import zendesk.support.guide.HelpCenterMvp;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpCenterPresenter.class */
public class HelpCenterPresenter implements HelpCenterMvp.Presenter, NetworkAware {
    private static final Integer NETWORK_AWARE_ID = 31;
    private static final Integer RETRY_ACTION_ID = 8642;
    private HelpCenterUiConfig config;
    private Set<RetryAction> internalRetryActions = new HashSet();
    private SupportSdkSettings mobileSettings = new SupportSdkSettings(null, null, null);
    private HelpCenterMvp.Model model;
    private NetworkInfoProvider networkInfoProvider;
    private boolean networkPreviouslyUnavailable;
    private HelpCenterMvp.View view;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes3-dex2jar.jar:zendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback.class */
    public class ViewSafeRetryZendeskCallback extends ZendeskCallback<List<SearchArticle>> {
        private String query;

        ViewSafeRetryZendeskCallback(String str) {
            this.query = str;
        }

        @Override // com.zendesk.service.ZendeskCallback
        public void onError(final ErrorResponse errorResponse) {
            if (HelpCenterPresenter.this.view != null) {
                HelpCenterPresenter.this.view.hideLoadingState();
                HelpCenterPresenter.this.view.showLoadArticleErrorWithRetry(HelpCenterMvp.ErrorType.ARTICLES_LOAD, new RetryAction() { // from class: zendesk.support.guide.HelpCenterPresenter.ViewSafeRetryZendeskCallback.2
                    @Override // zendesk.core.RetryAction
                    public void onRetry() {
                        HelpCenterPresenter.this.onSearchSubmit(ViewSafeRetryZendeskCallback.this.query);
                    }
                });
                return;
            }
            HelpCenterPresenter.this.internalRetryActions.add(new RetryAction() { // from class: zendesk.support.guide.HelpCenterPresenter.ViewSafeRetryZendeskCallback.3
                @Override // zendesk.core.RetryAction
                public void onRetry() {
                    ViewSafeRetryZendeskCallback.this.onError(errorResponse);
                }
            });
        }

        public void onSuccess(final List<SearchArticle> list) {
            if (HelpCenterPresenter.this.view != null) {
                HelpCenterPresenter.this.view.hideLoadingState();
                HelpCenterPresenter.this.view.showSearchResults(list, this.query);
                if (HelpCenterPresenter.this.config.isContactUsButtonVisible()) {
                    HelpCenterPresenter.this.view.showContactUsButton();
                    return;
                }
                return;
            }
            HelpCenterPresenter.this.internalRetryActions.add(new RetryAction() { // from class: zendesk.support.guide.HelpCenterPresenter.ViewSafeRetryZendeskCallback.1
                @Override // zendesk.core.RetryAction
                public void onRetry() {
                    ViewSafeRetryZendeskCallback.this.onSuccess(list);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HelpCenterPresenter(HelpCenterMvp.View view, HelpCenterMvp.Model model, NetworkInfoProvider networkInfoProvider) {
        this.view = view;
        this.model = model;
        this.networkInfoProvider = networkInfoProvider;
    }

    private void invokeRetryActions() {
        for (RetryAction retryAction : this.internalRetryActions) {
            retryAction.onRetry();
        }
        this.internalRetryActions.clear();
    }

    @Override // zendesk.support.guide.HelpCenterMvp.Presenter
    public void init(final HelpCenterUiConfig helpCenterUiConfig) {
        this.config = helpCenterUiConfig;
        this.view.showLoadingState();
        this.model.getSettings(new ZendeskCallback<SupportSdkSettings>() { // from class: zendesk.support.guide.HelpCenterPresenter.5
            @Override // com.zendesk.service.ZendeskCallback
            public void onError(ErrorResponse errorResponse) {
                Logger.m295e("HelpCenterActivity", "Failed to get mobile settings. Cannot determine start screen.", new Object[0]);
                Logger.m297e("HelpCenterActivity", errorResponse);
                if (HelpCenterPresenter.this.view != null) {
                    HelpCenterPresenter.this.view.hideLoadingState();
                    HelpCenterPresenter.this.view.exitActivity();
                    return;
                }
                HelpCenterPresenter.this.internalRetryActions.add(new RetryAction() { // from class: zendesk.support.guide.HelpCenterPresenter.5.6
                    @Override // zendesk.core.RetryAction
                    public void onRetry() {
                        HelpCenterPresenter.this.view.hideLoadingState();
                        HelpCenterPresenter.this.view.exitActivity();
                    }
                });
            }

            public void onSuccess(SupportSdkSettings supportSdkSettings) {
                if (HelpCenterPresenter.this.view != null) {
                    HelpCenterPresenter.this.view.hideLoadingState();
                } else {
                    HelpCenterPresenter.this.internalRetryActions.add(new RetryAction() { // from class: zendesk.support.guide.HelpCenterPresenter.5.1
                        @Override // zendesk.core.RetryAction
                        public void onRetry() {
                            HelpCenterPresenter.this.view.hideLoadingState();
                        }
                    });
                }
                HelpCenterPresenter.this.mobileSettings = supportSdkSettings;
                if (supportSdkSettings.isHelpCenterEnabled()) {
                    Logger.m298d("HelpCenterActivity", "Help center is enabled. starting with Help Center", new Object[0]);
                    if (HelpCenterPresenter.this.view != null) {
                        HelpCenterPresenter.this.view.showHelp(HelpCenterPresenter.this.config);
                    } else {
                        HelpCenterPresenter.this.internalRetryActions.add(new RetryAction() { // from class: zendesk.support.guide.HelpCenterPresenter.5.2
                            @Override // zendesk.core.RetryAction
                            public void onRetry() {
                                HelpCenterPresenter.this.view.showHelp(HelpCenterPresenter.this.config);
                            }
                        });
                    }
                    if (helpCenterUiConfig.isContactUsButtonVisible()) {
                        Logger.m298d("HelpCenterActivity", "Saved instance states that we should show the contact FAB", new Object[0]);
                        if (HelpCenterPresenter.this.view != null) {
                            HelpCenterPresenter.this.view.showContactUsButton();
                        } else {
                            HelpCenterPresenter.this.internalRetryActions.add(new RetryAction() { // from class: zendesk.support.guide.HelpCenterPresenter.5.3
                                @Override // zendesk.core.RetryAction
                                public void onRetry() {
                                    HelpCenterPresenter.this.view.showContactUsButton();
                                }
                            });
                        }
                    }
                } else {
                    Logger.m298d("HelpCenterActivity", "Help center is disabled", new Object[0]);
                    if (supportSdkSettings.isConversationsEnabled()) {
                        Logger.m298d("HelpCenterActivity", "Starting with conversations", new Object[0]);
                        if (HelpCenterPresenter.this.view != null) {
                            HelpCenterPresenter.this.view.showRequestList();
                            HelpCenterPresenter.this.view.exitActivity();
                            return;
                        }
                        HelpCenterPresenter.this.internalRetryActions.add(new RetryAction() { // from class: zendesk.support.guide.HelpCenterPresenter.5.4
                            @Override // zendesk.core.RetryAction
                            public void onRetry() {
                                HelpCenterPresenter.this.view.showRequestList();
                                HelpCenterPresenter.this.view.exitActivity();
                            }
                        });
                        return;
                    }
                    Logger.m298d("HelpCenterActivity", "Starting with contact", new Object[0]);
                    if (HelpCenterPresenter.this.view != null) {
                        HelpCenterPresenter.this.view.showContactZendesk();
                        HelpCenterPresenter.this.view.exitActivity();
                        return;
                    }
                    HelpCenterPresenter.this.internalRetryActions.add(new RetryAction() { // from class: zendesk.support.guide.HelpCenterPresenter.5.5
                        @Override // zendesk.core.RetryAction
                        public void onRetry() {
                            HelpCenterPresenter.this.view.showContactZendesk();
                            HelpCenterPresenter.this.view.exitActivity();
                        }
                    });
                }
            }
        });
    }

    @Override // zendesk.support.guide.HelpCenterMvp.Presenter
    public void onErrorWithRetry(final HelpCenterMvp.ErrorType errorType, final RetryAction retryAction) {
        if (this.view == null) {
            this.internalRetryActions.add(new RetryAction() { // from class: zendesk.support.guide.HelpCenterPresenter.3
                @Override // zendesk.core.RetryAction
                public void onRetry() {
                    if (HelpCenterPresenter.this.view != null && HelpCenterPresenter.this.view.isShowingHelp()) {
                        HelpCenterPresenter.this.view.hideLoadingState();
                        HelpCenterPresenter.this.view.showLoadArticleErrorWithRetry(errorType, retryAction);
                    }
                }
            });
        } else if (this.view.isShowingHelp()) {
            this.view.hideLoadingState();
            this.view.showLoadArticleErrorWithRetry(errorType, retryAction);
        }
    }

    @Override // zendesk.support.guide.HelpCenterMvp.Presenter
    public void onLoad() {
        if (this.config.isContactUsButtonVisible()) {
            if (this.view != null) {
                this.view.showContactUsButton();
            } else {
                this.internalRetryActions.add(new RetryAction() { // from class: zendesk.support.guide.HelpCenterPresenter.2
                    @Override // zendesk.core.RetryAction
                    public void onRetry() {
                        HelpCenterPresenter.this.view.showContactUsButton();
                    }
                });
            }
        }
        if (this.view != null) {
            this.view.announceContentLoaded();
        }
    }

    @Override // zendesk.core.NetworkAware
    public void onNetworkAvailable() {
        Logger.m298d("HelpCenterActivity", "Network is available.", new Object[0]);
        if (!this.networkPreviouslyUnavailable) {
            Logger.m298d("HelpCenterActivity", "Network was not previously unavailable, no need to dismiss Snackbar", new Object[0]);
            return;
        }
        this.networkPreviouslyUnavailable = false;
        if (this.view != null) {
            this.view.setSearchEnabled(true);
            this.view.dismissError();
            return;
        }
        this.internalRetryActions.add(new RetryAction() { // from class: zendesk.support.guide.HelpCenterPresenter.4
            @Override // zendesk.core.RetryAction
            public void onRetry() {
                HelpCenterPresenter.this.view.dismissError();
            }
        });
    }

    @Override // zendesk.core.NetworkAware
    public void onNetworkUnavailable() {
        Logger.m298d("HelpCenterActivity", "Network is unavailable.", new Object[0]);
        this.networkPreviouslyUnavailable = true;
        if (this.view != null) {
            this.view.setSearchEnabled(false);
            this.view.showNoConnectionError();
            this.view.hideLoadingState();
        }
    }

    @Override // zendesk.support.guide.HelpCenterMvp.Presenter
    public void onPause() {
        this.view = null;
        this.networkInfoProvider.removeNetworkAwareListener(NETWORK_AWARE_ID);
        this.networkInfoProvider.removeRetryAction(RETRY_ACTION_ID);
        this.networkInfoProvider.unregister();
    }

    @Override // zendesk.support.guide.HelpCenterMvp.Presenter
    public void onResume(HelpCenterMvp.View view) {
        this.view = view;
        this.networkInfoProvider.addNetworkAwareListener(NETWORK_AWARE_ID, this);
        this.networkInfoProvider.register();
        if (!this.networkInfoProvider.isNetworkAvailable()) {
            view.showNoConnectionError();
            view.hideLoadingState();
            this.networkPreviouslyUnavailable = true;
        }
        invokeRetryActions();
    }

    @Override // zendesk.support.guide.HelpCenterMvp.Presenter
    public void onSearchSubmit(final String str) {
        if (this.networkInfoProvider.isNetworkAvailable()) {
            this.view.dismissError();
            this.view.showLoadingState();
            this.view.clearSearchResults();
            this.model.search(this.config.getCategoryIds(), this.config.getSectionIds(), str, this.config.getLabelNames(), new ViewSafeRetryZendeskCallback(str));
            return;
        }
        this.networkInfoProvider.addRetryAction(RETRY_ACTION_ID, new RetryAction() { // from class: zendesk.support.guide.HelpCenterPresenter.1
            @Override // zendesk.core.RetryAction
            public void onRetry() {
                HelpCenterPresenter.this.onSearchSubmit(str);
            }
        });
    }

    @Override // zendesk.support.guide.HelpCenterMvp.Presenter
    public boolean shouldShowConversationsMenuItem() {
        return this.mobileSettings.isConversationsEnabled() && this.config.isShowConversationsMenuButton();
    }

    @Override // zendesk.support.guide.HelpCenterMvp.Presenter
    public boolean shouldShowSearchMenuItem() {
        return this.mobileSettings.hasHelpCenterSettings();
    }
}
