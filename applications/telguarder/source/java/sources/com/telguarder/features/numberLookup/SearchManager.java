package com.telguarder.features.numberLookup;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.maps.model.LatLng;
import com.telguarder.C2083R;
import com.telguarder.features.advertisements.AdvertOrmLiteHelper;
import com.telguarder.features.numberLookup.PhoneNumberLookupManager;
import com.telguarder.helpers.backend.BackendApi;
import com.telguarder.helpers.backend.BackendCallbackListener;
import com.telguarder.helpers.backend.BackendRequest;
import com.telguarder.helpers.backend.BackendRequestCreator;
import com.telguarder.helpers.contact.ContactUtils;
import com.telguarder.helpers.p022ui.UiHelper;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/SearchManager.class */
public class SearchManager {
    private static SearchManager mInstance;

    /* renamed from: com.telguarder.features.numberLookup.SearchManager$1 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/SearchManager$1.class */
    public static /* synthetic */ class C22091 {

        /* renamed from: $SwitchMap$com$telguarder$features$numberLookup$PhoneNumberLookupManager$CallType */
        static final /* synthetic */ int[] f1288xc5c3d07c;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[PhoneNumberLookupManager.CallType.values().length];
            f1288xc5c3d07c = iArr;
            try {
                iArr[PhoneNumberLookupManager.CallType.OUTGOING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1288xc5c3d07c[PhoneNumberLookupManager.CallType.INCOMING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1288xc5c3d07c[PhoneNumberLookupManager.CallType.BLOCKED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/SearchManager$SearchQuery.class */
    public static class SearchQuery {
        public LatLng location;
        public String place;
        public String text;
        public ActorType type;
        public int pageSize = 10;
        public int page = 1;
        public SortType sortType = SortType.RELEVANCE;

        private SearchQuery() {
        }

        public static SearchQuery searchQueryOf(String str) {
            validateSearchKeyword(str);
            SearchQuery searchQuery = new SearchQuery();
            searchQuery.text = str;
            return searchQuery;
        }

        public static SearchQuery searchQueryOf(String str, ActorType actorType, int i) {
            validateSearchArguments(str, actorType, i);
            SearchQuery searchQuery = new SearchQuery();
            searchQuery.text = str;
            searchQuery.type = actorType;
            searchQuery.page = i;
            return searchQuery;
        }

        private static void validateSearchArguments(String str, ActorType actorType, int i) {
            validateSearchKeyword(str);
            if (actorType != null) {
                if (i < 1) {
                    throw new IllegalArgumentException("Invalid search results page!");
                }
                return;
            }
            throw new IllegalArgumentException("Invalid search actorType!");
        }

        private static void validateSearchKeyword(String str) {
            if (!TextUtils.isEmpty(str)) {
                return;
            }
            throw new IllegalArgumentException("Invalid search keyword!");
        }
    }

    private SearchManager() {
    }

    private void addGeneralParamsToBackendRequestFromSearchQuery(BackendRequest backendRequest, SearchQuery searchQuery) {
        backendRequest.putParam("text", searchQuery.text);
        if (!TextUtils.isEmpty(searchQuery.place)) {
            backendRequest.putParam(AdvertOrmLiteHelper.FIELD_ADVERT_PLACE, searchQuery.place);
        } else if (searchQuery.location == null) {
        } else {
            backendRequest.putParam("latitude", Double.valueOf(searchQuery.location.latitude));
            backendRequest.putParam("longitude", Double.valueOf(searchQuery.location.longitude));
        }
    }

    public static SearchManager getInstance() {
        SearchManager searchManager;
        synchronized (SearchManager.class) {
            try {
                if (mInstance == null) {
                    mInstance = new SearchManager();
                }
                searchManager = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return searchManager;
    }

    public void addLogoParamToRequest(BackendRequest backendRequest, boolean z, boolean z2, int i) {
        backendRequest.putParam("resizeLogo", z);
        backendRequest.putParam("keepProportions", z2);
        backendRequest.putParam("logoWidth", Integer.valueOf(i));
        backendRequest.putParam("logoHeight", Integer.valueOf(i));
    }

    public void getNumberLookupResultsForCallWidget(Context context, String str, BackendCallbackListener<NumberLookupResponse> backendCallbackListener, PhoneNumberLookupManager.CallType callType) {
        if (TextUtils.isEmpty(str) || !ContactUtils.isPhoneNumber(str)) {
            return;
        }
        int i = C22091.f1288xc5c3d07c[callType.ordinal()];
        BackendRequest backendRequestOfUrlAndMethodWithLogging = BackendRequestCreator.backendRequestOfUrlAndMethodWithLogging(context, BackendApi.API_NUMBER_LOOKUP_V2, BackendRequest.Method.POST, i != 1 ? i != 2 ? i != 3 ? "" : context.getString(C2083R.string.x_site_id_incoming) : context.getString(C2083R.string.x_site_id_incoming) : context.getString(C2083R.string.x_site_id_outgoing));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        backendRequestOfUrlAndMethodWithLogging.putParam("numbers", arrayList);
        addLogoParamToRequest(backendRequestOfUrlAndMethodWithLogging, true, true, UiHelper.dpToPixel(context, 48.0f));
        backendRequestOfUrlAndMethodWithLogging.executeImmediate(NumberLookupResponse.class, backendCallbackListener);
    }
}
