package zendesk.support;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import p081h.p451q.p455d.C10858a;
import zendesk.core.BaseStorage;
import zendesk.core.MemoryCache;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskRequestStorage.class */
public class ZendeskRequestStorage implements RequestStorage {
    public final Object lock = new Object();
    public final MemoryCache memoryCache;
    public final RequestMigrator requestMigrator;
    public final BaseStorage storage;

    static {
        new SimpleDateFormat("mm:ss", Locale.ENGLISH);
        TimeUnit.HOURS.toMillis(1L);
    }

    public ZendeskRequestStorage(BaseStorage baseStorage, RequestMigrator requestMigrator, MemoryCache memoryCache) {
        this.storage = baseStorage;
        this.requestMigrator = requestMigrator;
        this.memoryCache = memoryCache;
    }

    public static List<RequestData> updateRequests(List<RequestData> list, List<Request> list2) {
        HashMap hashMap = new HashMap(list.size() + list2.size());
        for (RequestData requestData : list) {
            hashMap.put(requestData.getId(), requestData);
        }
        for (Request request : list2) {
            if (hashMap.containsKey(request.getId())) {
                RequestData requestData2 = (RequestData) hashMap.get(request.getId());
                hashMap.put(requestData2.getId(), RequestData.create(requestData2.getId(), request.getCommentCount().intValue(), requestData2.getReadCommentCount()));
            } else {
                hashMap.put(request.getId(), RequestData.create(request));
            }
        }
        return new ArrayList(hashMap.values());
    }

    public final void checkForAndMigrateLegacyRequestData() {
        if (!((Boolean) this.memoryCache.getOrDefault("zendesk_request_storage_memory_cache_migrated_flag", false)).booleanValue()) {
            List<RequestData> legacyRequests = this.requestMigrator.getLegacyRequests();
            if (C10858a.m10400b((Collection) legacyRequests)) {
                storeRequestData(legacyRequests);
                this.requestMigrator.clearLegacyRequestStorage();
                this.memoryCache.put("zendesk_request_storage_memory_cache_migrated_flag", true);
            }
        }
    }

    @NonNull
    public List<RequestData> getRequestData() {
        RequestDataList requestDataList;
        checkForAndMigrateLegacyRequestData();
        synchronized (this.lock) {
            requestDataList = (RequestDataList) this.storage.get("zendesk_request_storage_request_data_list", RequestDataList.class);
        }
        return requestDataList != null ? requestDataList.requestDataList : new ArrayList<>(0);
    }

    public void storeRequestData(@Nullable List<RequestData> list) {
        if (list != null) {
            synchronized (this.lock) {
                this.storage.put("zendesk_request_storage_request_data_list", new RequestDataList(list));
                this.storage.put("zendesk_request_storage_requests_data_cache_time", Long.toString(System.currentTimeMillis()));
            }
        }
    }

    @Override // zendesk.support.RequestStorage
    public void updateRequestData(List<Request> list) {
        synchronized (this.lock) {
            storeRequestData(updateRequests(getRequestData(), list));
        }
    }
}
