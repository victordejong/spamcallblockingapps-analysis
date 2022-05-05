package zendesk.support.requestlist;

import android.support.annotation.Nullable;
import android.support.p001v4.widget.SwipeRefreshLayout;
import android.view.View;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.SafeZendeskCallback;
import com.zendesk.service.ZendeskCallback;
import java.util.List;
import zendesk.support.SupportSdkSettings;
import zendesk.support.request.RequestActivity;
import zendesk.support.requestlist.RequestListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListPresenter.class */
public class RequestListPresenter {
    private final CancelableCompositeCallback callbacks = new CancelableCompositeCallback();
    private final RequestListModel model;
    private final RequestListView view;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListPresenter$SettingsCallback.class */
    public interface SettingsCallback {
        void onSettings(@Nullable SupportSdkSettings supportSdkSettings);
    }

    public RequestListPresenter(RequestListView requestListView, RequestListModel requestListModel) {
        this.view = requestListView;
        this.model = requestListModel;
    }

    private void createTicketClicks(final RequestListView requestListView) {
        requestListView.setCreateRequestListener(new View.OnClickListener() { // from class: zendesk.support.requestlist.RequestListPresenter.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                requestListView.startRequestActivity(RequestActivity.builder());
            }
        });
    }

    private void errorClicks(RequestListView requestListView) {
        requestListView.setRetryClickListener(new View.OnClickListener() { // from class: zendesk.support.requestlist.RequestListPresenter.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RequestListPresenter.this.refresh();
            }
        });
    }

    private void itemClicks(final RequestListView requestListView) {
        requestListView.setItemClickListener(new RequestListView.OnItemClick() { // from class: zendesk.support.requestlist.RequestListPresenter.7
            @Override // zendesk.support.requestlist.RequestListView.OnItemClick
            public void onClick(RequestListItem requestListItem) {
                requestListView.startRequestActivity(requestListItem.configure(RequestActivity.builder()));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadItems(boolean z, SupportSdkSettings supportSdkSettings) {
        ZendeskCallback<List<RequestListItem>> zendeskCallback = new ZendeskCallback<List<RequestListItem>>() { // from class: zendesk.support.requestlist.RequestListPresenter.3
            @Override // com.zendesk.service.ZendeskCallback
            public void onError(ErrorResponse errorResponse) {
                RequestListPresenter.this.view.setLoading(false);
                RequestListPresenter.this.view.showErrorMessage();
            }

            public void onSuccess(List<RequestListItem> list) {
                RequestListPresenter.this.view.showRequestList(list);
                RequestListPresenter.this.view.setLoading(false);
            }
        };
        this.callbacks.add(SafeZendeskCallback.from(zendeskCallback));
        this.view.setLoading(true);
        this.model.loadItems(z, supportSdkSettings, zendeskCallback);
    }

    private void loadSettings(SettingsCallback settingsCallback) {
        SupportSdkSettings cachedSettings = this.model.getCachedSettings();
        if (cachedSettings == null) {
            networkSettings(settingsCallback);
        } else {
            settingsCallback.onSettings(cachedSettings);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logoClicks(final RequestListView requestListView, boolean z, final String str) {
        requestListView.setLogoClickListener(z, new View.OnClickListener() { // from class: zendesk.support.requestlist.RequestListPresenter.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                requestListView.startReferrerPage(str);
            }
        });
    }

    private void navigationClicks(final RequestListView requestListView) {
        requestListView.setBackClickListener(new View.OnClickListener() { // from class: zendesk.support.requestlist.RequestListPresenter.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                requestListView.finish();
            }
        });
    }

    private void networkSettings(final SettingsCallback settingsCallback) {
        SafeZendeskCallback from = SafeZendeskCallback.from(new ZendeskCallback<SupportSdkSettings>() { // from class: zendesk.support.requestlist.RequestListPresenter.4
            @Override // com.zendesk.service.ZendeskCallback
            public void onError(ErrorResponse errorResponse) {
                settingsCallback.onSettings(null);
                RequestListPresenter.this.view.finish("Conversations are disabled in sdk settings, closing the request list screen!");
            }

            public void onSuccess(SupportSdkSettings supportSdkSettings) {
                RequestListPresenter.this.model.cacheSupportSdkSettings(supportSdkSettings);
                settingsCallback.onSettings(supportSdkSettings);
            }
        });
        this.callbacks.add(from);
        this.view.setLoading(true);
        this.model.loadSettings(from);
    }

    private void pullToRefresh(RequestListView requestListView) {
        requestListView.setSwipeRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: zendesk.support.requestlist.RequestListPresenter.8
            @Override // android.support.p001v4.widget.SwipeRefreshLayout.OnRefreshListener
            public void onRefresh() {
                RequestListPresenter.this.refresh();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onCreate(final boolean z) {
        itemClicks(this.view);
        pullToRefresh(this.view);
        navigationClicks(this.view);
        errorClicks(this.view);
        createTicketClicks(this.view);
        loadSettings(new SettingsCallback() { // from class: zendesk.support.requestlist.RequestListPresenter.1
            @Override // zendesk.support.requestlist.RequestListPresenter.SettingsCallback
            public void onSettings(@Nullable SupportSdkSettings supportSdkSettings) {
                if (supportSdkSettings == null || !supportSdkSettings.isConversationsEnabled()) {
                    RequestListPresenter.this.view.finish("Conversations are disabled in sdk settings, closing the request list screen!");
                    return;
                }
                RequestListPresenter.this.logoClicks(RequestListPresenter.this.view, supportSdkSettings.isShowReferrerLogoEnabled(), supportSdkSettings.getReferrerUrl());
                RequestListPresenter.this.loadItems(z, supportSdkSettings);
                if (z) {
                    RequestListPresenter.this.model.trackRequestListViewed();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onDestroy(boolean z) {
        if (!z) {
            this.model.cleanup();
        }
        this.callbacks.cancel();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void refresh() {
        loadSettings(new SettingsCallback() { // from class: zendesk.support.requestlist.RequestListPresenter.2
            @Override // zendesk.support.requestlist.RequestListPresenter.SettingsCallback
            public void onSettings(@Nullable SupportSdkSettings supportSdkSettings) {
                if (supportSdkSettings == null || !supportSdkSettings.isConversationsEnabled()) {
                    RequestListPresenter.this.view.finish("Conversations are disabled in sdk settings, closing the request list screen!");
                } else {
                    RequestListPresenter.this.loadItems(true, supportSdkSettings);
                }
            }
        });
    }
}
