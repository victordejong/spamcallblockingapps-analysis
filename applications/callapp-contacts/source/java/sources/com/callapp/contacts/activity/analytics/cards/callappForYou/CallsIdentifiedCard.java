package com.callapp.contacts.activity.analytics.cards.callappForYou;

import android.graphics.PointF;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.callapp.common.util.Objects;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard;
import com.callapp.contacts.activity.analytics.circleGraph.CircleGraphBuilder;
import com.callapp.contacts.activity.analytics.circleGraph.data.CircleGraphData;
import com.callapp.contacts.activity.analytics.circleGraph.data.MultiCircleGraphData;
import com.callapp.contacts.activity.analytics.circleGraph.fragment.CircleGraphFragment;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManagerKotlin;
import com.callapp.contacts.activity.analytics.graph.charts.SeriesItem;
import com.callapp.contacts.activity.analytics.p236ui.AnalyticsDatePickerManager;
import com.callapp.contacts.activity.contact.cards.MultiCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.HtmlUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.InlineVisibilityTracker;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard.class */
public class CallsIdentifiedCard extends AnalyticsWrapperCard<CallsIdentifiedCardCardHolder, Pair<AnalyticsDataManager.AnalyticsIdentifiedCardData, AnalyticsDataManager.AnalyticsIdentifiedCardData>> {
    private InlineVisibilityTracker callIdentificationVisibilityTracker;
    private CircleGraphFragment circleGraphFragment;
    private AnalyticsDataManager.AnalyticsIdentifiedCardData identifiedDataCurr;
    private AnalyticsDataManager.AnalyticsIdentifiedCardData identifiedDataPrev;
    private PresentersContainer.MODE mode;
    private List<MultiCircleGraphData> multiCircleGraphData;
    private boolean shouldShowCallIdentificationAnimation = false;
    private boolean alreadyBounded = false;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder.class */
    public class CallsIdentifiedCardCardHolder {

        /* renamed from: b */
        private final LinearLayout f19702b;

        /* renamed from: c */
        private final TextView f19703c;

        /* renamed from: d */
        private final TextView f19704d;

        /* renamed from: e */
        private final TextView f19705e;

        /* renamed from: f */
        private final TextView f19706f;

        /* renamed from: g */
        private final TextView f19707g;

        /* renamed from: h */
        private final TextView f19708h;

        /* renamed from: i */
        private final TextView f19709i;

        /* renamed from: j */
        private final TextView f19710j;

        /* renamed from: k */
        private final TextView f19711k;

        /* renamed from: l */
        private final TextView f19712l;

        /* renamed from: m */
        private final TextView f19713m;

        /* renamed from: n */
        private final TextView f19714n;

        /* renamed from: o */
        private final ImageView f19715o;

        /* renamed from: p */
        private final ImageView f19716p;

        /* renamed from: q */
        private final ImageView f19717q;

        /* renamed from: r */
        private final ImageView f19718r;

        public CallsIdentifiedCardCardHolder(View view) {
            CallsIdentifiedCard.this = r5;
            this.f19702b = (LinearLayout) view.findViewById(2131362229);
            this.f19703c = (TextView) view.findViewById(2131364130);
            this.f19704d = (TextView) view.findViewById(2131364013);
            this.f19705e = (TextView) view.findViewById(2131364208);
            this.f19706f = (TextView) view.findViewById(2131364207);
            this.f19707g = (TextView) view.findViewById(2131364205);
            this.f19708h = (TextView) view.findViewById(2131364200);
            this.f19717q = (ImageView) view.findViewById(2131364202);
            this.f19709i = (TextView) view.findViewById(2131362462);
            this.f19710j = (TextView) view.findViewById(2131362461);
            this.f19711k = (TextView) view.findViewById(2131362460);
            this.f19712l = (TextView) view.findViewById(2131362451);
            this.f19718r = (ImageView) view.findViewById(2131362453);
            this.f19713m = (TextView) view.findViewById(2131363491);
            this.f19714n = (TextView) view.findViewById(2131363490);
            this.f19715o = (ImageView) view.findViewById(2131364201);
            this.f19716p = (ImageView) view.findViewById(2131362452);
        }
    }

    public CallsIdentifiedCard(MultiCard multiCard) {
        super(multiCard, 2131558480);
    }

    private CircleGraphBuilder getTypePieCircle(AnalyticsDataManager.AnalyticsIdentifiedCardData analyticsIdentifiedCardData) {
        CircleGraphBuilder.Builder builder = new CircleGraphBuilder.Builder();
        CircleGraphData circleGraphData = new CircleGraphData(ThemeUtils.getColor(2131099711), 20.0f);
        circleGraphData.setInitialRange(100.0f);
        CircleGraphData circleGraphData2 = new CircleGraphData(ThemeUtils.getColor(2131100228), 20.0f);
        circleGraphData2.setTargetRange(analyticsIdentifiedCardData.getPercent());
        circleGraphData2.setInitialRange(BitmapDescriptorFactory.HUE_RED);
        CircleGraphData circleGraphData3 = new CircleGraphData(ThemeUtils.getColor(2131099711), BitmapDescriptorFactory.HUE_RED);
        circleGraphData3.setTargetRange(analyticsIdentifiedCardData.getPercent());
        circleGraphData3.setInitialRange(BitmapDescriptorFactory.HUE_RED);
        circleGraphData3.setUpdateProgress(true);
        circleGraphData3.setSetPercentageSign(true);
        circleGraphData3.setInset(new PointF(10.0f, 10.0f));
        circleGraphData3.setChartStyle(SeriesItem.ChartStyle.STYLE_PIE);
        MultiCircleGraphData multiCircleGraphData = new MultiCircleGraphData(Arrays.asList(circleGraphData, circleGraphData2, circleGraphData3));
        multiCircleGraphData.setCenterTextColor(Integer.valueOf(ThemeUtils.getColor(2131100228)));
        multiCircleGraphData.setResourceTextToUpdate(2131362356);
        multiCircleGraphData.setCenterText("0");
        multiCircleGraphData.setCenterTextSize(Float.valueOf(CallAppApplication.get().getResources().getDimension(2131165553)));
        multiCircleGraphData.setCircleRadius(Float.valueOf(CallAppApplication.get().getResources().getDimension(2131165665)));
        return builder.m31639a(multiCircleGraphData).m31640a();
    }

    private void refreshCardData() {
        if (this.presentersContainer.getContainerMode() == this.mode) {
            AnalyticsDataManagerKotlin.Companion companion = AnalyticsDataManagerKotlin.f19920a;
            AnalyticsDataManager.AnalyticsIdentifiedCardData m31618b = AnalyticsDataManagerKotlin.Companion.m31618b(AnalyticsDataManager.DatePeriod.CURRENT);
            AnalyticsDataManagerKotlin.Companion companion2 = AnalyticsDataManagerKotlin.f19920a;
            updateCardData(Pair.create(m31618b, AnalyticsDataManagerKotlin.Companion.m31618b(AnalyticsDataManager.DatePeriod.PREVIOUS)), true);
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardBgColor() {
        return ThemeUtils.m27386a(CallAppApplication.get(), 2131100145);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 41;
    }

    @Override // com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent
    public void onAnalyticsRefreshCard(PresentersContainer.MODE mode) {
        this.mode = mode;
        refreshCardData();
    }

    /* JADX WARN: Type inference failed for: r0v107, types: [long] */
    public void onBindViewHolder(CallsIdentifiedCardCardHolder callsIdentifiedCardCardHolder) {
        this.alreadyBounded = true;
        callsIdentifiedCardCardHolder.f19702b.setBackgroundResource(2131230878);
        int color = ThemeUtils.getColor(2131100209);
        ViewUtils.m27316a(callsIdentifiedCardCardHolder.f19702b, Integer.valueOf(color), Integer.valueOf(color));
        callsIdentifiedCardCardHolder.f19703c.setText(Activities.getString(2131886495));
        callsIdentifiedCardCardHolder.f19704d.setText(Activities.getString(2131886494));
        callsIdentifiedCardCardHolder.f19705e.setText(HtmlUtils.m27537b(Activities.getString(2131886497)));
        callsIdentifiedCardCardHolder.f19706f.setText(Activities.getString(2131886496));
        callsIdentifiedCardCardHolder.f19709i.setText(HtmlUtils.m27537b(Activities.getString(2131886491)));
        callsIdentifiedCardCardHolder.f19710j.setText(Activities.getString(2131886490));
        callsIdentifiedCardCardHolder.f19713m.setText(HtmlUtils.m27537b(Activities.getString(2131886493)));
        callsIdentifiedCardCardHolder.f19714n.setText(Activities.getString(2131886492));
        callsIdentifiedCardCardHolder.f19707g.setText(String.valueOf(this.identifiedDataCurr.getTotalIdentifiedCalls()));
        callsIdentifiedCardCardHolder.f19711k.setText(String.valueOf(this.identifiedDataCurr.getTotalIdentifiedContacts()));
        if (Prefs.f26548gG.get() == AnalyticsDatePickerManager.DatePicker.LIFE) {
            callsIdentifiedCardCardHolder.f19712l.setVisibility(8);
            callsIdentifiedCardCardHolder.f19718r.setVisibility(8);
            callsIdentifiedCardCardHolder.f19716p.setVisibility(8);
            callsIdentifiedCardCardHolder.f19708h.setVisibility(8);
            callsIdentifiedCardCardHolder.f19717q.setVisibility(8);
            callsIdentifiedCardCardHolder.f19715o.setVisibility(8);
        } else {
            AnalyticsDataManager.AnalyticsIdentifiedCardData analyticsIdentifiedCardData = this.identifiedDataPrev;
            float percent = (analyticsIdentifiedCardData == null || analyticsIdentifiedCardData.getPercent() == BitmapDescriptorFactory.HUE_RED) ? 0.0f : ((this.identifiedDataCurr.getPercent() - this.identifiedDataPrev.getPercent()) / this.identifiedDataPrev.getPercent()) * 100.0f;
            AnalyticsDataManager.AnalyticsIdentifiedCardData analyticsIdentifiedCardData2 = this.identifiedDataPrev;
            char totalIdentifiedContacts = (analyticsIdentifiedCardData2 == null || analyticsIdentifiedCardData2.getTotalIdentifiedContacts() <= 0) ? (char) 0 : ((this.identifiedDataCurr.getTotalIdentifiedContacts() - this.identifiedDataPrev.getTotalIdentifiedContacts()) / this.identifiedDataPrev.getTotalIdentifiedContacts()) * 100;
            int i = (percent > BitmapDescriptorFactory.HUE_RED ? 1 : (percent == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
            if (i != 0) {
                callsIdentifiedCardCardHolder.f19708h.setText(String.format("%.0f%%", Float.valueOf(percent)));
                int i2 = i > 0 ? 2131231458 : 2131231457;
                int i3 = i > 0 ? 2131232005 : 2131232004;
                callsIdentifiedCardCardHolder.f19717q.setImageResource(i2);
                callsIdentifiedCardCardHolder.f19717q.setColorFilter(ThemeUtils.getColor(2131100228));
                callsIdentifiedCardCardHolder.f19715o.setImageResource(i3);
                callsIdentifiedCardCardHolder.f19715o.setVisibility(0);
                callsIdentifiedCardCardHolder.f19708h.setVisibility(0);
                callsIdentifiedCardCardHolder.f19717q.setVisibility(0);
            } else {
                callsIdentifiedCardCardHolder.f19708h.setVisibility(8);
                callsIdentifiedCardCardHolder.f19715o.setVisibility(8);
                callsIdentifiedCardCardHolder.f19717q.setVisibility(8);
            }
            int i4 = (totalIdentifiedContacts > 0L ? 1 : (totalIdentifiedContacts == 0L ? 0 : -1));
            if (i4 != 0) {
                callsIdentifiedCardCardHolder.f19712l.setText(String.format("%d%%", Long.valueOf(totalIdentifiedContacts)));
                int i5 = i4 > 0 ? 2131231458 : 2131231457;
                int i6 = i > 0 ? 2131232005 : 2131232004;
                callsIdentifiedCardCardHolder.f19718r.setImageResource(i5);
                callsIdentifiedCardCardHolder.f19718r.setColorFilter(ThemeUtils.getColor(2131100228));
                callsIdentifiedCardCardHolder.f19716p.setImageResource(i6);
                callsIdentifiedCardCardHolder.f19712l.setVisibility(0);
                callsIdentifiedCardCardHolder.f19718r.setVisibility(0);
                callsIdentifiedCardCardHolder.f19716p.setVisibility(0);
            } else {
                callsIdentifiedCardCardHolder.f19712l.setVisibility(8);
                callsIdentifiedCardCardHolder.f19718r.setVisibility(8);
                callsIdentifiedCardCardHolder.f19716p.setVisibility(8);
            }
        }
        if (this.shouldShowCallIdentificationAnimation) {
            this.circleGraphFragment.m31636a(this.multiCircleGraphData);
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public CallsIdentifiedCardCardHolder onCreateViewHolder(ViewGroup viewGroup) {
        this.circleGraphFragment = (CircleGraphFragment) this.presentersContainer.findFragment(2131362918);
        InlineVisibilityTracker inlineVisibilityTracker = new InlineVisibilityTracker(this.presentersContainer.getRealContext(), viewGroup, (RelativeLayout) viewGroup.findViewById(2131364206), 20, 500);
        this.callIdentificationVisibilityTracker = inlineVisibilityTracker;
        inlineVisibilityTracker.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.activity.analytics.cards.callappForYou.CallsIdentifiedCard.1
            @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
            public void onVisibilityChanged() {
                CallsIdentifiedCard.this.shouldShowCallIdentificationAnimation = true;
                if (CallsIdentifiedCard.this.alreadyBounded) {
                    CallsIdentifiedCard.this.circleGraphFragment.m31636a(CallsIdentifiedCard.this.multiCircleGraphData);
                }
                if (CallsIdentifiedCard.this.callIdentificationVisibilityTracker != null) {
                    CallsIdentifiedCard.this.callIdentificationVisibilityTracker.destroy();
                    CallsIdentifiedCard.this.callIdentificationVisibilityTracker = null;
                }
            }
        });
        return new CallsIdentifiedCardCardHolder(viewGroup);
    }

    @Override // com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        InlineVisibilityTracker inlineVisibilityTracker = this.callIdentificationVisibilityTracker;
        if (inlineVisibilityTracker != null) {
            inlineVisibilityTracker.destroy();
            this.callIdentificationVisibilityTracker = null;
        }
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    public void updateCardData(Pair<AnalyticsDataManager.AnalyticsIdentifiedCardData, AnalyticsDataManager.AnalyticsIdentifiedCardData> pair, boolean z) {
        if (!Objects.m31915a(this.identifiedDataCurr, pair.first) || !Objects.m31915a(this.identifiedDataPrev, pair.second)) {
            this.identifiedDataCurr = (AnalyticsDataManager.AnalyticsIdentifiedCardData) pair.first;
            this.identifiedDataPrev = (AnalyticsDataManager.AnalyticsIdentifiedCardData) pair.second;
            this.multiCircleGraphData = getTypePieCircle(this.identifiedDataCurr).getMultiCircleGraphData();
            showCard(true);
        }
    }
}
