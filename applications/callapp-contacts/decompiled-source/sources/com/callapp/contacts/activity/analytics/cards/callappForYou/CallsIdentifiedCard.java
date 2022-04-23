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
import com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/callappForYou/CallsIdentifiedCard$CallsIdentifiedCardCardHolder.class */
    public class CallsIdentifiedCardCardHolder {

        /* renamed from: b  reason: collision with root package name */
        private final LinearLayout f10813b;

        /* renamed from: c  reason: collision with root package name */
        private final TextView f10814c;

        /* renamed from: d  reason: collision with root package name */
        private final TextView f10815d;
        private final TextView e;
        private final TextView f;
        private final TextView g;
        private final TextView h;
        private final TextView i;
        private final TextView j;
        private final TextView k;
        private final TextView l;
        private final TextView m;
        private final TextView n;
        private final ImageView o;
        private final ImageView p;
        private final ImageView q;
        private final ImageView r;

        public CallsIdentifiedCardCardHolder(View view) {
            this.f10813b = (LinearLayout) view.findViewById(2131362229);
            this.f10814c = (TextView) view.findViewById(2131364130);
            this.f10815d = (TextView) view.findViewById(2131364013);
            this.e = (TextView) view.findViewById(2131364208);
            this.f = (TextView) view.findViewById(2131364207);
            this.g = (TextView) view.findViewById(2131364205);
            this.h = (TextView) view.findViewById(2131364200);
            this.q = (ImageView) view.findViewById(2131364202);
            this.i = (TextView) view.findViewById(2131362462);
            this.j = (TextView) view.findViewById(2131362461);
            this.k = (TextView) view.findViewById(2131362460);
            this.l = (TextView) view.findViewById(2131362451);
            this.r = (ImageView) view.findViewById(2131362453);
            this.m = (TextView) view.findViewById(2131363491);
            this.n = (TextView) view.findViewById(2131363490);
            this.o = (ImageView) view.findViewById(2131364201);
            this.p = (ImageView) view.findViewById(2131362452);
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
        return builder.a(multiCircleGraphData).a();
    }

    private void refreshCardData() {
        if (this.presentersContainer.getContainerMode() == this.mode) {
            AnalyticsDataManagerKotlin.Companion companion = AnalyticsDataManagerKotlin.f10896a;
            AnalyticsDataManager.AnalyticsIdentifiedCardData b2 = AnalyticsDataManagerKotlin.Companion.b(AnalyticsDataManager.DatePeriod.CURRENT);
            AnalyticsDataManagerKotlin.Companion companion2 = AnalyticsDataManagerKotlin.f10896a;
            updateCardData(Pair.create(b2, AnalyticsDataManagerKotlin.Companion.b(AnalyticsDataManager.DatePeriod.PREVIOUS)), true);
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardBgColor() {
        return ThemeUtils.a(CallAppApplication.get(), 2131100145);
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

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(CallsIdentifiedCardCardHolder callsIdentifiedCardCardHolder) {
        this.alreadyBounded = true;
        callsIdentifiedCardCardHolder.f10813b.setBackgroundResource(2131230878);
        int color = ThemeUtils.getColor(2131100209);
        ViewUtils.a(callsIdentifiedCardCardHolder.f10813b, Integer.valueOf(color), Integer.valueOf(color));
        callsIdentifiedCardCardHolder.f10814c.setText(Activities.getString(2131886495));
        callsIdentifiedCardCardHolder.f10815d.setText(Activities.getString(2131886494));
        callsIdentifiedCardCardHolder.e.setText(HtmlUtils.b(Activities.getString(2131886497)));
        callsIdentifiedCardCardHolder.f.setText(Activities.getString(2131886496));
        callsIdentifiedCardCardHolder.i.setText(HtmlUtils.b(Activities.getString(2131886491)));
        callsIdentifiedCardCardHolder.j.setText(Activities.getString(2131886490));
        callsIdentifiedCardCardHolder.m.setText(HtmlUtils.b(Activities.getString(2131886493)));
        callsIdentifiedCardCardHolder.n.setText(Activities.getString(2131886492));
        callsIdentifiedCardCardHolder.g.setText(String.valueOf(this.identifiedDataCurr.getTotalIdentifiedCalls()));
        callsIdentifiedCardCardHolder.k.setText(String.valueOf(this.identifiedDataCurr.getTotalIdentifiedContacts()));
        if (Prefs.gG.get() == AnalyticsDatePickerManager.DatePicker.LIFE) {
            callsIdentifiedCardCardHolder.l.setVisibility(8);
            callsIdentifiedCardCardHolder.r.setVisibility(8);
            callsIdentifiedCardCardHolder.p.setVisibility(8);
            callsIdentifiedCardCardHolder.h.setVisibility(8);
            callsIdentifiedCardCardHolder.q.setVisibility(8);
            callsIdentifiedCardCardHolder.o.setVisibility(8);
        } else {
            AnalyticsDataManager.AnalyticsIdentifiedCardData analyticsIdentifiedCardData = this.identifiedDataPrev;
            float percent = (analyticsIdentifiedCardData == null || analyticsIdentifiedCardData.getPercent() == BitmapDescriptorFactory.HUE_RED) ? BitmapDescriptorFactory.HUE_RED : ((this.identifiedDataCurr.getPercent() - this.identifiedDataPrev.getPercent()) / this.identifiedDataPrev.getPercent()) * 100.0f;
            AnalyticsDataManager.AnalyticsIdentifiedCardData analyticsIdentifiedCardData2 = this.identifiedDataPrev;
            long totalIdentifiedContacts = (analyticsIdentifiedCardData2 == null || analyticsIdentifiedCardData2.getTotalIdentifiedContacts() <= 0) ? 0L : ((this.identifiedDataCurr.getTotalIdentifiedContacts() - this.identifiedDataPrev.getTotalIdentifiedContacts()) / this.identifiedDataPrev.getTotalIdentifiedContacts()) * 100;
            int i = 2131231458;
            int i2 = (percent > BitmapDescriptorFactory.HUE_RED ? 1 : (percent == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
            if (i2 != 0) {
                callsIdentifiedCardCardHolder.h.setText(String.format("%.0f%%", Float.valueOf(percent)));
                int i3 = i2 > 0 ? 2131231458 : 2131231457;
                int i4 = i2 > 0 ? 2131232005 : 2131232004;
                callsIdentifiedCardCardHolder.q.setImageResource(i3);
                callsIdentifiedCardCardHolder.q.setColorFilter(ThemeUtils.getColor(2131100228));
                callsIdentifiedCardCardHolder.o.setImageResource(i4);
                callsIdentifiedCardCardHolder.o.setVisibility(0);
                callsIdentifiedCardCardHolder.h.setVisibility(0);
                callsIdentifiedCardCardHolder.q.setVisibility(0);
            } else {
                callsIdentifiedCardCardHolder.h.setVisibility(8);
                callsIdentifiedCardCardHolder.o.setVisibility(8);
                callsIdentifiedCardCardHolder.q.setVisibility(8);
            }
            int i5 = (totalIdentifiedContacts > 0L ? 1 : (totalIdentifiedContacts == 0L ? 0 : -1));
            if (i5 != 0) {
                callsIdentifiedCardCardHolder.l.setText(String.format("%d%%", Long.valueOf(totalIdentifiedContacts)));
                if (i5 <= 0) {
                    i = 2131231457;
                }
                int i6 = i2 > 0 ? 2131232005 : 2131232004;
                callsIdentifiedCardCardHolder.r.setImageResource(i);
                callsIdentifiedCardCardHolder.r.setColorFilter(ThemeUtils.getColor(2131100228));
                callsIdentifiedCardCardHolder.p.setImageResource(i6);
                callsIdentifiedCardCardHolder.l.setVisibility(0);
                callsIdentifiedCardCardHolder.r.setVisibility(0);
                callsIdentifiedCardCardHolder.p.setVisibility(0);
            } else {
                callsIdentifiedCardCardHolder.l.setVisibility(8);
                callsIdentifiedCardCardHolder.r.setVisibility(8);
                callsIdentifiedCardCardHolder.p.setVisibility(8);
            }
        }
        if (this.shouldShowCallIdentificationAnimation) {
            this.circleGraphFragment.a(this.multiCircleGraphData);
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
                    CallsIdentifiedCard.this.circleGraphFragment.a(CallsIdentifiedCard.this.multiCircleGraphData);
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

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCardData(Pair<AnalyticsDataManager.AnalyticsIdentifiedCardData, AnalyticsDataManager.AnalyticsIdentifiedCardData> pair, boolean z) {
        if (!Objects.a(this.identifiedDataCurr, pair.first) || !Objects.a(this.identifiedDataPrev, pair.second)) {
            this.identifiedDataCurr = (AnalyticsDataManager.AnalyticsIdentifiedCardData) pair.first;
            this.identifiedDataPrev = (AnalyticsDataManager.AnalyticsIdentifiedCardData) pair.second;
            this.multiCircleGraphData = getTypePieCircle(this.identifiedDataCurr).getMultiCircleGraphData();
            showCard(true);
        }
    }
}
