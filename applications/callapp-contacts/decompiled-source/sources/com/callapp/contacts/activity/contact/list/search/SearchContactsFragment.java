package com.callapp.contacts.activity.contact.list.search;

import a.a.a.a.a.c;
import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.b.e;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.CallAppMoPubRecyclerAdapter;
import com.callapp.contacts.activity.calllog.AggregateCallLogData;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.favorites.FavoriteMemoryContactItem;
import com.callapp.contacts.activity.interfaces.ContactScrollEvent;
import com.callapp.contacts.activity.interfaces.KeypadLayoutChanges;
import com.callapp.contacts.activity.interfaces.KeypadParamsChanged;
import com.callapp.contacts.activity.interfaces.RefreshSearchListener;
import com.callapp.contacts.activity.interfaces.SearchContactsEvents;
import com.callapp.contacts.activity.interfaces.StickyHeaderSection;
import com.callapp.contacts.api.helper.placessearch.PlacesSearchLoadingEvents;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.FastCacheDataManager;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.LocationManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.permission.PermissionAllowedEvent;
import com.callapp.contacts.manager.permission.PermissionDeniedEvent;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.SectionData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.FastCacheData;
import com.callapp.contacts.recorder.recordertest.RecorderTestManager;
import com.callapp.contacts.recorder.recordertest.RecorderTestTutorial;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.widget.sticky.StickyPermissionView;
import com.callapp.contacts.widget.sticky.StickyPermissionViewExpanded;
import com.callapp.framework.phone.PhoneNumberUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.LatLng;
import com.pnikosis.materialishprogress.ProgressWheel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.a.z;
import kotlin.jvm.internal.ab;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchContactsFragment.class */
public class SearchContactsFragment extends BaseCallAppFragment<List> implements KeypadLayoutChanges, com.callapp.contacts.activity.interfaces.SearchContactsFilter {
    private static e<String, List<PlaceItemData>> g = new e<>(8);
    private static boolean r = true;
    private boolean A;
    private ViewGroup E;

    /* renamed from: c  reason: collision with root package name */
    private List<BaseAdapterItemData> f12775c;
    private TextView h;
    private View i;
    private View j;
    private int l;
    private int m;
    private boolean o;
    private Task s;
    private SearchContactsFilter t;
    private c u;
    private CallAppMoPubRecyclerAdapter v;
    private ContactsClickEvents w;
    private KeypadParamsChanged x;
    private ContactScrollEvent y;
    private SearchContactsEvents z;

    /* renamed from: a  reason: collision with root package name */
    private Map<Integer, SectionData> f12773a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private List<BaseAdapterItemData> f12774b = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private boolean f12776d = false;
    private String e = "";
    private List<PlaceItemData> f = new ArrayList();
    private AtomicInteger k = new AtomicInteger(0);
    private long n = 0;
    private boolean p = true;
    private boolean q = false;
    private final String B = Activities.getString(2131886808);
    private final String C = Activities.getString(2131886809);
    private boolean D = false;
    private PermissionDeniedEvent F = new PermissionDeniedEvent() { // from class: com.callapp.contacts.activity.contact.list.search._$$Lambda$SearchContactsFragment$R2qXqLAJc17pyph7HNWgzvkk9uw
        @Override // com.callapp.contacts.manager.permission.PermissionDeniedEvent
        public final void onPermissionDenied(PermissionManager.PermissionGroup permissionGroup) {
            SearchContactsFragment.this.b(permissionGroup);
        }
    };
    private PermissionAllowedEvent G = new PermissionAllowedEvent() { // from class: com.callapp.contacts.activity.contact.list.search._$$Lambda$SearchContactsFragment$21hK__GD5QWxsUeMNKKkYW3KQVk
        @Override // com.callapp.contacts.manager.permission.PermissionAllowedEvent
        public final void onPermissionAllowed(PermissionManager.PermissionGroup permissionGroup) {
            SearchContactsFragment.this.a(permissionGroup);
        }
    };
    private RefreshSearchListener H = new RefreshSearchListener() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.1
        @Override // com.callapp.contacts.activity.interfaces.RefreshSearchListener
        public final void a() {
            SearchContactsFragment.this.A = true;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment$5  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5.class */
    public class AnonymousClass5 implements LocationManager.LocationResult {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CharSequence f12783a;

        /* renamed from: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment$5$1  reason: invalid class name */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1.class */
        class AnonymousClass1 extends Task {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Location f12785a;

            AnonymousClass1(Location location) {
                this.f12785a = location;
            }

            final void a(List<PlaceItemData> list) {
                SearchContactsFragment.this.k.decrementAndGet();
                if (((SearchContactsAdapter) SearchContactsFragment.this.originalAdapter) == null || list == null || !StringUtils.b(SearchContactsFragment.this.z.getCurrentFilter(), AnonymousClass5.this.f12783a)) {
                    CLog.a(SearchContactsFragment.class, "Discarding old results for: " + ((Object) AnonymousClass5.this.f12783a));
                } else {
                    SearchContactsFragment.this.f = new ArrayList(list);
                    ArrayList arrayList = new ArrayList(SearchContactsFragment.this.f.size());
                    SearchContactsFragment.this.c(arrayList);
                    SearchContactsFragment.this.d(arrayList);
                }
                SearchContactsFragment.this.a();
            }

            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (this.f12785a == null || !StringUtils.b(AnonymousClass5.this.f12783a)) {
                    SearchContactsFragment.this.k.decrementAndGet();
                    SearchContactsFragment.this.a();
                    return;
                }
                List<PlaceItemData> list = (List) SearchContactsFragment.g.get(AnonymousClass5.this.f12783a.toString());
                if (CollectionUtils.a(list)) {
                    new Object() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.5.1.2
                        public static void a(PlacesSearchLoadingEvents placesSearchLoadingEvents) {
                            placesSearchLoadingEvents.a();
                        }
                    };
                    AnonymousClass5.this.f12783a.toString();
                    new LatLng(this.f12785a.getLatitude(), this.f12785a.getLongitude());
                    AnonymousClass2.a(new PlacesSearchLoadingEvents() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.5.1.1
                        @Override // com.callapp.contacts.api.helper.placessearch.PlacesSearchLoadingEvents
                        public final void a() {
                            ArrayList arrayList = new ArrayList();
                            if (CollectionUtils.b((Collection) null)) {
                                throw new NullPointerException();
                            }
                            SearchContactsFragment.g.put(AnonymousClass5.this.f12783a.toString(), arrayList);
                            AnonymousClass1.this.a(arrayList);
                        }
                    });
                    return;
                }
                a(list);
            }
        }

        AnonymousClass5(CharSequence charSequence) {
            this.f12783a = charSequence;
        }

        @Override // com.callapp.contacts.manager.LocationManager.LocationResult
        public final void a(Location location) {
            if (SearchContactsFragment.this.s != null) {
                SearchContactsFragment.this.s.cancel();
            }
            SearchContactsFragment.this.s = new AnonymousClass1(location).execute();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment$9  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchContactsFragment$9.class */
    public static /* synthetic */ class AnonymousClass9 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12795a;

        static {
            int[] iArr = new int[PermissionManager.PermissionGroup.values().length];
            f12795a = iArr;
            try {
                iArr[PermissionManager.PermissionGroup.LOCATION.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter.class */
    public class SearchContactsFilter extends Filter {

        /* renamed from: b  reason: collision with root package name */
        private ContactSearcher f12797b;

        SearchContactsFilter(ContactSearcher contactSearcher) {
            this.f12797b = contactSearcher;
        }

        @Override // android.widget.Filter
        protected Filter.FilterResults performFiltering(CharSequence charSequence) {
            Filter.FilterResults filterResults = new Filter.FilterResults();
            ArrayList arrayList = new ArrayList(SearchContactsFragment.this.f12774b);
            ArrayList arrayList2 = new ArrayList();
            if (StringUtils.a(charSequence)) {
                SearchContactsFragment.e(arrayList);
                arrayList2.addAll(arrayList);
                this.f12797b.a();
            } else {
                List list = null;
                if (!SearchContactsFragment.this.f12776d) {
                    SearchContactsFragment.this.f12775c = null;
                }
                if (StringUtils.a((CharSequence) SearchContactsFragment.this.e)) {
                    this.f12797b.a();
                }
                final ContactSearcher contactSearcher = this.f12797b;
                final String search = charSequence.toString();
                final String str = SearchContactsFragment.this.e;
                final List allContacts = SearchContactsFragment.this.f12774b;
                final List list2 = SearchContactsFragment.this.f12775c;
                p.d(search, "search");
                p.d(allContacts, "allContacts");
                final ab.e eVar = new ab.e();
                eVar.f36780a = null;
                MultiTaskRunner multiTaskRunner = new MultiTaskRunner();
                multiTaskRunner.a(new Task() { // from class: com.callapp.contacts.activity.contact.list.search.ContactSearcher$search$1
                    /* JADX WARN: Type inference failed for: r1v2, types: [T, android.util.Pair] */
                    @Override // com.callapp.contacts.manager.task.Task
                    public final void doTask() {
                        List list3 = list2;
                        String str2 = list3 == null || list3.isEmpty() ? "" : str;
                        ArrayList arrayList3 = z.f36608a;
                        List list4 = list2;
                        if (list4 != null) {
                            List list5 = list4;
                            ArrayList arrayList4 = new ArrayList();
                            for (Object obj : list5) {
                                BaseAdapterItemData baseAdapterItemData = (BaseAdapterItemData) obj;
                                if ((baseAdapterItemData instanceof StickyHeaderSection) && ((StickyHeaderSection) baseAdapterItemData).getSectionId() == 0) {
                                    arrayList4.add(obj);
                                }
                            }
                            arrayList3 = arrayList4;
                        }
                        ab.e eVar2 = eVar;
                        String str3 = search;
                        List list6 = allContacts;
                        ArrayList arrayList5 = new ArrayList();
                        for (Object obj2 : list6) {
                            BaseAdapterItemData baseAdapterItemData2 = (BaseAdapterItemData) obj2;
                            if ((baseAdapterItemData2 instanceof StickyHeaderSection) && ((StickyHeaderSection) baseAdapterItemData2).getSectionId() == 0) {
                                arrayList5.add(obj2);
                            }
                        }
                        eVar2.f36780a = T9Helper.a(str3, str2, arrayList5, arrayList3);
                    }
                });
                multiTaskRunner.a(new Task() { // from class: com.callapp.contacts.activity.contact.list.search.ContactSearcher$search$2
                    @Override // com.callapp.contacts.manager.task.Task
                    public final void doTask() {
                        String b2;
                        ArrayList arrayList3;
                        boolean a2;
                        b2 = ContactSearcher.b(search);
                        ContactSearcher contactSearcher2 = ContactSearcher.this;
                        if (b2.length() == 0) {
                            arrayList3 = new ArrayList();
                        } else {
                            a2 = ContactSearcher.this.a(b2);
                            arrayList3 = a2 ? ContactSearcher.this.a(b2, true) : ContactSearcher.this.a(b2, true, true);
                        }
                        contactSearcher2.f12721a = arrayList3;
                    }
                });
                multiTaskRunner.a();
                contactSearcher.f12722b = search;
                List<? extends BaseAdapterItemData> list3 = contactSearcher.f12721a;
                Pair pair = (Pair) eVar.f36780a;
                if (pair != null) {
                    list = (List) pair.second;
                }
                ArrayList arrayList3 = new ArrayList();
                if (list != null) {
                    arrayList3.addAll(list);
                }
                arrayList3.addAll(list3);
                Pair pair2 = new Pair(Boolean.valueOf(!arrayList3.isEmpty()), arrayList3);
                arrayList2.addAll((Collection) pair2.second);
                if (!((Boolean) pair2.first).booleanValue()) {
                    SearchContactsFragment.e(arrayList);
                }
            }
            filterResults.values = arrayList2;
            filterResults.count = arrayList2.size();
            return filterResults;
        }

        @Override // android.widget.Filter
        protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            SearchContactsFragment.this.f12775c = filterResults.values == null ? new ArrayList() : new ArrayList((List) filterResults.values);
            SearchContactsFragment.this.e = charSequence != null ? charSequence.toString() : "";
            List list = (List) filterResults.values;
            List list2 = list;
            if (list == null) {
                list2 = new ArrayList();
            }
            List list3 = (List) SearchContactsFragment.g.get(SearchContactsFragment.this.z.getCurrentFilter());
            if (CollectionUtils.b(list3)) {
                list2.addAll(list3);
            } else {
                PermissionManager.get();
                if (!PermissionManager.a("android.permission.ACCESS_COARSE_LOCATION")) {
                    PermissionManager.get();
                    if (!PermissionManager.a("android.permission.ACCESS_FINE_LOCATION")) {
                        if (CollectionUtils.a(list2)) {
                            if (SearchContactsFragment.this.E.getChildCount() > 0) {
                                SearchContactsFragment.this.E.getChildAt(0).setVisibility(8);
                                SearchContactsFragment.this.E.getChildAt(1).setVisibility(0);
                            }
                        } else if (SearchContactsFragment.this.E.getChildCount() > 0) {
                            SearchContactsFragment.this.E.getChildAt(0).setVisibility(0);
                            SearchContactsFragment.this.E.getChildAt(1).setVisibility(8);
                        }
                    }
                }
            }
            if (CollectionUtils.a(list2) && charSequence != null && PhoneNumberUtils.a(charSequence.toString())) {
                AddEntryItemData addEntryItemData = new AddEntryItemData(charSequence.toString());
                addEntryItemData.setSectionId(-1);
                list2.add(addEntryItemData);
                SearchForItemData searchForItemData = new SearchForItemData(charSequence.toString());
                searchForItemData.setSectionId(-1);
                list2.add(searchForItemData);
            }
            SearchContactsFragment.this.setData(list2);
            SearchContactsFragment.this.a();
            if (SearchContactsFragment.this.recyclerAdapter != null && !AdUtils.a()) {
                if (StringUtils.b((CharSequence) SearchContactsFragment.this.z.getCurrentFilter())) {
                    SearchContactsFragment.this.recyclerAdapter.clearAds();
                } else {
                    SearchContactsFragment.this.recyclerAdapter.b();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(AggregateCallLogData aggregateCallLogData, AggregateCallLogData aggregateCallLogData2) {
        return aggregateCallLogData2.getTotalInteractionCount() - aggregateCallLogData.getTotalInteractionCount();
    }

    private static void a(SpannableString spannableString, String str, Integer num) {
        int indexOf = spannableString.toString().indexOf(str);
        int length = str.length() + indexOf;
        if (indexOf >= 0 && length <= spannableString.length()) {
            spannableString.setSpan(new TypefaceSpan("sans-serif-medium"), indexOf, length, 33);
            spannableString.setSpan(new StyleSpan(1), indexOf, length, 33);
            if (num != null) {
                spannableString.setSpan(new ForegroundColorSpan(num.intValue()), indexOf, length, 18);
            }
        }
    }

    static /* synthetic */ void a(SearchContactsFragment searchContactsFragment, CharSequence charSequence) {
        searchContactsFragment.f.clear();
        searchContactsFragment.a(new AnonymousClass5(charSequence));
    }

    private void a(final LocationManager.LocationResult locationResult) {
        LocationManager.get().a(new LocationManager.LocationResult() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.4
            @Override // com.callapp.contacts.manager.LocationManager.LocationResult
            public final void a(Location location) {
                LocationManager.LocationResult locationResult2 = locationResult;
                if (locationResult2 != null) {
                    locationResult2.a(location);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(PermissionManager.PermissionGroup permissionGroup) {
        this.E.removeAllViews();
        this.E.setVisibility(8);
        if (AnonymousClass9.f12795a[permissionGroup.ordinal()] == 1) {
            this.D = true;
            refreshData();
            AnalyticsManager.get().a(Constants.PERMISSIONS, "location - permission", "granted");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(PermissionManager.PermissionGroup permissionGroup) {
        this.E.removeAllViews();
        this.E.setVisibility(8);
        if (AnonymousClass9.f12795a[permissionGroup.ordinal()] == 1) {
            this.D = true;
            AnalyticsManager.get().a(Constants.PERMISSIONS, "location - permission", com.mopub.common.Constants.TAS_DENIED);
        }
    }

    private void b(List<BaseAdapterItemData> list) {
        HashSet hashSet = new HashSet();
        Map<String, FastCacheData> allFastCacheDataWithName = FastCacheDataManager.getAllFastCacheDataWithName();
        Stack stack = (Stack) CallLogUtils.getCallLog().clone();
        Hashtable hashtable = new Hashtable();
        Hashtable hashtable2 = new Hashtable();
        ArrayList<AggregateCallLogData> arrayList = new ArrayList();
        HashSet hashSet2 = new HashSet();
        while (!stack.isEmpty()) {
            AggregateCallLogData aggregateCallLogData = (AggregateCallLogData) stack.pop();
            if (!CallLogUtils.b(aggregateCallLogData.getPhone().getRawNumber())) {
                String a2 = aggregateCallLogData.f11101c.a();
                if (StringUtils.b((CharSequence) a2)) {
                    if (!hashtable.containsKey(a2)) {
                        hashtable.put(a2, aggregateCallLogData);
                    }
                    int aggregateSize = aggregateCallLogData.getAggregateSize();
                    if (hashtable2.containsKey(a2)) {
                        hashtable2.put(a2, Integer.valueOf(((Integer) hashtable2.get(a2)).intValue() + aggregateSize));
                    } else {
                        hashtable2.put(a2, Integer.valueOf(aggregateSize));
                    }
                }
                if (!hashSet.contains(aggregateCallLogData.getPhone())) {
                    hashSet.add(aggregateCallLogData.getPhone());
                    AggregateCallLogData aggregateCallLogData2 = new AggregateCallLogData(aggregateCallLogData);
                    if (aggregateCallLogData.contactId > 0) {
                        hashSet2.add(Long.valueOf(aggregateCallLogData.contactId));
                    }
                    arrayList.add(aggregateCallLogData2);
                }
            }
        }
        Map<Long, MemoryContactItem> a3 = ContactUtils.a(hashSet2);
        for (AggregateCallLogData aggregateCallLogData3 : arrayList) {
            String a4 = T9Helper.a((CharSequence) aggregateCallLogData3.getPhone().getRawNumber());
            String a5 = aggregateCallLogData3.f11101c.a();
            if (StringUtils.b((CharSequence) a5)) {
                aggregateCallLogData3.setTotalInteractionCount(((Integer) hashtable2.get(a5)).intValue());
            }
            if (StringUtils.a((CharSequence) aggregateCallLogData3.displayName)) {
                if (aggregateCallLogData3.contactId > 0) {
                    MemoryContactItem memoryContactItem = a3.get(Long.valueOf(aggregateCallLogData3.contactId));
                    if (memoryContactItem != null) {
                        aggregateCallLogData3.displayName = RegexUtils.m(memoryContactItem.displayName.toLowerCase());
                    }
                } else if (new ContactLoader().addFields(ContactField.deviceId).setDisableContactEvents().addSyncLoader(new DeviceIdLoader()).load(aggregateCallLogData3.getPhone()).getDeviceId() > 0) {
                    MemoryContactItem memoryContactItem2 = a3.get(Long.valueOf(aggregateCallLogData3.contactId));
                    if (memoryContactItem2 != null) {
                        aggregateCallLogData3.displayName = RegexUtils.m(memoryContactItem2.displayName.toLowerCase());
                    }
                } else {
                    FastCacheData fastCacheData = allFastCacheDataWithName.get(ContactData.generateId(aggregateCallLogData3.getPhone(), aggregateCallLogData3.contactId));
                    if (fastCacheData != null && StringUtils.b((CharSequence) fastCacheData.getFullName())) {
                        aggregateCallLogData3.displayName = RegexUtils.m(fastCacheData.getFullName().toLowerCase());
                    }
                }
                if (StringUtils.a((CharSequence) aggregateCallLogData3.displayName)) {
                    aggregateCallLogData3.displayName = a4;
                }
            }
            ContactUtils.a(aggregateCallLogData3);
            aggregateCallLogData3.normalNumbers.add(a4);
            aggregateCallLogData3.setSectionId(0);
            if (this.originalAdapter != null) {
                this.originalAdapter.a((BaseAdapterItemData) aggregateCallLogData3, false);
            }
        }
        Collections.sort(arrayList, _$$Lambda$SearchContactsFragment$HCba0tKoch4tHGwbmF55D7HVwHg.INSTANCE);
        list.addAll(arrayList);
        for (FavoriteMemoryContactItem favoriteMemoryContactItem : ContactUtils.getFavoriteContacts()) {
            if (!hashSet.contains(favoriteMemoryContactItem.getPhone())) {
                if (StringUtils.a((CharSequence) favoriteMemoryContactItem.nameT9)) {
                    ContactUtils.a(favoriteMemoryContactItem);
                }
                favoriteMemoryContactItem.setSectionId(0);
                list.add(favoriteMemoryContactItem);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(List<BaseViewTypeData> list) {
        if (CollectionUtils.b(this.f)) {
            for (PlaceItemData placeItemData : this.f) {
                placeItemData.setSectionId(3);
                list.add(placeItemData);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        final ArrayList arrayList = new ArrayList();
        b(arrayList);
        if (this.originalAdapter != null) {
            this.originalAdapter.c();
        }
        this.f12774b = arrayList;
        this.f12775c = null;
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.search._$$Lambda$SearchContactsFragment$HoxYCN_cRWv1ifD2UAdWgopfVIA
            @Override // java.lang.Runnable
            public final void run() {
                SearchContactsFragment.this.f(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(List<BaseViewTypeData> list) {
        List list2 = (List) this.data;
        if (CollectionUtils.b(list2)) {
            for (int size = list2.size() - 1; size >= 0 && ((StickyHeaderSection) list2.get(size)).getSectionId() == 3; size--) {
                list2.remove(size);
            }
        }
        if (CollectionUtils.b(list)) {
            ((List) this.data).addAll(list);
        }
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.6
            @Override // java.lang.Runnable
            public void run() {
                SearchContactsFragment.this.originalAdapter.setData(SearchContactsFragment.this.data);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(List<BaseAdapterItemData> list) {
        if (CollectionUtils.b(list)) {
            for (BaseAdapterItemData baseAdapterItemData : list) {
                baseAdapterItemData.textHighlights.clear();
                baseAdapterItemData.numberMatchIndexEnd = -1;
                baseAdapterItemData.numberMatchIndexStart = -1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(List list) {
        if (StringUtils.a((CharSequence) this.z.getCurrentFilter())) {
            setData(list);
        } else {
            this.f12775c = null;
            a(this.z.getCurrentFilter(), false, false, this.o);
        }
        this.f12776d = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLocationPermissionDenied() {
        PermissionManager.get();
        if (PermissionManager.a("android.permission.ACCESS_FINE_LOCATION")) {
            return false;
        }
        PermissionManager.get();
        return !PermissionManager.a("android.permission.ACCESS_COARSE_LOCATION");
    }

    public final void a() {
        final boolean a2 = PhoneNumberUtils.a(this.z.getCurrentFilter());
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.7
            @Override // java.lang.Runnable
            public void run() {
                if (StringUtils.a((CharSequence) SearchContactsFragment.this.z.getCurrentFilter())) {
                    SearchContactsFragment.this.h.setVisibility(8);
                    SearchContactsFragment.this.j.setVisibility(8);
                } else if (SearchContactsFragment.this.recyclerAdapter != null) {
                    SearchContactsFragment.this.p = false;
                    SearchContactsFragment.this.i.setVisibility(8);
                    int size = SearchContactsFragment.this.data != null ? ((List) SearchContactsFragment.this.data).size() : 0;
                    StringBuilder sb = new StringBuilder("Filtering: ");
                    sb.append(SearchContactsFragment.this.z.getCurrentFilter());
                    sb.append(", Adapter size: ");
                    sb.append(size);
                    sb.append(", Loading places: ");
                    sb.append(SearchContactsFragment.this.k.get());
                    CLog.a("SearchContactsFragment");
                    if (size > 0) {
                        SearchContactsFragment.this.h.setVisibility(8);
                        SearchContactsFragment.this.j.setVisibility(8);
                        return;
                    }
                    if (SearchContactsFragment.this.k.get() <= 0 || SearchContactsFragment.this.isLocationPermissionDenied()) {
                        SearchContactsFragment.this.j.setVisibility(8);
                    } else {
                        SearchContactsFragment.this.j.setVisibility(0);
                    }
                    if (a2 || (SearchContactsFragment.this.k.get() != 0 && !SearchContactsFragment.this.isLocationPermissionDenied())) {
                        SearchContactsFragment.this.h.setVisibility(8);
                        return;
                    }
                    SearchContactsFragment.this.h.setVisibility(0);
                    TextView textView = SearchContactsFragment.this.h;
                    SearchContactsFragment searchContactsFragment = SearchContactsFragment.this;
                    textView.setText(searchContactsFragment.getString(2131886920, searchContactsFragment.z.getCurrentFilter()));
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchContactsFilter
    public final void a(final String str, boolean z, final boolean z2, boolean z3) {
        this.o = z3;
        if (!PhoneNumberUtils.a(str) && !z3 && CallAppRemoteConfigManager.get().c("searchNearbyEnabled") && StringUtils.b((CharSequence) str) && (z2 || str.length() >= 4)) {
            this.k.incrementAndGet();
            if (z2) {
                a();
            }
            this.n = new Date().getTime();
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.8
                @Override // java.lang.Runnable
                public void run() {
                    if (z2 || new Date().getTime() - SearchContactsFragment.this.n >= 750) {
                        if (CollectionUtils.a((List) SearchContactsFragment.g.get(str))) {
                            SearchContactsFragment.a(SearchContactsFragment.this, (CharSequence) str);
                        } else {
                            SearchContactsFragment.this.k.decrementAndGet();
                        }
                    } else if (SearchContactsFragment.this.k.decrementAndGet() == 0) {
                        SearchContactsFragment.this.a();
                    }
                }
            }, 750L);
        }
        if (this.recyclerView != null) {
            getFilter().filter(str);
            if (z) {
                this.recyclerView.b(0);
            }
        }
        if (StringUtils.a((CharSequence) str) && this.recyclerAdapter != null) {
            d((List<BaseViewTypeData>) null);
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.KeypadLayoutChanges
    public final void b() {
        if (Activities.isOrientationLandscape() && this.recyclerAdapter != null && this.recyclerAdapter.isDataReady()) {
            this.recyclerView.b(this.u);
            this.u = new c(this.v);
            this.recyclerView.a(this.u, 1);
            this.originalAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public String getAdUnitIdsConfiguration() {
        return null;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getDataChangeOrigin() {
        return 5;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public BaseCallAppFragment.EmptyViewData getEmptyViewData() {
        return null;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public String getExperimentRemoteConfigName() {
        return null;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.t == null) {
            this.t = new SearchContactsFilter(new ContactSearcher());
        }
        return this.t;
    }

    @Override // com.callapp.contacts.activity.interfaces.FragmentDataType
    public int[] getFragmentType() {
        return new int[]{EventBusManager.CallAppDataType.CONTACTS.ordinal(), EventBusManager.CallAppDataType.RECENT_CALLS.ordinal()};
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getLayoutResId() {
        return 2131558674;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public /* synthetic */ CallAppMoPubRecyclerAdapter getNewAdapter(List list) {
        e<String, List<PlaceItemData>> eVar;
        this.originalAdapter = new SearchContactsAdapter(getScrollEvents(), list, this.f12773a, this.w);
        if (this.q && StringUtils.b((CharSequence) this.z.getCurrentFilter()) && (eVar = g) != null) {
            this.q = false;
            List<PlaceItemData> list2 = eVar.get(this.z.getCurrentFilter());
            if (CollectionUtils.b(list2)) {
                this.f = list2;
                ArrayList arrayList = new ArrayList(this.f.size());
                c(arrayList);
                d(arrayList);
            }
        }
        CallAppMoPubRecyclerAdapter a2 = AdUtils.a(getActivity(), ListsUtils.a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
        this.v = a2;
        this.u = new c(a2);
        this.recyclerView.a(this.u, 1);
        return this.v;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public void initEmptyView() {
        SpannableString spannableString;
        View view = getView();
        int color = ThemeUtils.getColor(2131099686);
        View findViewById = view.findViewById(2131362685);
        this.i = findViewById;
        findViewById.setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 1 || SearchContactsFragment.this.y == null) {
                    return false;
                }
                Activities.b(SearchContactsFragment.this.i);
                SearchContactsFragment.this.y.m();
                return false;
            }
        });
        this.i.setBackgroundColor(color);
        TextView textView = (TextView) this.i.findViewById(2131362699);
        ImageView imageView = (ImageView) this.i.findViewById(2131362696);
        boolean z = this.p & (!this.z.shouldSkipEmptyView());
        this.p = z;
        if (!z) {
            this.i.setVisibility(8);
        }
        if (RecorderTestManager.get().isInRecorderTestMode()) {
            new RecorderTestTutorial().a(getChildFragmentManager(), "RecorderTestTutorial");
        }
        if (textView != null) {
            if (RecorderTestManager.get().isInRecorderTestMode()) {
                spannableString = Activities.getText(2131887506);
            } else {
                SpannableString spannableString2 = new SpannableString(Activities.a(2131886811, getString(2131886810)));
                spannableString2.setSpan(new ForegroundColorSpan(this.m), 0, spannableString2.length(), 18);
                a(spannableString2, getString(2131886810), Integer.valueOf(this.l));
                a(spannableString2, this.B, null);
                a(spannableString2, this.C, null);
                spannableString = spannableString2;
            }
            textView.setTextColor(ThemeUtils.getColor(2131100140));
            textView.setText(spannableString);
        }
        if (imageView != null) {
            imageView.setImageResource(RecorderTestManager.get().isInRecorderTestMode() ? 2131230902 : 2131231870);
        }
        this.j = view.findViewById(2131363221);
        int color2 = ThemeUtils.getColor(2131099784);
        ProgressWheel progressWheel = (ProgressWheel) view.findViewById(2131363585);
        TextView textView2 = (TextView) view.findViewById(2131363222);
        progressWheel.setBarColor(color2);
        textView2.setText(Activities.getString(2131887877));
        textView2.setTextColor(color2);
        TextView textView3 = (TextView) view.findViewById(2131363371);
        this.h = textView3;
        textView3.setTextColor(this.m);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (getActivity() instanceof ContactsClickEvents) {
            this.w = (ContactsClickEvents) getActivity();
            if (getActivity() instanceof KeypadParamsChanged) {
                this.x = (KeypadParamsChanged) getActivity();
                if (getActivity() instanceof ContactScrollEvent) {
                    this.y = (ContactScrollEvent) getActivity();
                    if (getActivity() instanceof SearchContactsEvents) {
                        SearchContactsEvents searchContactsEvents = (SearchContactsEvents) getActivity();
                        this.z = searchContactsEvents;
                        searchContactsEvents.registerFilteredEvents(this);
                        return;
                    }
                    throw new IllegalStateException("Parent activity must implement SearchContactsEvents");
                }
                throw new IllegalStateException("Parent activity must implement ContactScrollEvent");
            }
            throw new IllegalStateException("Paren activity must implement KeypadParamsChanged");
        }
        throw new IllegalStateException("Parent activity must implement ContactsClickEvents");
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        r = true;
        AnalyticsManager.get().b(Constants.SEARCH_SCREEN);
        a((LocationManager.LocationResult) null);
        this.l = ThemeUtils.getColor(2131099784);
        this.m = ThemeUtils.getColor(2131100108);
        if (bundle != null) {
            this.q = bundle.getBoolean("shouldPutPlacesIntoAdapter", false);
            this.o = bundle.getBoolean("lastIsFilterFromKeypad", false);
            this.e = bundle.getString("prevFilteredConstraint", "");
            this.p = bundle.getBoolean("KEY_SHOULD_SHOW_EMPTY_VIEW", false);
        }
        this.f12773a.put(0, new SectionData(Activities.getString(2131887861), this.l));
        this.f12773a.put(1, new SectionData(Activities.getString(2131887863), this.m));
        this.f12773a.put(2, new SectionData(Activities.getString(2131887869), this.l));
        this.f12773a.put(3, new SectionData(Activities.getString(2131887882), this.m));
        EventBusManager.f14368a.a(RefreshSearchListener.f12962b, this.H);
        EventBusManager.f14368a.a(PermissionDeniedEvent.f15115a, this.F);
        EventBusManager.f14368a.a(PermissionAllowedEvent.f15114a, this.G);
        if (isLocationPermissionDenied()) {
            Prefs.bE.a(4);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.SEARCH_SCREEN);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        EventBusManager.f14368a.b(RefreshSearchListener.f12962b, this.H);
        EventBusManager.f14368a.b(PermissionDeniedEvent.f15115a, this.F);
        EventBusManager.f14368a.b(PermissionAllowedEvent.f15114a, this.G);
        Task task = this.s;
        if (task != null) {
            task.cancel();
        }
        LocationManager locationManager = LocationManager.get();
        if (!(locationManager.f14875a == null || locationManager.f14876b == null)) {
            locationManager.f14875a.a(locationManager.f14876b);
        }
        e(this.f12774b);
        if (r) {
            g.evictAll();
        }
        ViewGroup viewGroup = this.E;
        if (viewGroup != null && viewGroup.getChildCount() > 0) {
            Prefs.bE.set(0);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        this.z.unRegisterFilteredEvents(this);
        super.onDetach();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.x.b(this);
        super.onPause();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.x.a(this);
        if (this.A) {
            this.e = "";
            this.A = false;
            refreshData();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        ViewGroup viewGroup;
        super.onViewCreated(view, bundle);
        refreshData();
        this.recyclerView.setHasFixedSize(true);
        this.recyclerView.a(new RecyclerView.m() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.2

            /* renamed from: a  reason: collision with root package name */
            int f12778a = 0;

            @Override // androidx.recyclerview.widget.RecyclerView.m
            public final void a(RecyclerView recyclerView, int i) {
                super.a(recyclerView, i);
                if (!(SearchContactsFragment.this.y == null || i != 1 || this.f12778a == 1)) {
                    Activities.b(recyclerView);
                    SearchContactsFragment.this.y.m();
                }
                this.f12778a = i;
            }
        });
        View findViewById = view.findViewById(2131363758);
        this.E = (ViewGroup) view.findViewById(2131363992);
        findViewById.setBackgroundColor(ThemeUtils.getColor(2131099686));
        initEmptyView();
        if (isLocationPermissionDenied() && Prefs.bE.get().intValue() == 4 && !this.D && (viewGroup = this.E) != null && viewGroup.getChildCount() == 0) {
            this.E.removeAllViews();
            StickyPermissionView stickyPermissionView = new StickyPermissionView(getActivity());
            StickyPermissionViewExpanded stickyPermissionViewExpanded = new StickyPermissionViewExpanded(getActivity());
            stickyPermissionView.setPermissionToRequest(PermissionManager.get(), PermissionManager.PermissionGroup.LOCATION);
            stickyPermissionViewExpanded.setPermissionToRequest(PermissionManager.get(), PermissionManager.PermissionGroup.LOCATION);
            this.E.addView(stickyPermissionView);
            this.E.addView(stickyPermissionViewExpanded);
            this.E.setVisibility(0);
            this.D = true;
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void refreshData() {
        this.f12776d = false;
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.search._$$Lambda$SearchContactsFragment$SlA90MidhMceno8BlhY6YMYAyTA
            @Override // java.lang.Runnable
            public final void run() {
                SearchContactsFragment.this.d();
            }
        });
    }
}
