package com.callapp.contacts.activity.contact.list.search;

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
import androidx.p023b.C0434e;
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
import kotlin.jvm.internal.C18490ab;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import p001a.p002a.p003a.p004a.p005a.C0004c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchContactsFragment.class */
public class SearchContactsFragment extends BaseCallAppFragment<List> implements KeypadLayoutChanges, com.callapp.contacts.activity.interfaces.SearchContactsFilter {

    /* renamed from: g */
    private static C0434e<String, List<PlaceItemData>> f22818g = new C0434e<>(8);

    /* renamed from: r */
    private static boolean f22819r = true;

    /* renamed from: A */
    private boolean f22820A;

    /* renamed from: E */
    private ViewGroup f22824E;

    /* renamed from: c */
    private List<BaseAdapterItemData> f22830c;

    /* renamed from: h */
    private TextView f22834h;

    /* renamed from: i */
    private View f22835i;

    /* renamed from: j */
    private View f22836j;

    /* renamed from: l */
    private int f22838l;

    /* renamed from: m */
    private int f22839m;

    /* renamed from: o */
    private boolean f22841o;

    /* renamed from: s */
    private Task f22844s;

    /* renamed from: t */
    private SearchContactsFilter f22845t;

    /* renamed from: u */
    private C0004c f22846u;

    /* renamed from: v */
    private CallAppMoPubRecyclerAdapter f22847v;

    /* renamed from: w */
    private ContactsClickEvents f22848w;

    /* renamed from: x */
    private KeypadParamsChanged f22849x;

    /* renamed from: y */
    private ContactScrollEvent f22850y;

    /* renamed from: z */
    private SearchContactsEvents f22851z;

    /* renamed from: a */
    private Map<Integer, SectionData> f22828a = new HashMap();

    /* renamed from: b */
    private List<BaseAdapterItemData> f22829b = new ArrayList();

    /* renamed from: d */
    private boolean f22831d = false;

    /* renamed from: e */
    private String f22832e = "";

    /* renamed from: f */
    private List<PlaceItemData> f22833f = new ArrayList();

    /* renamed from: k */
    private AtomicInteger f22837k = new AtomicInteger(0);

    /* renamed from: n */
    private long f22840n = 0;

    /* renamed from: p */
    private boolean f22842p = true;

    /* renamed from: q */
    private boolean f22843q = false;

    /* renamed from: B */
    private final String f22821B = Activities.getString(2131886808);

    /* renamed from: C */
    private final String f22822C = Activities.getString(2131886809);

    /* renamed from: D */
    private boolean f22823D = false;

    /* renamed from: F */
    private PermissionDeniedEvent f22825F = new PermissionDeniedEvent() { // from class: com.callapp.contacts.activity.contact.list.search._$$Lambda$SearchContactsFragment$R2qXqLAJc17pyph7HNWgzvkk9uw
        @Override // com.callapp.contacts.manager.permission.PermissionDeniedEvent
        public final void onPermissionDenied(PermissionManager.PermissionGroup permissionGroup) {
            SearchContactsFragment.this.m30401b(permissionGroup);
        }
    };

    /* renamed from: G */
    private PermissionAllowedEvent f22826G = new PermissionAllowedEvent() { // from class: com.callapp.contacts.activity.contact.list.search._$$Lambda$SearchContactsFragment$21hK__GD5QWxsUeMNKKkYW3KQVk
        @Override // com.callapp.contacts.manager.permission.PermissionAllowedEvent
        public final void onPermissionAllowed(PermissionManager.PermissionGroup permissionGroup) {
            SearchContactsFragment.this.m30405a(permissionGroup);
        }
    };

    /* renamed from: H */
    private RefreshSearchListener f22827H = new RefreshSearchListener() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.1
        @Override // com.callapp.contacts.activity.interfaces.RefreshSearchListener
        /* renamed from: a */
        public final void mo30196a() {
            SearchContactsFragment.this.f22820A = true;
        }
    };

    /* renamed from: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment$5 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5.class */
    public class C65795 implements LocationManager.LocationResult {

        /* renamed from: a */
        final /* synthetic */ CharSequence f22858a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment$5$1 */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1.class */
        public class C65801 extends Task {

            /* renamed from: a */
            final /* synthetic */ Location f22860a;

            C65801(Location location) {
                C65795.this = r4;
                this.f22860a = location;
            }

            /* renamed from: a */
            final void m30367a(List<PlaceItemData> list) {
                SearchContactsFragment.this.f22837k.decrementAndGet();
                if (((SearchContactsAdapter) SearchContactsFragment.this.originalAdapter) == null || list == null || !StringUtils.m26044b(SearchContactsFragment.this.f22851z.getCurrentFilter(), C65795.this.f22858a)) {
                    CLog.m27611a(SearchContactsFragment.class, "Discarding old results for: " + ((Object) C65795.this.f22858a));
                } else {
                    SearchContactsFragment.this.f22833f = new ArrayList(list);
                    ArrayList arrayList = new ArrayList(SearchContactsFragment.this.f22833f.size());
                    SearchContactsFragment.this.m30396c(arrayList);
                    SearchContactsFragment.this.m30392d(arrayList);
                }
                SearchContactsFragment.this.m30414a();
            }

            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (this.f22860a == null || !StringUtils.m26045b(C65795.this.f22858a)) {
                    SearchContactsFragment.this.f22837k.decrementAndGet();
                    SearchContactsFragment.this.m30414a();
                    return;
                }
                List<PlaceItemData> list = (List) SearchContactsFragment.f22818g.get(C65795.this.f22858a.toString());
                if (!CollectionUtils.m26076a(list)) {
                    m30367a(list);
                    return;
                }
                new Object() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.5.1.2
                    /* renamed from: a */
                    public static void m30366a(PlacesSearchLoadingEvents placesSearchLoadingEvents) {
                        placesSearchLoadingEvents.mo29162a();
                    }
                };
                C65795.this.f22858a.toString();
                new LatLng(this.f22860a.getLatitude(), this.f22860a.getLongitude());
                C65822.m30366a(new PlacesSearchLoadingEvents() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.5.1.1
                    @Override // com.callapp.contacts.api.helper.placessearch.PlacesSearchLoadingEvents
                    /* renamed from: a */
                    public final void mo29162a() {
                        ArrayList arrayList = new ArrayList();
                        if (CollectionUtils.m26068b((Collection) null)) {
                            throw new NullPointerException();
                        }
                        SearchContactsFragment.f22818g.put(C65795.this.f22858a.toString(), arrayList);
                        C65801.this.m30367a(arrayList);
                    }
                });
            }
        }

        C65795(CharSequence charSequence) {
            SearchContactsFragment.this = r4;
            this.f22858a = charSequence;
        }

        @Override // com.callapp.contacts.manager.LocationManager.LocationResult
        /* renamed from: a */
        public final void mo28644a(Location location) {
            if (SearchContactsFragment.this.f22844s != null) {
                SearchContactsFragment.this.f22844s.cancel();
            }
            SearchContactsFragment.this.f22844s = new C65801(location).execute();
        }
    }

    /* renamed from: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment$9 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchContactsFragment$9.class */
    public static /* synthetic */ class C65869 {

        /* renamed from: a */
        static final /* synthetic */ int[] f22870a;

        static {
            int[] iArr = new int[PermissionManager.PermissionGroup.values().length];
            f22870a = iArr;
            try {
                iArr[PermissionManager.PermissionGroup.LOCATION.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchContactsFragment$SearchContactsFilter.class */
    public class SearchContactsFilter extends Filter {

        /* renamed from: b */
        private ContactSearcher f22872b;

        SearchContactsFilter(ContactSearcher contactSearcher) {
            SearchContactsFragment.this = r4;
            this.f22872b = contactSearcher;
        }

        @Override // android.widget.Filter
        protected Filter.FilterResults performFiltering(CharSequence charSequence) {
            Filter.FilterResults filterResults = new Filter.FilterResults();
            ArrayList arrayList = new ArrayList(SearchContactsFragment.this.f22829b);
            ArrayList arrayList2 = new ArrayList();
            if (StringUtils.m26059a(charSequence)) {
                SearchContactsFragment.m30390e(arrayList);
                arrayList2.addAll(arrayList);
                this.f22872b.m30447a();
            } else {
                if (!SearchContactsFragment.this.f22831d) {
                    SearchContactsFragment.this.f22830c = null;
                }
                if (StringUtils.m26059a((CharSequence) SearchContactsFragment.this.f22832e)) {
                    this.f22872b.m30447a();
                }
                final ContactSearcher contactSearcher = this.f22872b;
                final String search = charSequence.toString();
                final String str = SearchContactsFragment.this.f22832e;
                final List allContacts = SearchContactsFragment.this.f22829b;
                final List list = SearchContactsFragment.this.f22830c;
                C18524p.m3840d(search, "search");
                C18524p.m3840d(allContacts, "allContacts");
                final C18490ab.C18495e c18495e = new C18490ab.C18495e();
                c18495e.f63589a = null;
                MultiTaskRunner multiTaskRunner = new MultiTaskRunner();
                multiTaskRunner.m28974a(new Task() { // from class: com.callapp.contacts.activity.contact.list.search.ContactSearcher$search$1
                    /* JADX WARN: Type inference failed for: r1v2, types: [T, android.util.Pair] */
                    @Override // com.callapp.contacts.manager.task.Task
                    public final void doTask() {
                        List list2 = list;
                        String str2 = list2 == null || list2.isEmpty() ? "" : str;
                        List list3 = C18297z.f63400a;
                        List list4 = list;
                        if (list4 != null) {
                            List list5 = list4;
                            List arrayList3 = new ArrayList();
                            for (Object obj : list5) {
                                BaseAdapterItemData baseAdapterItemData = (BaseAdapterItemData) obj;
                                if ((baseAdapterItemData instanceof StickyHeaderSection) && ((StickyHeaderSection) baseAdapterItemData).getSectionId() == 0) {
                                    arrayList3.add(obj);
                                }
                            }
                            list3 = arrayList3;
                        }
                        C18490ab.C18495e c18495e2 = c18495e;
                        String str3 = search;
                        List list6 = allContacts;
                        ArrayList arrayList4 = new ArrayList();
                        for (Object obj2 : list6) {
                            BaseAdapterItemData baseAdapterItemData2 = (BaseAdapterItemData) obj2;
                            if ((baseAdapterItemData2 instanceof StickyHeaderSection) && ((StickyHeaderSection) baseAdapterItemData2).getSectionId() == 0) {
                                arrayList4.add(obj2);
                            }
                        }
                        c18495e2.f63589a = T9Helper.m30355a(str3, str2, arrayList4, list3);
                    }
                });
                multiTaskRunner.m28974a(new Task() { // from class: com.callapp.contacts.activity.contact.list.search.ContactSearcher$search$2
                    @Override // com.callapp.contacts.manager.task.Task
                    public final void doTask() {
                        String m30434b;
                        ArrayList arrayList3;
                        boolean m30441a;
                        List m30439a;
                        List m30440a;
                        m30434b = ContactSearcher.m30434b(search);
                        ContactSearcher contactSearcher2 = ContactSearcher.this;
                        if (m30434b.length() == 0) {
                            arrayList3 = new ArrayList();
                        } else {
                            m30441a = ContactSearcher.this.m30441a(m30434b);
                            if (m30441a) {
                                m30440a = ContactSearcher.this.m30440a(m30434b, true);
                                arrayList3 = m30440a;
                            } else {
                                m30439a = ContactSearcher.this.m30439a(m30434b, true, true);
                                arrayList3 = m30439a;
                            }
                        }
                        contactSearcher2.f22742a = arrayList3;
                    }
                });
                multiTaskRunner.m28975a();
                contactSearcher.f22743b = search;
                List<? extends BaseAdapterItemData> list2 = contactSearcher.f22742a;
                Pair pair = (Pair) c18495e.f63589a;
                List list3 = null;
                if (pair != null) {
                    list3 = (List) pair.second;
                }
                ArrayList arrayList3 = new ArrayList();
                if (list3 != null) {
                    arrayList3.addAll(list3);
                }
                arrayList3.addAll(list2);
                Pair pair2 = new Pair(Boolean.valueOf(!arrayList3.isEmpty()), arrayList3);
                arrayList2.addAll((Collection) pair2.second);
                if (!((Boolean) pair2.first).booleanValue()) {
                    SearchContactsFragment.m30390e(arrayList);
                }
            }
            filterResults.values = arrayList2;
            filterResults.count = arrayList2.size();
            return filterResults;
        }

        @Override // android.widget.Filter
        protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            SearchContactsFragment.this.f22830c = filterResults.values == null ? new ArrayList() : new ArrayList((List) filterResults.values);
            SearchContactsFragment.this.f22832e = charSequence != null ? charSequence.toString() : "";
            List list = (List) filterResults.values;
            ArrayList arrayList = list;
            if (list == null) {
                arrayList = new ArrayList();
            }
            List list2 = (List) SearchContactsFragment.f22818g.get(SearchContactsFragment.this.f22851z.getCurrentFilter());
            if (CollectionUtils.m26068b(list2)) {
                arrayList.addAll(list2);
            } else {
                PermissionManager.get();
                if (!PermissionManager.m28253a("android.permission.ACCESS_COARSE_LOCATION")) {
                    PermissionManager.get();
                    if (!PermissionManager.m28253a("android.permission.ACCESS_FINE_LOCATION")) {
                        if (CollectionUtils.m26076a(arrayList)) {
                            if (SearchContactsFragment.this.f22824E.getChildCount() > 0) {
                                SearchContactsFragment.this.f22824E.getChildAt(0).setVisibility(8);
                                SearchContactsFragment.this.f22824E.getChildAt(1).setVisibility(0);
                            }
                        } else if (SearchContactsFragment.this.f22824E.getChildCount() > 0) {
                            SearchContactsFragment.this.f22824E.getChildAt(0).setVisibility(0);
                            SearchContactsFragment.this.f22824E.getChildAt(1).setVisibility(8);
                        }
                    }
                }
            }
            if (CollectionUtils.m26076a(arrayList) && charSequence != null && PhoneNumberUtils.m26084a(charSequence.toString())) {
                AddEntryItemData addEntryItemData = new AddEntryItemData(charSequence.toString());
                addEntryItemData.setSectionId(-1);
                arrayList.add(addEntryItemData);
                SearchForItemData searchForItemData = new SearchForItemData(charSequence.toString());
                searchForItemData.setSectionId(-1);
                arrayList.add(searchForItemData);
            }
            SearchContactsFragment.this.setData(arrayList);
            SearchContactsFragment.this.m30414a();
            if (SearchContactsFragment.this.recyclerAdapter == null || AdUtils.m27285a()) {
                return;
            }
            if (StringUtils.m26045b((CharSequence) SearchContactsFragment.this.f22851z.getCurrentFilter())) {
                SearchContactsFragment.this.recyclerAdapter.clearAds();
            } else {
                SearchContactsFragment.this.recyclerAdapter.m31476b();
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ int m30412a(AggregateCallLogData aggregateCallLogData, AggregateCallLogData aggregateCallLogData2) {
        return aggregateCallLogData2.getTotalInteractionCount() - aggregateCallLogData.getTotalInteractionCount();
    }

    /* renamed from: a */
    private static void m30413a(SpannableString spannableString, String str, Integer num) {
        int indexOf = spannableString.toString().indexOf(str);
        int length = str.length() + indexOf;
        if (indexOf < 0 || length > spannableString.length()) {
            return;
        }
        spannableString.setSpan(new TypefaceSpan("sans-serif-medium"), indexOf, length, 33);
        spannableString.setSpan(new StyleSpan(1), indexOf, length, 33);
        if (num == null) {
            return;
        }
        spannableString.setSpan(new ForegroundColorSpan(num.intValue()), indexOf, length, 18);
    }

    /* renamed from: a */
    static /* synthetic */ void m30409a(SearchContactsFragment searchContactsFragment, CharSequence charSequence) {
        searchContactsFragment.f22833f.clear();
        searchContactsFragment.m30406a(new C65795(charSequence));
    }

    /* renamed from: a */
    private void m30406a(final LocationManager.LocationResult locationResult) {
        LocationManager.get().m28649a(new LocationManager.LocationResult() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.4
            @Override // com.callapp.contacts.manager.LocationManager.LocationResult
            /* renamed from: a */
            public final void mo28644a(Location location) {
                LocationManager.LocationResult locationResult2 = locationResult;
                if (locationResult2 != null) {
                    locationResult2.mo28644a(location);
                }
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m30405a(PermissionManager.PermissionGroup permissionGroup) {
        this.f22824E.removeAllViews();
        this.f22824E.setVisibility(8);
        if (C65869.f22870a[permissionGroup.ordinal()] != 1) {
            return;
        }
        this.f22823D = true;
        refreshData();
        AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "location - permission", "granted");
    }

    /* renamed from: b */
    public /* synthetic */ void m30401b(PermissionManager.PermissionGroup permissionGroup) {
        this.f22824E.removeAllViews();
        this.f22824E.setVisibility(8);
        if (C65869.f22870a[permissionGroup.ordinal()] != 1) {
            return;
        }
        this.f22823D = true;
        AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "location - permission", com.mopub.common.Constants.TAS_DENIED);
    }

    /* renamed from: b */
    private void m30400b(List<BaseAdapterItemData> list) {
        HashSet hashSet = new HashSet();
        Map<String, FastCacheData> allFastCacheDataWithName = FastCacheDataManager.getAllFastCacheDataWithName();
        Stack stack = (Stack) CallLogUtils.getCallLog().clone();
        Hashtable hashtable = new Hashtable();
        Hashtable hashtable2 = new Hashtable();
        ArrayList<AggregateCallLogData> arrayList = new ArrayList();
        HashSet hashSet2 = new HashSet();
        while (!stack.isEmpty()) {
            AggregateCallLogData aggregateCallLogData = (AggregateCallLogData) stack.pop();
            if (!CallLogUtils.m27556b(aggregateCallLogData.getPhone().getRawNumber())) {
                String m26101a = aggregateCallLogData.f20274c.m26101a();
                if (StringUtils.m26045b((CharSequence) m26101a)) {
                    if (!hashtable.containsKey(m26101a)) {
                        hashtable.put(m26101a, aggregateCallLogData);
                    }
                    int aggregateSize = aggregateCallLogData.getAggregateSize();
                    if (hashtable2.containsKey(m26101a)) {
                        hashtable2.put(m26101a, Integer.valueOf(((Integer) hashtable2.get(m26101a)).intValue() + aggregateSize));
                    } else {
                        hashtable2.put(m26101a, Integer.valueOf(aggregateSize));
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
        Map<Long, MemoryContactItem> m28316a = ContactUtils.m28316a(hashSet2);
        for (AggregateCallLogData aggregateCallLogData3 : arrayList) {
            String m30360a = T9Helper.m30360a((CharSequence) aggregateCallLogData3.getPhone().getRawNumber());
            String m26101a2 = aggregateCallLogData3.f20274c.m26101a();
            if (StringUtils.m26045b((CharSequence) m26101a2)) {
                aggregateCallLogData3.setTotalInteractionCount(((Integer) hashtable2.get(m26101a2)).intValue());
            }
            if (StringUtils.m26059a((CharSequence) aggregateCallLogData3.displayName)) {
                if (aggregateCallLogData3.contactId > 0) {
                    MemoryContactItem memoryContactItem = m28316a.get(Long.valueOf(aggregateCallLogData3.contactId));
                    if (memoryContactItem != null) {
                        aggregateCallLogData3.displayName = RegexUtils.m31888m(memoryContactItem.displayName.toLowerCase());
                    }
                } else if (new ContactLoader().addFields(ContactField.deviceId).setDisableContactEvents().addSyncLoader(new DeviceIdLoader()).load(aggregateCallLogData3.getPhone()).getDeviceId() > 0) {
                    MemoryContactItem memoryContactItem2 = m28316a.get(Long.valueOf(aggregateCallLogData3.contactId));
                    if (memoryContactItem2 != null) {
                        aggregateCallLogData3.displayName = RegexUtils.m31888m(memoryContactItem2.displayName.toLowerCase());
                    }
                } else {
                    FastCacheData fastCacheData = allFastCacheDataWithName.get(ContactData.generateId(aggregateCallLogData3.getPhone(), aggregateCallLogData3.contactId));
                    if (fastCacheData != null && StringUtils.m26045b((CharSequence) fastCacheData.getFullName())) {
                        aggregateCallLogData3.displayName = RegexUtils.m31888m(fastCacheData.getFullName().toLowerCase());
                    }
                }
                if (StringUtils.m26059a((CharSequence) aggregateCallLogData3.displayName)) {
                    aggregateCallLogData3.displayName = m30360a;
                }
            }
            ContactUtils.m28331a(aggregateCallLogData3);
            aggregateCallLogData3.normalNumbers.add(m30360a);
            aggregateCallLogData3.setSectionId(0);
            if (this.originalAdapter != null) {
                this.originalAdapter.m31514a((BaseAdapterItemData) aggregateCallLogData3, false);
            }
        }
        Collections.sort(arrayList, _$$Lambda$SearchContactsFragment$HCba0tKoch4tHGwbmF55D7HVwHg.INSTANCE);
        list.addAll(arrayList);
        for (FavoriteMemoryContactItem favoriteMemoryContactItem : ContactUtils.getFavoriteContacts()) {
            if (!hashSet.contains(favoriteMemoryContactItem.getPhone())) {
                if (StringUtils.m26059a((CharSequence) favoriteMemoryContactItem.nameT9)) {
                    ContactUtils.m28331a(favoriteMemoryContactItem);
                }
                favoriteMemoryContactItem.setSectionId(0);
                list.add(favoriteMemoryContactItem);
            }
        }
    }

    /* renamed from: c */
    public void m30396c(List<BaseViewTypeData> list) {
        if (CollectionUtils.m26068b(this.f22833f)) {
            for (PlaceItemData placeItemData : this.f22833f) {
                placeItemData.setSectionId(3);
                list.add(placeItemData);
            }
        }
    }

    /* renamed from: d */
    public /* synthetic */ void m30395d() {
        final ArrayList arrayList = new ArrayList();
        m30400b(arrayList);
        if (this.originalAdapter != null) {
            this.originalAdapter.m31513c();
        }
        this.f22829b = arrayList;
        this.f22830c = null;
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.search._$$Lambda$SearchContactsFragment$HoxYCN_cRWv1ifD2UAdWgopfVIA
            @Override // java.lang.Runnable
            public final void run() {
                SearchContactsFragment.this.m30388f(arrayList);
            }
        });
    }

    /* renamed from: d */
    public void m30392d(List<BaseViewTypeData> list) {
        List list2 = (List) this.data;
        if (CollectionUtils.m26068b(list2)) {
            for (int size = list2.size() - 1; size >= 0 && ((StickyHeaderSection) list2.get(size)).getSectionId() == 3; size--) {
                list2.remove(size);
            }
        }
        if (CollectionUtils.m26068b(list)) {
            ((List) this.data).addAll(list);
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.6
            @Override // java.lang.Runnable
            public void run() {
                SearchContactsFragment.this.originalAdapter.setData(SearchContactsFragment.this.data);
            }
        });
    }

    /* renamed from: e */
    public static void m30390e(List<BaseAdapterItemData> list) {
        if (CollectionUtils.m26068b(list)) {
            for (BaseAdapterItemData baseAdapterItemData : list) {
                baseAdapterItemData.textHighlights.clear();
                baseAdapterItemData.numberMatchIndexEnd = -1;
                baseAdapterItemData.numberMatchIndexStart = -1;
            }
        }
    }

    /* renamed from: f */
    public /* synthetic */ void m30388f(List list) {
        if (StringUtils.m26059a((CharSequence) this.f22851z.getCurrentFilter())) {
            setData(list);
        } else {
            this.f22830c = null;
            mo28733a(this.f22851z.getCurrentFilter(), false, false, this.f22841o);
        }
        this.f22831d = true;
    }

    public boolean isLocationPermissionDenied() {
        PermissionManager.get();
        if (!PermissionManager.m28253a("android.permission.ACCESS_FINE_LOCATION")) {
            PermissionManager.get();
            return !PermissionManager.m28253a("android.permission.ACCESS_COARSE_LOCATION");
        }
        return false;
    }

    /* renamed from: a */
    public final void m30414a() {
        final boolean m26084a = PhoneNumberUtils.m26084a(this.f22851z.getCurrentFilter());
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.7
            @Override // java.lang.Runnable
            public void run() {
                if (StringUtils.m26059a((CharSequence) SearchContactsFragment.this.f22851z.getCurrentFilter())) {
                    SearchContactsFragment.this.f22834h.setVisibility(8);
                    SearchContactsFragment.this.f22836j.setVisibility(8);
                } else if (SearchContactsFragment.this.recyclerAdapter == null) {
                } else {
                    SearchContactsFragment.this.f22842p = false;
                    SearchContactsFragment.this.f22835i.setVisibility(8);
                    int size = SearchContactsFragment.this.data != null ? ((List) SearchContactsFragment.this.data).size() : 0;
                    StringBuilder sb = new StringBuilder("Filtering: ");
                    sb.append(SearchContactsFragment.this.f22851z.getCurrentFilter());
                    sb.append(", Adapter size: ");
                    sb.append(size);
                    sb.append(", Loading places: ");
                    sb.append(SearchContactsFragment.this.f22837k.get());
                    CLog.m27606a("SearchContactsFragment");
                    if (size > 0) {
                        SearchContactsFragment.this.f22834h.setVisibility(8);
                        SearchContactsFragment.this.f22836j.setVisibility(8);
                        return;
                    }
                    if (SearchContactsFragment.this.f22837k.get() <= 0 || SearchContactsFragment.this.isLocationPermissionDenied()) {
                        SearchContactsFragment.this.f22836j.setVisibility(8);
                    } else {
                        SearchContactsFragment.this.f22836j.setVisibility(0);
                    }
                    if (m26084a || (SearchContactsFragment.this.f22837k.get() != 0 && !SearchContactsFragment.this.isLocationPermissionDenied())) {
                        SearchContactsFragment.this.f22834h.setVisibility(8);
                        return;
                    }
                    SearchContactsFragment.this.f22834h.setVisibility(0);
                    TextView textView = SearchContactsFragment.this.f22834h;
                    SearchContactsFragment searchContactsFragment = SearchContactsFragment.this;
                    textView.setText(searchContactsFragment.getString(2131886920, searchContactsFragment.f22851z.getCurrentFilter()));
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchContactsFilter
    /* renamed from: a */
    public final void mo28733a(final String str, boolean z, final boolean z2, boolean z3) {
        this.f22841o = z3;
        if (!PhoneNumberUtils.m26084a(str) && !z3 && CallAppRemoteConfigManager.get().m28698c("searchNearbyEnabled") && StringUtils.m26045b((CharSequence) str) && (z2 || str.length() >= 4)) {
            this.f22837k.incrementAndGet();
            if (z2) {
                m30414a();
            }
            this.f22840n = new Date().getTime();
            CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.8
                @Override // java.lang.Runnable
                public void run() {
                    if (!z2 && new Date().getTime() - SearchContactsFragment.this.f22840n < 750) {
                        if (SearchContactsFragment.this.f22837k.decrementAndGet() != 0) {
                            return;
                        }
                        SearchContactsFragment.this.m30414a();
                    } else if (CollectionUtils.m26076a((List) SearchContactsFragment.f22818g.get(str))) {
                        SearchContactsFragment.m30409a(SearchContactsFragment.this, (CharSequence) str);
                    } else {
                        SearchContactsFragment.this.f22837k.decrementAndGet();
                    }
                }
            }, 750L);
        }
        if (this.recyclerView != null) {
            getFilter().filter(str);
            if (z) {
                this.recyclerView.m40464b(0);
            }
        }
        if (!StringUtils.m26059a((CharSequence) str) || this.recyclerAdapter == null) {
            return;
        }
        m30392d((List<BaseViewTypeData>) null);
    }

    @Override // com.callapp.contacts.activity.interfaces.KeypadLayoutChanges
    /* renamed from: b */
    public final void mo30210b() {
        if (!Activities.isOrientationLandscape() || this.recyclerAdapter == null || !this.recyclerAdapter.isDataReady()) {
            return;
        }
        this.recyclerView.m40460b(this.f22846u);
        this.f22846u = new C0004c(this.f22847v);
        this.recyclerView.m40480a(this.f22846u, 1);
        this.originalAdapter.notifyDataSetChanged();
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
        if (this.f22845t == null) {
            this.f22845t = new SearchContactsFilter(new ContactSearcher());
        }
        return this.f22845t;
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
        C0434e<String, List<PlaceItemData>> c0434e;
        this.originalAdapter = new SearchContactsAdapter(getScrollEvents(), list, this.f22828a, this.f22848w);
        if (this.f22843q && StringUtils.m26045b((CharSequence) this.f22851z.getCurrentFilter()) && (c0434e = f22818g) != null) {
            this.f22843q = false;
            List<PlaceItemData> list2 = c0434e.get(this.f22851z.getCurrentFilter());
            if (CollectionUtils.m26068b(list2)) {
                this.f22833f = list2;
                ArrayList arrayList = new ArrayList(this.f22833f.size());
                m30396c(arrayList);
                m30392d(arrayList);
            }
        }
        CallAppMoPubRecyclerAdapter m27284a = AdUtils.m27284a(getActivity(), ListsUtils.m27474a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
        this.f22847v = m27284a;
        this.f22846u = new C0004c(m27284a);
        this.recyclerView.m40480a(this.f22846u, 1);
        return this.f22847v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v59, types: [java.lang.CharSequence] */
    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public void initEmptyView() {
        SpannableString spannableString;
        View view = getView();
        int color = ThemeUtils.getColor(2131099686);
        View findViewById = view.findViewById(2131362685);
        this.f22835i = findViewById;
        findViewById.setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 1 || SearchContactsFragment.this.f22850y == null) {
                    return false;
                }
                Activities.m27653b(SearchContactsFragment.this.f22835i);
                SearchContactsFragment.this.f22850y.mo30222m();
                return false;
            }
        });
        this.f22835i.setBackgroundColor(color);
        TextView textView = (TextView) this.f22835i.findViewById(2131362699);
        ImageView imageView = (ImageView) this.f22835i.findViewById(2131362696);
        boolean z = this.f22842p & (!this.f22851z.shouldSkipEmptyView());
        this.f22842p = z;
        if (!z) {
            this.f22835i.setVisibility(8);
        }
        if (RecorderTestManager.get().isInRecorderTestMode()) {
            new RecorderTestTutorial().mo19242a(getChildFragmentManager(), "RecorderTestTutorial");
        }
        if (textView != null) {
            if (RecorderTestManager.get().isInRecorderTestMode()) {
                spannableString = Activities.getText(2131887506);
            } else {
                spannableString = new SpannableString(Activities.m27697a(2131886811, getString(2131886810)));
                spannableString.setSpan(new ForegroundColorSpan(this.f22839m), 0, spannableString.length(), 18);
                m30413a(spannableString, getString(2131886810), Integer.valueOf(this.f22838l));
                m30413a(spannableString, this.f22821B, null);
                m30413a(spannableString, this.f22822C, null);
            }
            textView.setTextColor(ThemeUtils.getColor(2131100140));
            textView.setText(spannableString);
        }
        if (imageView != null) {
            imageView.setImageResource(RecorderTestManager.get().isInRecorderTestMode() ? 2131230902 : 2131231870);
        }
        this.f22836j = view.findViewById(2131363221);
        int color2 = ThemeUtils.getColor(2131099784);
        ProgressWheel progressWheel = (ProgressWheel) view.findViewById(2131363585);
        TextView textView2 = (TextView) view.findViewById(2131363222);
        progressWheel.setBarColor(color2);
        textView2.setText(Activities.getString(2131887877));
        textView2.setTextColor(color2);
        TextView textView3 = (TextView) view.findViewById(2131363371);
        this.f22834h = textView3;
        textView3.setTextColor(this.f22839m);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (getActivity() instanceof ContactsClickEvents) {
            this.f22848w = (ContactsClickEvents) getActivity();
            if (!(getActivity() instanceof KeypadParamsChanged)) {
                throw new IllegalStateException("Paren activity must implement KeypadParamsChanged");
            }
            this.f22849x = (KeypadParamsChanged) getActivity();
            if (!(getActivity() instanceof ContactScrollEvent)) {
                throw new IllegalStateException("Parent activity must implement ContactScrollEvent");
            }
            this.f22850y = (ContactScrollEvent) getActivity();
            if (!(getActivity() instanceof SearchContactsEvents)) {
                throw new IllegalStateException("Parent activity must implement SearchContactsEvents");
            }
            SearchContactsEvents searchContactsEvents = (SearchContactsEvents) getActivity();
            this.f22851z = searchContactsEvents;
            searchContactsEvents.registerFilteredEvents(this);
            return;
        }
        throw new IllegalStateException("Parent activity must implement ContactsClickEvents");
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        f22819r = true;
        AnalyticsManager.get().mo28441b(Constants.SEARCH_SCREEN);
        m30406a((LocationManager.LocationResult) null);
        this.f22838l = ThemeUtils.getColor(2131099784);
        this.f22839m = ThemeUtils.getColor(2131100108);
        if (bundle != null) {
            this.f22843q = bundle.getBoolean("shouldPutPlacesIntoAdapter", false);
            this.f22841o = bundle.getBoolean("lastIsFilterFromKeypad", false);
            this.f22832e = bundle.getString("prevFilteredConstraint", "");
            this.f22842p = bundle.getBoolean("KEY_SHOULD_SHOW_EMPTY_VIEW", false);
        }
        this.f22828a.put(0, new SectionData(Activities.getString(2131887861), this.f22838l));
        this.f22828a.put(1, new SectionData(Activities.getString(2131887863), this.f22839m));
        this.f22828a.put(2, new SectionData(Activities.getString(2131887869), this.f22838l));
        this.f22828a.put(3, new SectionData(Activities.getString(2131887882), this.f22839m));
        EventBusManager.f25138a.m29048a(RefreshSearchListener.f23136b, this.f22827H);
        EventBusManager.f25138a.m29048a(PermissionDeniedEvent.f26064a, this.f22825F);
        EventBusManager.f25138a.m29048a(PermissionAllowedEvent.f26063a, this.f22826G);
        if (isLocationPermissionDenied()) {
            Prefs.f26281bE.m28170a(4);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.SEARCH_SCREEN);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        EventBusManager.f25138a.m29045b(RefreshSearchListener.f23136b, this.f22827H);
        EventBusManager.f25138a.m29045b(PermissionDeniedEvent.f26064a, this.f22825F);
        EventBusManager.f25138a.m29045b(PermissionAllowedEvent.f26063a, this.f22826G);
        Task task = this.f22844s;
        if (task != null) {
            task.cancel();
        }
        LocationManager locationManager = LocationManager.get();
        if (locationManager.f25703a != null && locationManager.f25704b != null) {
            locationManager.f25703a.m12275a(locationManager.f25704b);
        }
        m30390e(this.f22829b);
        if (f22819r) {
            f22818g.evictAll();
        }
        ViewGroup viewGroup = this.f22824E;
        if (viewGroup != null && viewGroup.getChildCount() > 0) {
            Prefs.f26281bE.set(0);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        this.f22851z.unRegisterFilteredEvents(this);
        super.onDetach();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.f22849x.mo30208b(this);
        super.onPause();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f22849x.mo30209a(this);
        if (this.f22820A) {
            this.f22832e = "";
            this.f22820A = false;
            refreshData();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        ViewGroup viewGroup;
        super.onViewCreated(view, bundle);
        refreshData();
        this.recyclerView.setHasFixedSize(true);
        this.recyclerView.m40478a(new RecyclerView.AbstractC2645m() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsFragment.2

            /* renamed from: a */
            int f22853a = 0;

            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
            /* renamed from: a */
            public final void mo10833a(RecyclerView recyclerView, int i) {
                super.mo10833a(recyclerView, i);
                if (SearchContactsFragment.this.f22850y != null && i == 1 && this.f22853a != 1) {
                    Activities.m27653b(recyclerView);
                    SearchContactsFragment.this.f22850y.mo30222m();
                }
                this.f22853a = i;
            }
        });
        View findViewById = view.findViewById(2131363758);
        this.f22824E = (ViewGroup) view.findViewById(2131363992);
        findViewById.setBackgroundColor(ThemeUtils.getColor(2131099686));
        initEmptyView();
        if (!isLocationPermissionDenied() || Prefs.f26281bE.get().intValue() != 4 || this.f22823D || (viewGroup = this.f22824E) == null || viewGroup.getChildCount() != 0) {
            return;
        }
        this.f22824E.removeAllViews();
        StickyPermissionView stickyPermissionView = new StickyPermissionView(getActivity());
        StickyPermissionViewExpanded stickyPermissionViewExpanded = new StickyPermissionViewExpanded(getActivity());
        stickyPermissionView.setPermissionToRequest(PermissionManager.get(), PermissionManager.PermissionGroup.LOCATION);
        stickyPermissionViewExpanded.setPermissionToRequest(PermissionManager.get(), PermissionManager.PermissionGroup.LOCATION);
        this.f22824E.addView(stickyPermissionView);
        this.f22824E.addView(stickyPermissionViewExpanded);
        this.f22824E.setVisibility(0);
        this.f22823D = true;
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void refreshData() {
        this.f22831d = false;
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.search._$$Lambda$SearchContactsFragment$SlA90MidhMceno8BlhY6YMYAyTA
            @Override // java.lang.Runnable
            public final void run() {
                SearchContactsFragment.this.m30395d();
            }
        });
    }
}
