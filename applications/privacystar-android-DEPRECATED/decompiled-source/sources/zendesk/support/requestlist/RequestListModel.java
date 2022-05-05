package zendesk.support.requestlist;

import android.support.annotation.Nullable;
import com.zendesk.func.ZFunc1;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.CollectionUtils;
import java.util.List;
import zendesk.core.MemoryCache;
import zendesk.support.AggregatedCallback;
import zendesk.support.SupportBlipsProvider;
import zendesk.support.SupportSdkSettings;
import zendesk.support.SupportSettingsProvider;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListModel.class */
public class RequestListModel {
    static final String REQUEST_LIST_ITEMS_CACHE_KEY = "request_list_items";
    static final String SETTINGS_CACHE_KEY = "request_list_settings";
    private final SupportBlipsProvider blipsProvider;
    private final MemoryCache cache;
    private final RequestInfoDataSource requestInfoDataSource;
    private final SupportSettingsProvider settingsProvider;
    private final AggregatedCallback<SupportSdkSettings> settingsAggregatedCallback = new AggregatedCallback<>();
    private final ZFunc1<RequestInfo, RequestListItem> mapper = new ZFunc1<RequestInfo, RequestListItem>() { // from class: zendesk.support.requestlist.RequestListModel.2
        public RequestListItem apply(RequestInfo requestInfo) {
            return new RequestListItem(requestInfo);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestListModel(RequestInfoDataSource requestInfoDataSource, MemoryCache memoryCache, SupportBlipsProvider supportBlipsProvider, SupportSettingsProvider supportSettingsProvider) {
        this.requestInfoDataSource = requestInfoDataSource;
        this.cache = memoryCache;
        this.blipsProvider = supportBlipsProvider;
        this.settingsProvider = supportSettingsProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<RequestInfo> filterClosedRequests(List<RequestInfo> list, boolean z) {
        return z ? list : CollectionUtils.filter(list, new ZFunc1<RequestInfo, Boolean>() { // from class: zendesk.support.requestlist.RequestListModel.3
            public Boolean apply(RequestInfo requestInfo) {
                return Boolean.valueOf(!requestInfo.isClosed());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cacheSupportSdkSettings(SupportSdkSettings supportSdkSettings) {
        this.cache.put(SETTINGS_CACHE_KEY, supportSdkSettings);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cleanup() {
        this.cache.remove(SETTINGS_CACHE_KEY);
        this.cache.remove(REQUEST_LIST_ITEMS_CACHE_KEY);
    }

    @Nullable
    List<RequestListItem> getCachedRequestInfos() {
        return (List) this.cache.get(REQUEST_LIST_ITEMS_CACHE_KEY);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public SupportSdkSettings getCachedSettings() {
        return (SupportSdkSettings) this.cache.get(SETTINGS_CACHE_KEY);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadItems(boolean z, final SupportSdkSettings supportSdkSettings, final ZendeskCallback<List<RequestListItem>> zendeskCallback) {
        if (z || getCachedRequestInfos() == null) {
            this.requestInfoDataSource.load(new ZendeskCallback<List<RequestInfo>>() { // from class: zendesk.support.requestlist.RequestListModel.1
                @Override // com.zendesk.service.ZendeskCallback
                public void onError(ErrorResponse errorResponse) {
                    zendeskCallback.onError(errorResponse);
                }

                public void onSuccess(List<RequestInfo> list) {
                    List map = CollectionUtils.map(RequestListModel.this.filterClosedRequests(list, supportSdkSettings.isShowClosedRequests()), RequestListModel.this.mapper);
                    RequestListModel.this.cache.put(RequestListModel.REQUEST_LIST_ITEMS_CACHE_KEY, map);
                    zendeskCallback.onSuccess(map);
                }
            });
        } else {
            zendeskCallback.onSuccess(getCachedRequestInfos());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadSettings(ZendeskCallback<SupportSdkSettings> zendeskCallback) {
        if (this.settingsAggregatedCallback.add(zendeskCallback)) {
            this.settingsProvider.getSettings(this.settingsAggregatedCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void trackRequestListViewed() {
        this.blipsProvider.requestListViewed();
    }
}
