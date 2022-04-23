package com.callapp.contacts.activity.analytics.cards.myCallsCard;

import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.common.util.Objects;
import com.callapp.contacts.activity.analytics.cards.myCallsCard.MyCallsAdapter;
import com.callapp.contacts.activity.analytics.cards.myCallsCard.MyCallsGridItem;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.analytics.data.items.MyCallsCardItem;
import com.callapp.contacts.activity.analytics.progressGraph.data.NumberOfCallsProgressBarData;
import com.callapp.contacts.activity.analytics.progressGraph.fragment.GraphFragment;
import com.callapp.contacts.activity.analytics.ui.AnalyticsDatePickerManager;
import com.callapp.contacts.activity.contact.cards.MultiCardContainer;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.CollectionUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.InlineVisibilityTracker;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard.class */
public class MyCallsCard extends BaseMyCallsCard<MyCallsCardHolder, Pair<Map<SimManager.SimId, MyCallsCardItem>, Map<SimManager.SimId, MyCallsCardItem>>> {
    private Map<SimManager.SimId, MyCallsCardItem> dataCurrent;
    private Map<SimManager.SimId, MyCallsCardItem> dataPrevious;
    private GraphFragment graphFragment;
    private InlineVisibilityTracker myCallsVisibilityTracker;
    private List<NumberOfCallsProgressBarData> numberOfCallsProgressBarData;
    private Map<SimManager.SimId, MyCallsAdapter> adapterBySimId = new HashMap();
    private boolean shouldShowAnimation = false;
    private boolean alreadyBounded = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder.class */
    public class MyCallsCardHolder {

        /* renamed from: a  reason: collision with root package name */
        final Map<SimManager.SimId, TextView> f10850a;

        /* renamed from: b  reason: collision with root package name */
        final Map<SimManager.SimId, TextView> f10851b;

        /* renamed from: d  reason: collision with root package name */
        private final Map<SimManager.SimId, RecyclerView> f10853d;
        private final TextView e;
        private final TextView f;
        private final View g;

        public MyCallsCardHolder(View view) {
            HashMap hashMap = new HashMap();
            this.f10853d = hashMap;
            HashMap hashMap2 = new HashMap();
            this.f10850a = hashMap2;
            HashMap hashMap3 = new HashMap();
            this.f10851b = hashMap3;
            hashMap.put(SimManager.SimId.SIM_1, view.findViewById(2131363868));
            hashMap.put(SimManager.SimId.SIM_2, view.findViewById(2131363869));
            hashMap.put(SimManager.SimId.ASK, view.findViewById(2131363378));
            TextView textView = (TextView) view.findViewById(2131364146);
            TextView textView2 = (TextView) view.findViewById(2131364147);
            TextView textView3 = (TextView) view.findViewById(2131364145);
            textView.setTextColor(ThemeUtils.getColor(2131100140));
            textView2.setTextColor(ThemeUtils.getColor(2131100140));
            textView3.setTextColor(ThemeUtils.getColor(2131100140));
            TextView textView4 = (TextView) view.findViewById(2131364021);
            TextView textView5 = (TextView) view.findViewById(2131364022);
            TextView textView6 = (TextView) view.findViewById(2131364018);
            textView4.setTextColor(ThemeUtils.getColor(2131100108));
            textView5.setTextColor(ThemeUtils.getColor(2131100108));
            textView6.setTextColor(ThemeUtils.getColor(2131100108));
            textView.setText(Activities.getString(2131887694));
            textView2.setText(Activities.getString(2131887696));
            textView3.setText(Activities.getString(2131887693));
            textView4.setText(Activities.getString(2131887695));
            textView5.setText(Activities.getString(2131887695));
            textView6.setText(Activities.getString(2131887695));
            hashMap2.put(SimManager.SimId.SIM_1, textView);
            hashMap2.put(SimManager.SimId.SIM_2, textView2);
            hashMap2.put(SimManager.SimId.ASK, textView3);
            hashMap3.put(SimManager.SimId.SIM_1, textView4);
            hashMap3.put(SimManager.SimId.SIM_2, textView5);
            hashMap3.put(SimManager.SimId.ASK, textView6);
            for (RecyclerView recyclerView : hashMap.values()) {
                recyclerView.setLayoutManager(new SpanningLinearLayoutManager(view.getContext(), 0, false));
                recyclerView.a(new MyCallsSpaceDecoration());
                recyclerView.setHasFixedSize(true);
            }
            TextView textView7 = (TextView) view.findViewById(2131364143);
            this.e = textView7;
            textView7.setTextColor(ThemeUtils.getColor(2131100140));
            TextView textView8 = (TextView) view.findViewById(2131364017);
            this.f = textView8;
            textView8.setTextColor(ThemeUtils.getColor(2131100108));
            View findViewById = view.findViewById(2131362611);
            this.g = findViewById;
            findViewById.setBackgroundColor(ThemeUtils.getColor(2131099891));
        }

        public final RecyclerView a(SimManager.SimId simId) {
            return this.f10853d.get(simId);
        }
    }

    public MyCallsCard(MultiCardContainer multiCardContainer) {
        super(multiCardContainer, 2131558485);
    }

    public MyCallsCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558485);
    }

    private List<NumberOfCallsProgressBarData> getNumberOfCallsProgressBarData(Map<SimManager.SimId, MyCallsCardItem> map, Map<SimManager.SimId, MyCallsCardItem> map2) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        ArrayList arrayList = new ArrayList();
        if (CollectionUtils.b(map.values())) {
            Iterator<MyCallsCardItem> it2 = map.values().iterator();
            float f11 = BitmapDescriptorFactory.HUE_RED;
            float f12 = BitmapDescriptorFactory.HUE_RED;
            float f13 = BitmapDescriptorFactory.HUE_RED;
            float f14 = BitmapDescriptorFactory.HUE_RED;
            float f15 = BitmapDescriptorFactory.HUE_RED;
            while (true) {
                f5 = f11;
                f4 = f12;
                f3 = f13;
                f2 = f14;
                f = f15;
                if (!it2.hasNext()) {
                    break;
                }
                MyCallsCardItem next = it2.next();
                f11 += next.getTotalCalls();
                f12 += next.getIncomingCalls();
                f13 += next.getOutgoingCalls();
                f14 += next.getMissedCalls();
                f15 += next.getNotAnsweredCalls();
            }
        } else {
            f5 = BitmapDescriptorFactory.HUE_RED;
            f4 = BitmapDescriptorFactory.HUE_RED;
            f3 = BitmapDescriptorFactory.HUE_RED;
            f2 = BitmapDescriptorFactory.HUE_RED;
            f = BitmapDescriptorFactory.HUE_RED;
        }
        if (CollectionUtils.b(map2.values())) {
            Iterator<MyCallsCardItem> it3 = map2.values().iterator();
            float f16 = BitmapDescriptorFactory.HUE_RED;
            float f17 = BitmapDescriptorFactory.HUE_RED;
            float f18 = BitmapDescriptorFactory.HUE_RED;
            float f19 = BitmapDescriptorFactory.HUE_RED;
            float f20 = BitmapDescriptorFactory.HUE_RED;
            while (true) {
                f10 = f16;
                f9 = f17;
                f8 = f18;
                f7 = f19;
                f6 = f20;
                if (!it3.hasNext()) {
                    break;
                }
                MyCallsCardItem next2 = it3.next();
                f16 += next2.getTotalCalls();
                f17 += next2.getIncomingCalls();
                f18 += next2.getOutgoingCalls();
                f19 += next2.getMissedCalls();
                f20 += next2.getNotAnsweredCalls();
            }
        } else {
            f10 = BitmapDescriptorFactory.HUE_RED;
            f9 = BitmapDescriptorFactory.HUE_RED;
            f8 = BitmapDescriptorFactory.HUE_RED;
            f7 = BitmapDescriptorFactory.HUE_RED;
            f6 = BitmapDescriptorFactory.HUE_RED;
        }
        int i = (f10 > BitmapDescriptorFactory.HUE_RED ? 1 : (f10 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        float f21 = i != 0 ? ((f5 - f10) / f10) * 100.0f : 100.0f;
        float f22 = f9 != BitmapDescriptorFactory.HUE_RED ? ((f4 - f9) / f9) * 100.0f : 100.0f;
        float f23 = f8 != BitmapDescriptorFactory.HUE_RED ? ((f3 - f8) / f8) * 100.0f : 100.0f;
        float f24 = f7 != BitmapDescriptorFactory.HUE_RED ? ((f2 - f7) / f7) * 100.0f : 100.0f;
        float f25 = f6 != BitmapDescriptorFactory.HUE_RED ? ((f - f6) / f6) * 100.0f : 100.0f;
        int i2 = 2131231458;
        int i3 = (f21 > BitmapDescriptorFactory.HUE_RED ? 1 : (f21 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        int i4 = i3 > 0 ? 2131231458 : 2131231457;
        int i5 = (f22 > BitmapDescriptorFactory.HUE_RED ? 1 : (f22 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        int i6 = i5 > 0 ? 2131231458 : 2131231457;
        int i7 = (f23 > BitmapDescriptorFactory.HUE_RED ? 1 : (f23 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        int i8 = i7 > 0 ? 2131231458 : 2131231457;
        int i9 = (f24 > BitmapDescriptorFactory.HUE_RED ? 1 : (f24 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        int i10 = i9 > 0 ? 2131231458 : 2131231457;
        int i11 = (f25 > BitmapDescriptorFactory.HUE_RED ? 1 : (f25 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        if (i11 <= 0) {
            i2 = 2131231457;
        }
        int i12 = (f5 > BitmapDescriptorFactory.HUE_RED ? 1 : (f5 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        float f26 = i12 > 0 ? 100.0f : BitmapDescriptorFactory.HUE_RED;
        float f27 = i12 > 0 ? (f4 / f5) * 100.0f : BitmapDescriptorFactory.HUE_RED;
        float f28 = (i12 <= 0 || !PhoneManager.get().isDefaultPhoneApp()) ? BitmapDescriptorFactory.HUE_RED : (f3 / f5) * 100.0f;
        float f29 = (i12 <= 0 || !PhoneManager.get().isDefaultPhoneApp()) ? BitmapDescriptorFactory.HUE_RED : (f / f5) * 100.0f;
        float f30 = i12 > 0 ? (f2 / f5) * 100.0f : BitmapDescriptorFactory.HUE_RED;
        boolean z = i12 > 0;
        boolean z2 = f4 > BitmapDescriptorFactory.HUE_RED;
        boolean z3 = f3 > BitmapDescriptorFactory.HUE_RED && PhoneManager.get().isDefaultPhoneApp();
        boolean z4 = f2 > BitmapDescriptorFactory.HUE_RED;
        boolean z5 = f > BitmapDescriptorFactory.HUE_RED && PhoneManager.get().isDefaultPhoneApp();
        boolean z6 = i == 0 && i12 == 0;
        boolean z7 = (i3 == 0 || z6 || Prefs.gG.get() == AnalyticsDatePickerManager.DatePicker.LIFE) ? false : true;
        boolean z8 = (i5 == 0 || z6 || Prefs.gG.get() == AnalyticsDatePickerManager.DatePicker.LIFE) ? false : true;
        boolean z9 = i7 != 0 && !z6 && Prefs.gG.get() != AnalyticsDatePickerManager.DatePicker.LIFE && PhoneManager.get().isDefaultPhoneApp();
        boolean z10 = (i9 == 0 || z6 || Prefs.gG.get() == AnalyticsDatePickerManager.DatePicker.LIFE) ? false : true;
        boolean z11 = i11 != 0 && !z6 && Prefs.gG.get() != AnalyticsDatePickerManager.DatePicker.LIFE && PhoneManager.get().isDefaultPhoneApp();
        arrayList.add(new NumberOfCallsProgressBarData(Activities.getString(2131887912), Integer.valueOf(i4), String.valueOf((int) f5), Float.valueOf(f21), Float.valueOf(f26), 100.0f, 0, ThemeUtils.getColor(2131100050), null, true, z7, z, z6));
        arrayList.add(new NumberOfCallsProgressBarData(Activities.getString(2131887046), Integer.valueOf(i6), String.valueOf((int) f4), Float.valueOf(f22), Float.valueOf(f27), 100.0f, 0, ThemeUtils.getColor(2131100071), null, true, z8, z2, z6));
        arrayList.add(new NumberOfCallsProgressBarData(Activities.getString(2131887371), Integer.valueOf(i8), String.valueOf((int) f3), Float.valueOf(f23), Float.valueOf(f28), 100.0f, 0, ThemeUtils.getColor(2131099935), null, true, z9, z3, z6));
        arrayList.add(new NumberOfCallsProgressBarData(Activities.getString(2131887212), Integer.valueOf(i10), String.valueOf((int) f2), Float.valueOf(f24), Float.valueOf(f30), 100.0f, 0, ThemeUtils.getColor(2131099675), null, true, z10, z4, z6));
        arrayList.add(new NumberOfCallsProgressBarData(Activities.getString(2131888112), Integer.valueOf(i2), String.valueOf((int) f), Float.valueOf(f25), Float.valueOf(f29), 100.0f, 0, ThemeUtils.getColor(2131100058), null, true, z11, z5, z6));
        return arrayList;
    }

    private void setAdapters(MyCallsCardHolder myCallsCardHolder, Map<SimManager.SimId, List<MyCallsGridItem>> map) {
        if (CollectionUtils.b(map)) {
            for (Map.Entry<SimManager.SimId, List<MyCallsGridItem>> entry : map.entrySet()) {
                final MyCallsAdapter myCallsAdapter = this.adapterBySimId.get(entry.getKey());
                final List<MyCallsGridItem> value = entry.getValue();
                SimManager.SimId key = entry.getKey();
                boolean b2 = CollectionUtils.b(value);
                int i = 0;
                myCallsCardHolder.a(key).setVisibility(b2 ? 0 : 8);
                myCallsCardHolder.f10850a.get(key).setVisibility(b2 ? 0 : 8);
                TextView textView = myCallsCardHolder.f10851b.get(key);
                if (!b2) {
                    i = 8;
                }
                textView.setVisibility(i);
                if (myCallsAdapter == null) {
                    MyCallsAdapter myCallsAdapter2 = new MyCallsAdapter(value, new MyCallsAdapter.onUnlockClickedListener() { // from class: com.callapp.contacts.activity.analytics.cards.myCallsCard.MyCallsCard.2
                        @Override // com.callapp.contacts.activity.analytics.cards.myCallsCard.MyCallsAdapter.onUnlockClickedListener
                        public final void a() {
                            MyCallsCard.this.setDefaultDialer();
                        }
                    });
                    this.adapterBySimId.put(entry.getKey(), myCallsAdapter2);
                    myCallsCardHolder.a(entry.getKey()).setAdapter(myCallsAdapter2);
                } else {
                    this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.myCallsCard.MyCallsCard.3
                        @Override // java.lang.Runnable
                        public void run() {
                            myCallsAdapter.setItemsData(value);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(MyCallsCardHolder myCallsCardHolder) {
        float f;
        float f2;
        this.alreadyBounded = true;
        Map<SimManager.SimId, List<MyCallsGridItem>> hashMap = new HashMap<>();
        if (CollectionUtils.b(this.dataCurrent)) {
            for (Map.Entry<SimManager.SimId, MyCallsCardItem> entry : this.dataCurrent.entrySet()) {
                List<MyCallsGridItem> arrayList = new ArrayList<>();
                MyCallsCardItem myCallsCardItem = this.dataPrevious.get(entry.getKey());
                MyCallsCardItem value = entry.getValue();
                float f3 = 100.0f;
                if (myCallsCardItem != null) {
                    float totalDuration = myCallsCardItem.getTotalDuration() != BitmapDescriptorFactory.HUE_RED ? ((value.getTotalDuration() - myCallsCardItem.getTotalDuration()) / myCallsCardItem.getTotalDuration()) * 100.0f : 100.0f;
                    f = myCallsCardItem.getOutgoingDuration() != BitmapDescriptorFactory.HUE_RED ? ((value.getOutgoingDuration() - myCallsCardItem.getOutgoingDuration()) / myCallsCardItem.getOutgoingDuration()) * 100.0f : 100.0f;
                    if (myCallsCardItem.getIncomingDuration() != BitmapDescriptorFactory.HUE_RED) {
                        f2 = 100.0f * ((value.getIncomingDuration() - myCallsCardItem.getIncomingDuration()) / myCallsCardItem.getIncomingDuration());
                        f3 = totalDuration;
                    } else {
                        f3 = totalDuration;
                        f2 = 100.0f;
                    }
                } else {
                    f2 = 100.0f;
                    f = 100.0f;
                }
                MyCallsGridItem.STATE state = PhoneManager.get().isDefaultPhoneApp() ? MyCallsGridItem.STATE.REGULAR : MyCallsGridItem.STATE.BLOCK;
                arrayList.add(new MyCallsGridItem(2131231389, 2131100050, Activities.getString(2131887267), value.getTotalDuration(), f3, MyCallsGridItem.STATE.REGULAR));
                arrayList.add(new MyCallsGridItem(2131231400, 2131100071, Activities.getString(2131887266), value.getOutgoingDuration(), f, state));
                arrayList.add(new MyCallsGridItem(2131231395, 2131099935, Activities.getString(2131887265), value.getIncomingDuration(), f2, MyCallsGridItem.STATE.REGULAR));
                hashMap.put(entry.getKey(), arrayList);
            }
        } else {
            List<MyCallsGridItem> arrayList2 = new ArrayList<>();
            MyCallsGridItem.STATE state2 = PhoneManager.get().isDefaultPhoneApp() ? MyCallsGridItem.STATE.EMPTY : MyCallsGridItem.STATE.BLOCK;
            arrayList2.add(new MyCallsGridItem(2131231389, 2131100050, Activities.getString(2131887267), 0L, 0L, MyCallsGridItem.STATE.EMPTY));
            arrayList2.add(new MyCallsGridItem(2131231400, 2131100071, Activities.getString(2131887266), 0L, 0L, state2));
            arrayList2.add(new MyCallsGridItem(2131231395, 2131099935, Activities.getString(2131887265), 0L, 0L, MyCallsGridItem.STATE.EMPTY));
            hashMap.put(SimManager.SimId.ASK, arrayList2);
        }
        myCallsCardHolder.e.setText(Activities.getString(2131886948));
        myCallsCardHolder.f.setText(Activities.getString(2131886947));
        if (this.shouldShowAnimation) {
            this.graphFragment.a(this.numberOfCallsProgressBarData);
        }
        setAdapters(myCallsCardHolder, hashMap);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public MyCallsCardHolder onCreateViewHolder(ViewGroup viewGroup) {
        this.graphFragment = (GraphFragment) this.presentersContainer.findFragment(2131362923);
        InlineVisibilityTracker inlineVisibilityTracker = new InlineVisibilityTracker(this.presentersContainer.getRealContext(), viewGroup, viewGroup, 500, 500);
        this.myCallsVisibilityTracker = inlineVisibilityTracker;
        inlineVisibilityTracker.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.activity.analytics.cards.myCallsCard.MyCallsCard.1
            @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
            public void onVisibilityChanged() {
                MyCallsCard.this.shouldShowAnimation = true;
                if (MyCallsCard.this.alreadyBounded) {
                    MyCallsCard.this.graphFragment.a(MyCallsCard.this.numberOfCallsProgressBarData);
                }
                if (MyCallsCard.this.myCallsVisibilityTracker != null) {
                    MyCallsCard.this.myCallsVisibilityTracker.destroy();
                    MyCallsCard.this.myCallsVisibilityTracker = null;
                }
            }
        });
        return new MyCallsCardHolder(viewGroup);
    }

    @Override // com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        InlineVisibilityTracker inlineVisibilityTracker = this.myCallsVisibilityTracker;
        if (inlineVisibilityTracker != null) {
            inlineVisibilityTracker.destroy();
            this.myCallsVisibilityTracker = null;
        }
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.analytics.cards.myCallsCard.BaseMyCallsCard
    public void refreshCardData() {
        if (this.presentersContainer.getContainerMode() == this.mode) {
            updateCardData(Pair.create(AnalyticsDataManager.a(AnalyticsDataManager.DatePeriod.CURRENT), AnalyticsDataManager.a(AnalyticsDataManager.DatePeriod.PREVIOUS)), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCardData(Pair<Map<SimManager.SimId, MyCallsCardItem>, Map<SimManager.SimId, MyCallsCardItem>> pair, boolean z) {
        if (!Objects.a(this.dataCurrent, pair.first) || !Objects.a(this.dataPrevious, pair.second)) {
            this.dataCurrent = (Map) pair.first;
            Map<SimManager.SimId, MyCallsCardItem> map = (Map) pair.second;
            this.dataPrevious = map;
            this.numberOfCallsProgressBarData = getNumberOfCallsProgressBarData(this.dataCurrent, map);
            showCard(true);
        }
    }
}
