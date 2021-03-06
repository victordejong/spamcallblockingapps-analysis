package com.callapp.contacts.activity.analytics.cards;

import android.content.Context;
import android.content.Intent;
import android.graphics.PointF;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard;
import com.callapp.contacts.activity.analytics.circleGraph.CircleGraphEvents;
import com.callapp.contacts.activity.analytics.circleGraph.data.CircleGraphData;
import com.callapp.contacts.activity.analytics.circleGraph.data.MultiCircleGraphData;
import com.callapp.contacts.activity.analytics.circleGraph.fragment.CircleGraphFragment;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManagerKotlin;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData_;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.InlineVisibilityTracker;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.C18538n;
import kotlin.Metadata;
import kotlin.jvm.internal.C18490ab;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.p520b.C18299a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010??????\n??????\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n??????\n\u0002\u0010 \n\u0002\u0018\u0002\n??????\n\u0002\u0018\u0002\n??????\n\u0002\u0018\u0002\n??????\n\u0002\u0018\u0002\n??????\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n??????\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n??????\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018??????2\u0016\u0012\n\u0012\b\u0018\u00010\u0002R\u00020??????\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001:\u00014B\u000f\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005??\u0006\u0002\u0010\u0006J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u000e\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eH\u0016J\b\u0010 \u001a\u00020\u0013H\u0016J\u001e\u0010!\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\"J\u0010\u0010#\u001a\u00020$2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0016\u0010%\u001a\u00020$2\f\u0010&\u001a\b\u0018\u00010\u0002R\u00020??????H\u0014J\u001e\u0010'\u001a\u00020$2\u0006\u0010(\u001a\u00020)2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eH\u0016J\u0014\u0010+\u001a\u00060\u0002R\u00020??????2\u0006\u0010,\u001a\u00020-H\u0014J\b\u0010.\u001a\u00020$H\u0016J\u0006\u0010/\u001a\u00020$J\b\u00100\u001a\u00020\bH\u0016J\u001a\u00101\u001a\u00020$2\b\u00102\u001a\u0004\u0018\u00010\u00032\u0006\u00103\u001a\u00020\bH\u0014R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e??\u0006\u0002\n??????R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e??\u0006\u0002\n??????R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e??\u0006\u0002\n??????R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e??\u0006\u0002\n??????R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e??\u0006\u0002\n??????R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082D??\u0006\u0002\n??????R\u000e\u0010\u0014\u001a\u00020\bX\u0082\u000e??\u0006\u0002\n??????R\u000e\u0010\u0015\u001a\u00020\bX\u0082\u000e??\u0006\u0002\n??????R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e??\u0006\u0002\n??????R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e??\u0006\u0002\n??????R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\rX\u0082\u000e??\u0006\u0002\n??????R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u000fX\u0082\u000e??\u0006\u0002\n????????\u00065"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;", "Lcom/callapp/contacts/activity/analytics/cards/base/AnalyticsWrapperCard;", "Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;", "", "presentersContainer", "Lcom/callapp/contacts/activity/contact/details/PresentersContainer;", "(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V", "alreadyBounded", "", "avoidYouData", "", "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;", "avoidYouFragment", "Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/CircleGraphFragment;", "avoidYouVisibilityTracker", "Lcom/mopub/mobileads/InlineVisibilityTracker;", "mode", "Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;", "numberOfItems", "", "shouldShowAvoidYouAnimation", "shouldShowYouAvoidAnimation", "unansweredCallsMultiTask", "Lcom/callapp/contacts/framework/util/MultiTaskRunner;", "youAvoidData", "youAvoidFragment", "youAvoidVisibilityTracker", "getHeaderTitle", "", "getListenFields", "", "Lcom/callapp/contacts/model/contact/ContactField;", "getPriority", "getWhoICalledTheMostData", "Lkotlin/Pair;", "onAnalyticsRefreshCard", "", "onBindViewHolder", "unansweredCallsCardCardHolder", "onContactChanged", "contact", "Lcom/callapp/contacts/model/contact/ContactData;", "changedFields", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "onDestroy", "refreshCardData", "showShouldExpandButton", "updateCardData", "data", "forceRefresh", "UnansweredCallsCardCardHolder", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/UnansweredCallsCard.class */
public final class UnansweredCallsCard extends AnalyticsWrapperCard<UnansweredCallsCardCardHolder, Object> {
    private boolean alreadyBounded;
    private CircleGraphFragment avoidYouFragment;
    private InlineVisibilityTracker avoidYouVisibilityTracker;
    private PresentersContainer.MODE mode;
    private boolean shouldShowAvoidYouAnimation;
    private boolean shouldShowYouAvoidAnimation;
    private CircleGraphFragment youAvoidFragment;
    private InlineVisibilityTracker youAvoidVisibilityTracker;
    private List<MultiCircleGraphData> youAvoidData = new ArrayList();
    private List<MultiCircleGraphData> avoidYouData = new ArrayList();
    private MultiTaskRunner unansweredCallsMultiTask = new MultiTaskRunner();
    private final int numberOfItems = 3;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"??????*\n\u0002\u0018\u0002\n\u0002\u0010??????\n??????\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0086\u0004\u0018??????2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003??\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0003??\u0006\b\n??????\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\t??\u0006\b\n??????\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\t??\u0006\b\n??????\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\u000f??\u0006\b\n??????\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013??\u0006\b\n??????\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u000f??\u0006\b\n??????\u001a\u0004\b\u0017\u0010\u0011R\u0011\u0010\u0018\u001a\u00020\u0003??\u0006\b\n??????\u001a\u0004\b\u0019\u0010\u0007R\u0011\u0010\u001a\u001a\u00020\t??\u0006\b\n??????\u001a\u0004\b\u001b\u0010\u000bR\u0011\u0010\u001c\u001a\u00020\t??\u0006\b\n??????\u001a\u0004\b\u001d\u0010\u000b??\u0006\u001e"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder;", "", "root", "Landroid/view/View;", "(Lcom/callapp/contacts/activity/analytics/cards/UnansweredCallsCard;Landroid/view/View;)V", "avoidYouDivider", "getAvoidYouDivider", "()Landroid/view/View;", "avoidYouSubTitle", "Landroid/widget/TextView;", "getAvoidYouSubTitle", "()Landroid/widget/TextView;", "avoidYouTitle", "getAvoidYouTitle", "dataLayout", "Landroid/widget/LinearLayout;", "getDataLayout", "()Landroid/widget/LinearLayout;", "emptyImg", "Landroid/widget/ImageView;", "getEmptyImg", "()Landroid/widget/ImageView;", "emptyLayout", "getEmptyLayout", "youAvoidDivider", "getYouAvoidDivider", "youAvoidSubTitle", "getYouAvoidSubTitle", "youAvoidTitle", "getYouAvoidTitle", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/UnansweredCallsCard$UnansweredCallsCardCardHolder.class */
    public final class UnansweredCallsCardCardHolder {

        /* renamed from: a */
        final /* synthetic */ UnansweredCallsCard f19623a;

        /* renamed from: b */
        private final TextView f19624b;

        /* renamed from: c */
        private final TextView f19625c;

        /* renamed from: d */
        private final TextView f19626d;

        /* renamed from: e */
        private final TextView f19627e;

        /* renamed from: f */
        private final LinearLayout f19628f;

        /* renamed from: g */
        private final LinearLayout f19629g;

        /* renamed from: h */
        private final ImageView f19630h;

        /* renamed from: i */
        private final View f19631i;

        /* renamed from: j */
        private final View f19632j;

        public UnansweredCallsCardCardHolder(UnansweredCallsCard unansweredCallsCard, View root) {
            C18524p.m3840d(root, "root");
            this.f19623a = unansweredCallsCard;
            View findViewById = root.findViewById(2131364579);
            C18524p.m3843b(findViewById, "root.findViewById(R.id.youAvoidTitle)");
            this.f19624b = (TextView) findViewById;
            View findViewById2 = root.findViewById(2131362047);
            C18524p.m3843b(findViewById2, "root.findViewById(R.id.avoidYouTitle)");
            this.f19625c = (TextView) findViewById2;
            View findViewById3 = root.findViewById(2131364578);
            C18524p.m3843b(findViewById3, "root.findViewById(R.id.youAvoidSubTitle)");
            this.f19626d = (TextView) findViewById3;
            View findViewById4 = root.findViewById(2131362046);
            C18524p.m3843b(findViewById4, "root.findViewById(R.id.avoidYouSubTitle)");
            this.f19627e = (TextView) findViewById4;
            View findViewById5 = root.findViewById(2131362521);
            C18524p.m3843b(findViewById5, "root.findViewById(R.id.data_layout)");
            this.f19628f = (LinearLayout) findViewById5;
            View findViewById6 = root.findViewById(2131362694);
            C18524p.m3843b(findViewById6, "root.findViewById(R.id.empty_layout)");
            this.f19629g = (LinearLayout) findViewById6;
            View findViewById7 = root.findViewById(2131364576);
            C18524p.m3843b(findViewById7, "root.findViewById(R.id.youAvoidDivider)");
            this.f19631i = findViewById7;
            View findViewById8 = root.findViewById(2131362044);
            C18524p.m3843b(findViewById8, "root.findViewById(R.id.avoidYouDivider)");
            this.f19632j = findViewById8;
            View findViewById9 = root.findViewById(2131362686);
            C18524p.m3843b(findViewById9, "root.findViewById(R.id.emptyImg)");
            this.f19630h = (ImageView) findViewById9;
        }

        public final View getAvoidYouDivider() {
            return this.f19632j;
        }

        public final TextView getAvoidYouSubTitle() {
            return this.f19627e;
        }

        public final TextView getAvoidYouTitle() {
            return this.f19625c;
        }

        public final LinearLayout getDataLayout() {
            return this.f19628f;
        }

        public final ImageView getEmptyImg() {
            return this.f19630h;
        }

        public final LinearLayout getEmptyLayout() {
            return this.f19629g;
        }

        public final View getYouAvoidDivider() {
            return this.f19631i;
        }

        public final TextView getYouAvoidSubTitle() {
            return this.f19626d;
        }

        public final TextView getYouAvoidTitle() {
            return this.f19624b;
        }
    }

    public UnansweredCallsCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558487);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final String getHeaderTitle() {
        String string = Activities.getString(2131886542);
        C18524p.m3843b(string, "Activities.getString(R.s???nswered_and_missed_title)");
        return string;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final Set<ContactField> getListenFields() {
        EnumSet of = EnumSet.of(ContactField.phone);
        C18524p.m3843b(of, "EnumSet.of(ContactField.phone)");
        return of;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final int getPriority() {
        return 130;
    }

    public final C18538n<List<MultiCircleGraphData>, List<MultiCircleGraphData>> getWhoICalledTheMostData() {
        Collection values;
        AnalyticsDataManagerKotlin.Companion companion = AnalyticsDataManagerKotlin.f19920a;
        AnalyticsDataManager.DatePeriod datePeriod = AnalyticsDataManager.DatePeriod.CURRENT;
        C18524p.m3840d(datePeriod, "datePeriod");
        HashMap hashMap = new HashMap();
        List<AnalyticsCallsData> m4628c = AnalyticsDataManagerKotlin.Companion.m31617c(datePeriod).m4609a(AnalyticsCallsData_.isIncognito, false).m4609a(AnalyticsCallsData_.isExclude, false).m4603c().m4615a(AnalyticsCallsData_.isExclude).m4618a().m4628c();
        C18524p.m3843b(m4628c, "getQuery(datePeriod).equ???isExclude).build().find()");
        List<AnalyticsCallsData> list = m4628c;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            AnalyticsCallsData it2 = (AnalyticsCallsData) obj;
            C18524p.m3843b(it2, "it");
            String phoneAsGlobal = it2.getPhoneAsGlobal();
            Object obj2 = linkedHashMap.get(phoneAsGlobal);
            ArrayList arrayList = obj2;
            if (obj2 == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(phoneAsGlobal, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Iterable iterable = (Iterable) entry.getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj3 : iterable) {
                AnalyticsCallsData it3 = (AnalyticsCallsData) obj3;
                C18524p.m3843b(it3, "it");
                if (it3.getCallType() == AnalyticsCallsData.CallType.MISSED_CALL) {
                    arrayList2.add(obj3);
                }
            }
            int size = arrayList2.size();
            if (size > 0) {
                hashMap2.put(entry.getKey(), Integer.valueOf(size));
            }
            Iterable iterable2 = (Iterable) entry.getValue();
            ArrayList arrayList3 = new ArrayList();
            for (Object obj4 : iterable2) {
                AnalyticsCallsData it4 = (AnalyticsCallsData) obj4;
                C18524p.m3843b(it4, "it");
                if (it4.getCallType() == AnalyticsCallsData.CallType.NOT_ANSWER) {
                    arrayList3.add(obj4);
                }
            }
            int size2 = arrayList3.size();
            if (size2 > 0) {
                hashMap3.put(entry.getKey(), Integer.valueOf(size2));
            }
        }
        hashMap.put(AnalyticsCallsData.CallType.MISSED_CALL, hashMap2);
        hashMap.put(AnalyticsCallsData.CallType.NOT_ANSWER, hashMap3);
        HashMap hashMap4 = hashMap;
        final ArrayList arrayList4 = new ArrayList();
        final ArrayList arrayList5 = new ArrayList();
        this.unansweredCallsMultiTask.m28971d();
        this.unansweredCallsMultiTask.f25197b.clear();
        Map map = (Map) hashMap4.get(AnalyticsCallsData.CallType.MISSED_CALL);
        Map map2 = (Map) hashMap4.get(AnalyticsCallsData.CallType.NOT_ANSWER);
        Integer valueOf = (map == null || (values = map.values()) == null) ? null : Integer.valueOf(C18282n.m4105q(values));
        Integer num = null;
        if (map2 != null) {
            Collection values2 = map2.values();
            num = null;
            if (values2 != null) {
                num = Integer.valueOf(C18282n.m4105q(values2));
            }
        }
        final C18490ab.C18493c c18493c = new C18490ab.C18493c();
        c18493c.f63587a = 0;
        if (valueOf != null) {
            c18493c.f63587a += valueOf.intValue();
        }
        if (num != null) {
            c18493c.f63587a += num.intValue();
        }
        final ContactLoader loadOnlyFromCache = new ContactLoader().addFields(ContactField.fullName, ContactField.deviceId, ContactField.photoUrl).addDeviceIdAndPhotoLoaders().setLoadOnlyFromCache();
        final ReentrantLock reentrantLock = new ReentrantLock();
        for (Map.Entry entry2 : hashMap4.entrySet()) {
            AnalyticsCallsData.CallType callType = (AnalyticsCallsData.CallType) entry2.getKey();
            List b = C18282n.m4141b((Iterable) C18282n.m4145a((Iterable) C18247ai.m4246d((Map) entry2.getValue()), new Comparator<T>() { // from class: com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard$$special$$inlined$sortedByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return C18299a.m4103a(Integer.valueOf(((Number) ((C18538n) t2).f63625b).intValue()), Integer.valueOf(((Number) ((C18538n) t).f63625b).intValue()));
                }
            }), this.numberOfItems);
            if (CollectionUtils.m26068b(b)) {
                AnalyticsCallsData.CallType callType2 = callType;
                if (callType == AnalyticsCallsData.CallType.MISSED_CALL) {
                    Iterator it5 = b.iterator();
                    while (true) {
                        callType2 = callType;
                        if (!it5.hasNext()) {
                            break;
                        }
                        C18538n c18538n = (C18538n) it5.next();
                        final String str = (String) c18538n.f63624a;
                        final int intValue = ((Number) c18538n.f63625b).intValue();
                        this.unansweredCallsMultiTask.m28974a(new Task() { // from class: com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1
                            @Override // com.callapp.contacts.manager.task.Task
                            public final void doTask() {
                                List list2;
                                final ContactData contactData = loadOnlyFromCache.load(str);
                                try {
                                    reentrantLock.lock();
                                    CircleGraphData circleGraphData = new CircleGraphData(ThemeUtils.getColor(2131099675), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 100.0f, BitmapDescriptorFactory.HUE_RED, 4.0f, false, 0L, null, null, 0, 0, 0, false, null, false, 65494, null);
                                    CircleGraphData circleGraphData2 = new CircleGraphData(ThemeUtils.getColor(2131099675), BitmapDescriptorFactory.HUE_RED, c18493c.f63587a, BitmapDescriptorFactory.HUE_RED, intValue, 18.0f, true, 0L, null, null, 0, 0, 0, false, new PointF(20.0f, 20.0f), false, 49034, null);
                                    if (intValue > BitmapDescriptorFactory.HUE_RED) {
                                        list2 = Arrays.asList(circleGraphData, circleGraphData2);
                                        C18524p.m3843b(list2, "Arrays.asList(outerCircle, innerCircle)");
                                    } else {
                                        list2 = Arrays.asList(circleGraphData);
                                        C18524p.m3843b(list2, "Arrays.asList(outerCircle)");
                                    }
                                    int initialRange = (int) circleGraphData2.getInitialRange();
                                    Boolean bool = Boolean.TRUE;
                                    int color = ThemeUtils.getColor(2131100140);
                                    int i = intValue;
                                    C18524p.m3843b(contactData, "contactData");
                                    String photoUrl = contactData.getPhotoUrl();
                                    String fullName = contactData.getFullName();
                                    String nameOrNumber = contactData.getNameOrNumber();
                                    CallAppApplication callAppApplication = CallAppApplication.get();
                                    C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
                                    MultiCircleGraphData multiCircleGraphData = new MultiCircleGraphData(list2, null, null, null, String.valueOf(initialRange), nameOrNumber, Integer.valueOf(color), null, 2131362355, i, null, photoUrl, fullName, bool, null, null, null, null, Float.valueOf(callAppApplication.getResources().getDimension(2131165695)), null, 771214, null);
                                    multiCircleGraphData.setEvents(new CircleGraphEvents() { // from class: com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$1.1
                                        @Override // com.callapp.contacts.activity.analytics.circleGraph.CircleGraphEvents
                                        /* renamed from: a */
                                        public final void mo31638a() {
                                            Context context = this.getContext();
                                            ContactData contactData2 = contactData;
                                            C18524p.m3843b(contactData2, "contactData");
                                            long deviceId = contactData2.getDeviceId();
                                            ContactData contactData3 = contactData;
                                            C18524p.m3843b(contactData3, "contactData");
                                            Phone phone = contactData3.getPhone();
                                            C18524p.m3843b(phone, "contactData.phone");
                                            Intent createIntent = ContactDetailsActivity.createIntent(context, deviceId, phone.getRawNumber(), null, true, null, "InsightsUnansweredCard", ENTRYPOINT.INSIGHTS);
                                            C18524p.m3843b(createIntent, "ContactDetailsActivity.c???rd\", ENTRYPOINT.INSIGHTS)");
                                            this.getContext().startActivity(createIntent);
                                        }
                                    });
                                    arrayList4.add(multiCircleGraphData);
                                } finally {
                                    reentrantLock.unlock();
                                }
                            }
                        });
                    }
                }
                callType = callType2;
                if (callType2 == AnalyticsCallsData.CallType.NOT_ANSWER) {
                    Iterator it6 = b.iterator();
                    while (true) {
                        callType = callType2;
                        if (!it6.hasNext()) {
                            break;
                        }
                        C18538n c18538n2 = (C18538n) it6.next();
                        final String str2 = (String) c18538n2.f63624a;
                        final int intValue2 = ((Number) c18538n2.f63625b).intValue();
                        this.unansweredCallsMultiTask.m28974a(new Task() { // from class: com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2
                            @Override // com.callapp.contacts.manager.task.Task
                            public final void doTask() {
                                List list2;
                                final ContactData contactData = loadOnlyFromCache.load(str2);
                                try {
                                    reentrantLock.lock();
                                    CircleGraphData circleGraphData = new CircleGraphData(ThemeUtils.getColor(2131100228), BitmapDescriptorFactory.HUE_RED, c18493c.f63587a, BitmapDescriptorFactory.HUE_RED, intValue2, 15.0f, true, 0L, null, null, 0, 0, 0, false, new PointF(20.0f, 20.0f), false, 49034, null);
                                    if (intValue2 > BitmapDescriptorFactory.HUE_RED) {
                                        list2 = Arrays.asList(circleGraphData);
                                        C18524p.m3843b(list2, "Arrays.asList(outerCircle)");
                                    } else {
                                        list2 = Collections.emptyList();
                                        C18524p.m3843b(list2, "Collections.emptyList()");
                                    }
                                    Boolean bool = Boolean.TRUE;
                                    int initialRange = (int) circleGraphData.getInitialRange();
                                    float dimension = CallAppApplication.get().getResources().getDimension(2131165291);
                                    int color = ThemeUtils.getColor(2131099675);
                                    int i = intValue2;
                                    int color2 = ThemeUtils.getColor(2131100140);
                                    CallAppApplication callAppApplication = CallAppApplication.get();
                                    C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
                                    float dimension2 = callAppApplication.getResources().getDimension(2131165695);
                                    C18524p.m3843b(contactData, "contactData");
                                    MultiCircleGraphData multiCircleGraphData = new MultiCircleGraphData(list2, null, null, null, String.valueOf(initialRange), contactData.getNameOrNumber(), Integer.valueOf(color2), Float.valueOf(dimension), 2131362355, i, null, contactData.getPhotoUrl(), contactData.getFullName(), bool, null, null, null, Integer.valueOf(color), Float.valueOf(dimension2), null, 640014, null);
                                    multiCircleGraphData.setEvents(new CircleGraphEvents() { // from class: com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard$getWhoICalledTheMostData$$inlined$forEach$lambda$2.1
                                        @Override // com.callapp.contacts.activity.analytics.circleGraph.CircleGraphEvents
                                        /* renamed from: a */
                                        public final void mo31638a() {
                                            Context context = this.getContext();
                                            ContactData contactData2 = contactData;
                                            C18524p.m3843b(contactData2, "contactData");
                                            long deviceId = contactData2.getDeviceId();
                                            ContactData contactData3 = contactData;
                                            C18524p.m3843b(contactData3, "contactData");
                                            Phone phone = contactData3.getPhone();
                                            C18524p.m3843b(phone, "contactData.phone");
                                            Intent createIntent = ContactDetailsActivity.createIntent(context, deviceId, phone.getRawNumber(), null, true, null, "InsightsUnansweredCard", ENTRYPOINT.INSIGHTS);
                                            C18524p.m3843b(createIntent, "ContactDetailsActivity.c???rd\", ENTRYPOINT.INSIGHTS)");
                                            this.getContext().startActivity(createIntent);
                                        }
                                    });
                                    arrayList5.add(multiCircleGraphData);
                                } finally {
                                    reentrantLock.unlock();
                                }
                            }
                        });
                    }
                }
            }
            int size3 = this.numberOfItems - b.size();
            if (callType == AnalyticsCallsData.CallType.MISSED_CALL) {
                for (int i = 0; i < size3; i++) {
                    List asList = Arrays.asList(new CircleGraphData(ThemeUtils.getColor(2131099675), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 100.0f, BitmapDescriptorFactory.HUE_RED, 4.0f, false, 0L, null, null, 0, 0, 0, false, null, false, 65494, null));
                    C18524p.m3843b(asList, "Arrays.asList(outerCircle)");
                    String string = Activities.getString(2131887305);
                    Boolean bool = Boolean.TRUE;
                    float dimension = CallAppApplication.get().getResources().getDimension(2131165291);
                    int color = ThemeUtils.getColor(2131099919);
                    CallAppApplication callAppApplication = CallAppApplication.get();
                    C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
                    arrayList4.add(new MultiCircleGraphData(asList, null, null, null, string, null, Integer.valueOf(color), Float.valueOf(dimension), 2131362355, 0, null, null, null, bool, null, null, null, null, Float.valueOf(callAppApplication.getResources().getDimension(2131165695)), null, 777262, null));
                }
            }
            if (callType == AnalyticsCallsData.CallType.NOT_ANSWER) {
                for (int i2 = 0; i2 < size3; i2++) {
                    List emptyList = Collections.emptyList();
                    C18524p.m3843b(emptyList, "Collections.emptyList()");
                    String string2 = Activities.getString(2131887305);
                    Boolean bool2 = Boolean.TRUE;
                    int color2 = ThemeUtils.getColor(2131099675);
                    int color3 = ThemeUtils.getColor(2131099919);
                    CallAppApplication callAppApplication2 = CallAppApplication.get();
                    C18524p.m3843b(callAppApplication2, "CallAppApplication.get()");
                    arrayList5.add(new MultiCircleGraphData(emptyList, null, null, null, string2, null, Integer.valueOf(color3), null, 2131362355, 0, null, null, null, bool2, null, null, null, Integer.valueOf(color2), Float.valueOf(callAppApplication2.getResources().getDimension(2131165695)), null, 646318, null));
                }
            }
        }
        this.unansweredCallsMultiTask.m28975a();
        ArrayList arrayList6 = arrayList4;
        if (arrayList6.size() > 1) {
            C18282n.m4161a((List) arrayList6, new Comparator<T>() { // from class: com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard$getWhoICalledTheMostData$$inlined$sortByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return C18299a.m4103a(Integer.valueOf(((MultiCircleGraphData) t2).getCircleGraphProgressValue()), Integer.valueOf(((MultiCircleGraphData) t).getCircleGraphProgressValue()));
                }
            });
        }
        ArrayList arrayList7 = arrayList5;
        if (arrayList7.size() > 1) {
            C18282n.m4161a((List) arrayList7, new Comparator<T>() { // from class: com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard$getWhoICalledTheMostData$$inlined$sortByDescending$2
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return C18299a.m4103a(Integer.valueOf(((MultiCircleGraphData) t2).getCircleGraphProgressValue()), Integer.valueOf(((MultiCircleGraphData) t).getCircleGraphProgressValue()));
                }
            });
        }
        return new C18538n<>(arrayList4, arrayList5);
    }

    @Override // com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent
    public final void onAnalyticsRefreshCard(PresentersContainer.MODE mode) {
        C18524p.m3840d(mode, "mode");
        this.mode = mode;
        refreshCardData();
    }

    public final void onBindViewHolder(UnansweredCallsCardCardHolder unansweredCallsCardCardHolder) {
        CircleGraphFragment circleGraphFragment;
        CircleGraphFragment circleGraphFragment2;
        this.alreadyBounded = true;
        if (unansweredCallsCardCardHolder != null) {
            Boolean bool = Prefs.f26339cJ.get();
            C18524p.m3843b(bool, "Prefs.isPremium.get()");
            if (bool.booleanValue()) {
                unansweredCallsCardCardHolder.getDataLayout().setVisibility(0);
                unansweredCallsCardCardHolder.getEmptyLayout().setVisibility(8);
            } else {
                unansweredCallsCardCardHolder.getDataLayout().setVisibility(8);
                unansweredCallsCardCardHolder.getEmptyLayout().setVisibility(0);
                if (ThemeUtils.isThemeLight()) {
                    unansweredCallsCardCardHolder.getEmptyImg().setImageResource(2131232370);
                } else {
                    unansweredCallsCardCardHolder.getEmptyImg().setImageResource(2131232371);
                }
            }
            unansweredCallsCardCardHolder.getYouAvoidTitle().setText(Activities.getString(2131887192));
            unansweredCallsCardCardHolder.getAvoidYouTitle().setText(Activities.getString(2131888104));
            unansweredCallsCardCardHolder.getYouAvoidTitle().setTextColor(ThemeUtils.getColor(2131100140));
            unansweredCallsCardCardHolder.getAvoidYouTitle().setTextColor(ThemeUtils.getColor(2131100140));
            unansweredCallsCardCardHolder.getYouAvoidSubTitle().setText(Activities.getString(2131886543));
            unansweredCallsCardCardHolder.getAvoidYouSubTitle().setText(Activities.getString(2131886513));
            unansweredCallsCardCardHolder.getYouAvoidSubTitle().setTextColor(ThemeUtils.getColor(2131100108));
            unansweredCallsCardCardHolder.getAvoidYouSubTitle().setTextColor(ThemeUtils.getColor(2131100108));
            unansweredCallsCardCardHolder.getYouAvoidDivider().setBackgroundColor(ThemeUtils.getColor(2131099891));
            unansweredCallsCardCardHolder.getAvoidYouDivider().setBackgroundColor(ThemeUtils.getColor(2131099891));
        }
        if (this.shouldShowYouAvoidAnimation && (circleGraphFragment2 = this.youAvoidFragment) != null) {
            circleGraphFragment2.m31636a(this.youAvoidData);
        }
        if (!this.shouldShowAvoidYouAnimation || (circleGraphFragment = this.avoidYouFragment) == null) {
            return;
        }
        circleGraphFragment.m31636a(this.avoidYouData);
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public final void onContactChanged(ContactData contact, Set<? extends ContactField> changedFields) {
        C18524p.m3840d(contact, "contact");
        C18524p.m3840d(changedFields, "changedFields");
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final UnansweredCallsCardCardHolder onCreateViewHolder(ViewGroup parent) {
        C18524p.m3840d(parent, "parent");
        Fragment findFragment = this.presentersContainer.findFragment(2131364577);
        Objects.requireNonNull(findFragment, "null cannot be cast to non-null type com.callapp.contacts.activity.analytics.circleGraph.fragment.CircleGraphFragment");
        this.youAvoidFragment = (CircleGraphFragment) findFragment;
        Fragment findFragment2 = this.presentersContainer.findFragment(2131362045);
        Objects.requireNonNull(findFragment2, "null cannot be cast to non-null type com.callapp.contacts.activity.analytics.circleGraph.fragment.CircleGraphFragment");
        this.avoidYouFragment = (CircleGraphFragment) findFragment2;
        PresentersContainer presentersContainer = this.presentersContainer;
        C18524p.m3843b(presentersContainer, "presentersContainer");
        Context realContext = presentersContainer.getRealContext();
        ViewGroup viewGroup = parent;
        InlineVisibilityTracker inlineVisibilityTracker = new InlineVisibilityTracker(realContext, viewGroup, parent.findViewById(2131362047), 20, 500);
        this.avoidYouVisibilityTracker = inlineVisibilityTracker;
        C18524p.m3851a(inlineVisibilityTracker);
        inlineVisibilityTracker.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard$onCreateViewHolder$1
            @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onVisibilityChanged() {
                /*
                    r3 = this;
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard r0 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.this
                    r1 = 1
                    com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.access$setShouldShowAvoidYouAnimation$p(r0, r1)
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard r0 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.this
                    boolean r0 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.access$getAlreadyBounded$p(r0)
                    if (r0 == 0) goto L29
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard r0 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.this
                    com.callapp.contacts.activity.analytics.circleGraph.fragment.CircleGraphFragment r0 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.access$getYouAvoidFragment$p(r0)
                    r4 = r0
                    r0 = r4
                    if (r0 == 0) goto L29
                    r0 = r4
                    r1 = r3
                    com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard r1 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.this
                    java.util.List r1 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.access$getYouAvoidData$p(r1)
                    r0.m31636a(r1)
                L29:
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard r0 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.this
                    com.mopub.mobileads.InlineVisibilityTracker r0 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.access$getAvoidYouVisibilityTracker$p(r0)
                    r4 = r0
                    r0 = r4
                    kotlin.jvm.internal.C18524p.m3851a(r0)
                    r0 = r4
                    r0.destroy()
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard r0 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.this
                    r1 = 0
                    com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.access$setAvoidYouVisibilityTracker$p(r0, r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard$onCreateViewHolder$1.onVisibilityChanged():void");
            }
        });
        PresentersContainer presentersContainer2 = this.presentersContainer;
        C18524p.m3843b(presentersContainer2, "presentersContainer");
        InlineVisibilityTracker inlineVisibilityTracker2 = new InlineVisibilityTracker(presentersContainer2.getRealContext(), viewGroup, parent.findViewById(2131364579), 20, 500);
        this.youAvoidVisibilityTracker = inlineVisibilityTracker2;
        C18524p.m3851a(inlineVisibilityTracker2);
        inlineVisibilityTracker2.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard$onCreateViewHolder$2
            @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onVisibilityChanged() {
                /*
                    r3 = this;
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard r0 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.this
                    r1 = 1
                    com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.access$setShouldShowYouAvoidAnimation$p(r0, r1)
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard r0 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.this
                    boolean r0 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.access$getAlreadyBounded$p(r0)
                    if (r0 == 0) goto L29
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard r0 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.this
                    com.callapp.contacts.activity.analytics.circleGraph.fragment.CircleGraphFragment r0 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.access$getAvoidYouFragment$p(r0)
                    r4 = r0
                    r0 = r4
                    if (r0 == 0) goto L29
                    r0 = r4
                    r1 = r3
                    com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard r1 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.this
                    java.util.List r1 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.access$getAvoidYouData$p(r1)
                    r0.m31636a(r1)
                L29:
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard r0 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.this
                    com.mopub.mobileads.InlineVisibilityTracker r0 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.access$getYouAvoidVisibilityTracker$p(r0)
                    r4 = r0
                    r0 = r4
                    kotlin.jvm.internal.C18524p.m3851a(r0)
                    r0 = r4
                    r0.destroy()
                    r0 = r3
                    com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard r0 = com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.this
                    r1 = 0
                    com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard.access$setYouAvoidVisibilityTracker$p(r0, r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard$onCreateViewHolder$2.onVisibilityChanged():void");
            }
        });
        return new UnansweredCallsCardCardHolder(this, viewGroup);
    }

    @Override // com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public final void onDestroy() {
        InlineVisibilityTracker inlineVisibilityTracker = this.youAvoidVisibilityTracker;
        if (inlineVisibilityTracker != null) {
            inlineVisibilityTracker.destroy();
        }
        InlineVisibilityTracker inlineVisibilityTracker2 = this.avoidYouVisibilityTracker;
        if (inlineVisibilityTracker2 != null) {
            inlineVisibilityTracker2.destroy();
        }
        super.onDestroy();
    }

    public final void refreshCardData() {
        if (this.presentersContainer.getContainerMode() == this.mode) {
            updateCardData(null, true);
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final boolean showShouldExpandButton() {
        return false;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public final void updateCardData(Object obj, boolean z) {
        C18538n<List<MultiCircleGraphData>, List<MultiCircleGraphData>> whoICalledTheMostData = getWhoICalledTheMostData();
        this.youAvoidData = whoICalledTheMostData.f63624a;
        this.avoidYouData = whoICalledTheMostData.f63625b;
        showCard(true);
    }
}
