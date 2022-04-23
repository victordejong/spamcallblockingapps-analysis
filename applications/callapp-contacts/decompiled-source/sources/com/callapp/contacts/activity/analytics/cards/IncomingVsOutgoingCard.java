package com.callapp.contacts.activity.analytics.cards;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.callapp.common.util.Objects;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard;
import com.callapp.contacts.activity.analytics.circleGraph.CircleGraphBuilder;
import com.callapp.contacts.activity.analytics.circleGraph.CircleGraphEvents;
import com.callapp.contacts.activity.analytics.circleGraph.data.CircleGraphData;
import com.callapp.contacts.activity.analytics.circleGraph.data.MultiCircleGraphData;
import com.callapp.contacts.activity.analytics.circleGraph.fragment.CircleGraphFragment;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManagerKotlin;
import com.callapp.contacts.activity.analytics.ui.OutgoingCallsLockDialog;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.InlineVisibilityTracker;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.p;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard.class */
public class IncomingVsOutgoingCard extends AnalyticsWrapperCard<IncomingVsOutgoingCardHolder, Map<AnalyticsCallsData.CallType, Integer>> {
    private Map<AnalyticsCallsData.CallType, Integer> data;
    private CircleGraphFragment incomingFragment;
    private List<MultiCircleGraphData> incomingGraphData;
    private InlineVisibilityTracker incomingVisibilityTracker;
    private PresentersContainer.MODE mode;
    private CircleGraphFragment outgoingFragment;
    private List<MultiCircleGraphData> outgoingGraphData;
    private InlineVisibilityTracker outgoingVisibilityTracker;
    private boolean shouldShowIncomingAnimation = false;
    private boolean shouldShowOutgoingAnimation = false;
    private boolean alreadyBounded = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/IncomingVsOutgoingCard$IncomingVsOutgoingCardHolder.class */
    public class IncomingVsOutgoingCardHolder {

        /* renamed from: b  reason: collision with root package name */
        private final TextView f10769b;

        /* renamed from: c  reason: collision with root package name */
        private final TextView f10770c;

        /* renamed from: d  reason: collision with root package name */
        private final TextView f10771d;
        private final TextView e;
        private final View f;
        private final View g;

        public IncomingVsOutgoingCardHolder(View view) {
            this.f10769b = (TextView) view.findViewById(2131363084);
            this.f10770c = (TextView) view.findViewById(2131363442);
            this.f10771d = (TextView) view.findViewById(2131363083);
            this.e = (TextView) view.findViewById(2131363441);
            this.f = view.findViewById(2131363085);
            this.g = view.findViewById(2131363443);
        }
    }

    public IncomingVsOutgoingCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558484);
    }

    private CircleGraphBuilder getNumberOfCallsProgressBarData(Map<AnalyticsCallsData.CallType, Integer> map, AnalyticsCallsData.CallType callType) {
        String str;
        float f;
        String str2;
        boolean z = callType == AnalyticsCallsData.CallType.OUTGOING && !PhoneManager.get().isDefaultPhoneApp();
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        float f4 = BitmapDescriptorFactory.HUE_RED;
        float f5 = BitmapDescriptorFactory.HUE_RED;
        for (Map.Entry<AnalyticsCallsData.CallType, Integer> entry : map.entrySet()) {
            if (entry.getKey().equals(AnalyticsCallsData.CallType.INCOMING)) {
                f2 += entry.getValue().intValue();
            } else if (entry.getKey().equals(AnalyticsCallsData.CallType.MISSED_CALL)) {
                f3 += entry.getValue().intValue();
            } else if (entry.getKey().equals(AnalyticsCallsData.CallType.OUTGOING)) {
                f4 += entry.getValue().intValue();
            } else if (entry.getKey().equals(AnalyticsCallsData.CallType.NOT_ANSWER)) {
                f5 += entry.getValue().intValue();
            }
        }
        float f6 = f2 + f3;
        if (callType == AnalyticsCallsData.CallType.INCOMING) {
            str = Activities.getString(2131887192);
            str2 = Activities.getString(2131887489);
            f = f2;
        } else {
            if (PhoneManager.get().isDefaultPhoneApp()) {
                f3 = f5;
                f6 = f4 + f5;
                f = f4;
            } else {
                f6 = BitmapDescriptorFactory.HUE_RED;
                f = BitmapDescriptorFactory.HUE_RED;
                f3 = BitmapDescriptorFactory.HUE_RED;
            }
            str = Activities.getString(2131888104);
            str2 = Activities.getString(2131886243);
        }
        CircleGraphBuilder.Builder builder = new CircleGraphBuilder.Builder();
        CircleGraphData circleGraphData = new CircleGraphData(ThemeUtils.getColor(2131099920), 15.0f);
        circleGraphData.setInitialRange(100.0f);
        CircleGraphData circleGraphData2 = new CircleGraphData(ThemeUtils.getColor(2131099675), 15.0f);
        circleGraphData2.setTargetRange(f3);
        circleGraphData2.setMaxRange(f6);
        circleGraphData2.setUpdateProgress(true);
        int i = (f3 > BitmapDescriptorFactory.HUE_RED ? 1 : (f3 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        MultiCircleGraphData multiCircleGraphData = i > 0 ? new MultiCircleGraphData(Arrays.asList(circleGraphData, circleGraphData2)) : new MultiCircleGraphData(Arrays.asList(circleGraphData));
        multiCircleGraphData.setBottomText(str);
        multiCircleGraphData.setBottomTextColor(Integer.valueOf(ThemeUtils.getColor(2131100108)));
        multiCircleGraphData.setCenterTextColor(Integer.valueOf(ThemeUtils.getColor(2131100140)));
        multiCircleGraphData.setResourceTextToUpdate(2131362356);
        multiCircleGraphData.setCenterText((z || i == 0) ? Activities.getString(2131887306) : String.valueOf((int) f3));
        multiCircleGraphData.setCenterTextSize(Float.valueOf(CallAppApplication.get().getResources().getDimension(2131165583)));
        multiCircleGraphData.setBottomTextSize(Float.valueOf(CallAppApplication.get().getResources().getDimension(2131165693)));
        CircleGraphData circleGraphData3 = new CircleGraphData(ThemeUtils.getColor(2131099920), 15.0f);
        circleGraphData3.setInitialRange(100.0f);
        CircleGraphData circleGraphData4 = new CircleGraphData(ThemeUtils.getColor(2131099914), 15.0f);
        circleGraphData4.setTargetRange(f);
        circleGraphData4.setSpinClockwise(false);
        circleGraphData4.setMaxRange(f6);
        circleGraphData4.setUpdateProgress(true);
        int i2 = (f > BitmapDescriptorFactory.HUE_RED ? 1 : (f == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        MultiCircleGraphData multiCircleGraphData2 = i2 > 0 ? new MultiCircleGraphData(Arrays.asList(circleGraphData3, circleGraphData4)) : new MultiCircleGraphData(Arrays.asList(circleGraphData3));
        multiCircleGraphData2.setBottomText(str2);
        multiCircleGraphData2.setBottomTextColor(Integer.valueOf(ThemeUtils.getColor(2131100108)));
        multiCircleGraphData2.setCenterTextColor(Integer.valueOf(ThemeUtils.getColor(2131100140)));
        multiCircleGraphData2.setCenterTextSize(Float.valueOf(CallAppApplication.get().getResources().getDimension(2131165583)));
        multiCircleGraphData2.setResourceTextToUpdate(2131362356);
        multiCircleGraphData2.setCenterText((z || i2 == 0) ? Activities.getString(2131887306) : String.valueOf((int) f));
        multiCircleGraphData2.setBottomTextSize(Float.valueOf(CallAppApplication.get().getResources().getDimension(2131165693)));
        CircleGraphData circleGraphData5 = new CircleGraphData(ThemeUtils.getColor(2131099920), 15.0f);
        circleGraphData5.setInitialRange(100.0f);
        CircleGraphData circleGraphData6 = new CircleGraphData(ThemeUtils.getColor(2131099675), 15.0f);
        circleGraphData6.setTargetRange(f3);
        circleGraphData6.setMaxRange(f6);
        CircleGraphData circleGraphData7 = new CircleGraphData(ThemeUtils.getColor(2131099914), 15.0f);
        circleGraphData7.setTargetRange(f);
        circleGraphData7.setSpinClockwise(false);
        circleGraphData7.setMaxRange(f6);
        ArrayList arrayList = new ArrayList();
        arrayList.add(circleGraphData5);
        if (i > 0) {
            arrayList.add(circleGraphData6);
        }
        if (i2 > 0) {
            arrayList.add(circleGraphData7);
        }
        MultiCircleGraphData multiCircleGraphData3 = new MultiCircleGraphData(arrayList);
        multiCircleGraphData3.setBottomText(Activities.getString(2131887911));
        multiCircleGraphData3.setBottomTextColor(Integer.valueOf(ThemeUtils.getColor(2131100108)));
        multiCircleGraphData3.setCenterTextColor(Integer.valueOf(ThemeUtils.getColor(2131100228)));
        multiCircleGraphData3.setCircleGraphBackground(Integer.valueOf(ThemeUtils.getColor(callType == AnalyticsCallsData.CallType.INCOMING ? 2131099935 : 2131100071)));
        multiCircleGraphData3.setResourceTextToUpdate(2131362356);
        String valueOf = z ? "" : String.valueOf((int) f6);
        multiCircleGraphData3.setCenterTextSize(Float.valueOf(CallAppApplication.get().getResources().getDimension(2131165583)));
        multiCircleGraphData3.setCenterText(valueOf);
        multiCircleGraphData3.setBottomTextSize(Float.valueOf(CallAppApplication.get().getResources().getDimension(2131165693)));
        if (z) {
            multiCircleGraphData3.setCircleGraphImage(2131231396);
            multiCircleGraphData3.setCircleGraphImageColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN));
            multiCircleGraphData3.setCircleGraphImageRadius(Float.valueOf(CallAppApplication.get().getResources().getDimension(2131165559)));
            multiCircleGraphData3.setEvents(new CircleGraphEvents() { // from class: com.callapp.contacts.activity.analytics.cards.IncomingVsOutgoingCard.3
                @Override // com.callapp.contacts.activity.analytics.circleGraph.CircleGraphEvents
                public final void a() {
                    PopupManager.get().a(IncomingVsOutgoingCard.this.presentersContainer.getRealContext(), new OutgoingCallsLockDialog(IncomingVsOutgoingCard.this.presentersContainer));
                }
            });
        } else {
            multiCircleGraphData3.setCircleGraphImage(0);
            multiCircleGraphData3.setEvents(null);
        }
        return builder.a(multiCircleGraphData3).a(multiCircleGraphData2).a(multiCircleGraphData).a();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return Activities.getString(2131886537);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 30;
    }

    @Override // com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent
    public void onAnalyticsRefreshCard(PresentersContainer.MODE mode) {
        this.mode = mode;
        refreshCardData();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(IncomingVsOutgoingCardHolder incomingVsOutgoingCardHolder) {
        this.alreadyBounded = true;
        incomingVsOutgoingCardHolder.f10769b.setText(Activities.getString(2131886534));
        incomingVsOutgoingCardHolder.f10769b.setTextColor(ThemeUtils.getColor(2131100140));
        incomingVsOutgoingCardHolder.f10771d.setText(Activities.getString(2131886533));
        incomingVsOutgoingCardHolder.f10771d.setTextColor(ThemeUtils.getColor(2131100108));
        incomingVsOutgoingCardHolder.f10770c.setText(Activities.getString(2131886536));
        incomingVsOutgoingCardHolder.f10770c.setTextColor(ThemeUtils.getColor(2131100140));
        incomingVsOutgoingCardHolder.e.setText(Activities.getString(2131886535));
        incomingVsOutgoingCardHolder.e.setTextColor(ThemeUtils.getColor(2131100108));
        incomingVsOutgoingCardHolder.f.setBackgroundColor(ThemeUtils.getColor(2131099891));
        incomingVsOutgoingCardHolder.g.setBackgroundColor(ThemeUtils.getColor(2131099891));
        if (this.shouldShowIncomingAnimation) {
            this.incomingFragment.a(this.incomingGraphData);
        }
        if (this.shouldShowOutgoingAnimation) {
            this.outgoingFragment.a(this.outgoingGraphData);
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public IncomingVsOutgoingCardHolder onCreateViewHolder(ViewGroup viewGroup) {
        IncomingVsOutgoingCardHolder incomingVsOutgoingCardHolder = new IncomingVsOutgoingCardHolder(viewGroup);
        InlineVisibilityTracker inlineVisibilityTracker = new InlineVisibilityTracker(this.presentersContainer.getRealContext(), viewGroup, viewGroup.findViewById(2131363083), 20, 500);
        this.incomingVisibilityTracker = inlineVisibilityTracker;
        inlineVisibilityTracker.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.activity.analytics.cards.IncomingVsOutgoingCard.1
            @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
            public void onVisibilityChanged() {
                IncomingVsOutgoingCard.this.shouldShowIncomingAnimation = true;
                if (IncomingVsOutgoingCard.this.alreadyBounded) {
                    IncomingVsOutgoingCard.this.incomingFragment.a(IncomingVsOutgoingCard.this.incomingGraphData);
                }
                if (IncomingVsOutgoingCard.this.incomingVisibilityTracker != null) {
                    IncomingVsOutgoingCard.this.incomingVisibilityTracker.destroy();
                    IncomingVsOutgoingCard.this.incomingVisibilityTracker = null;
                }
            }
        });
        InlineVisibilityTracker inlineVisibilityTracker2 = new InlineVisibilityTracker(this.presentersContainer.getRealContext(), viewGroup, viewGroup.findViewById(2131363441), 20, 500);
        this.outgoingVisibilityTracker = inlineVisibilityTracker2;
        inlineVisibilityTracker2.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.activity.analytics.cards.IncomingVsOutgoingCard.2
            @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
            public void onVisibilityChanged() {
                IncomingVsOutgoingCard.this.shouldShowOutgoingAnimation = true;
                if (IncomingVsOutgoingCard.this.alreadyBounded) {
                    IncomingVsOutgoingCard.this.outgoingFragment.a(IncomingVsOutgoingCard.this.outgoingGraphData);
                }
                if (IncomingVsOutgoingCard.this.outgoingVisibilityTracker != null) {
                    IncomingVsOutgoingCard.this.outgoingVisibilityTracker.destroy();
                    IncomingVsOutgoingCard.this.outgoingVisibilityTracker = null;
                }
            }
        });
        this.incomingFragment = (CircleGraphFragment) this.presentersContainer.findFragment(2131362922);
        this.outgoingFragment = (CircleGraphFragment) this.presentersContainer.findFragment(2131362924);
        return incomingVsOutgoingCardHolder;
    }

    @Override // com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        InlineVisibilityTracker inlineVisibilityTracker = this.outgoingVisibilityTracker;
        if (inlineVisibilityTracker != null) {
            inlineVisibilityTracker.destroy();
            this.outgoingVisibilityTracker = null;
        }
        InlineVisibilityTracker inlineVisibilityTracker2 = this.incomingVisibilityTracker;
        if (inlineVisibilityTracker2 != null) {
            inlineVisibilityTracker2.destroy();
            this.incomingVisibilityTracker = null;
        }
        super.onDestroy();
    }

    public void refreshCardData() {
        if (this.presentersContainer.getContainerMode() == this.mode) {
            AnalyticsDataManagerKotlin.Companion companion = AnalyticsDataManagerKotlin.f10896a;
            AnalyticsDataManager.DatePeriod datePeriod = AnalyticsDataManager.DatePeriod.CURRENT;
            p.d(datePeriod, "datePeriod");
            HashMap hashMap = new HashMap();
            List<AnalyticsCallsData> c2 = AnalyticsDataManagerKotlin.Companion.c(datePeriod).a().c();
            p.b(c2, "getQuery(datePeriod).build().find()");
            List<AnalyticsCallsData> list = c2;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : list) {
                AnalyticsCallsData it2 = (AnalyticsCallsData) obj;
                p.b(it2, "it");
                AnalyticsCallsData.CallType callType = it2.getCallType();
                Object obj2 = linkedHashMap.get(callType);
                ArrayList arrayList = obj2;
                if (obj2 == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(callType, arrayList);
                }
                ((List) arrayList).add(obj);
            }
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                hashMap.put(entry.getKey(), Integer.valueOf(((List) entry.getValue()).size()));
            }
            updateCardData((Map<AnalyticsCallsData.CallType, Integer>) hashMap, true);
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCardData(Map<AnalyticsCallsData.CallType, Integer> map, boolean z) {
        if (!Objects.a(this.data, map)) {
            this.data = map;
            this.incomingGraphData = getNumberOfCallsProgressBarData(map, AnalyticsCallsData.CallType.INCOMING).getMultiCircleGraphData();
            this.outgoingGraphData = getNumberOfCallsProgressBarData(map, AnalyticsCallsData.CallType.OUTGOING).getMultiCircleGraphData();
            showCard(true);
        }
    }
}
