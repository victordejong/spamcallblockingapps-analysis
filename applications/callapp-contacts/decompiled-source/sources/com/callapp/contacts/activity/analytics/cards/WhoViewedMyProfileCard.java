package com.callapp.contacts.activity.analytics.cards;

import android.content.Intent;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileActivity;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.facebook.common.a;
import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.a.c;
import com.jjoe64.graphview.a.e;
import com.jjoe64.graphview.j;
import com.mopub.mobileads.InlineVisibilityTracker;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard.class */
public class WhoViewedMyProfileCard extends AnalyticsWrapperCard<WhoViewedMyProfileHolder, Pair<Pair<Integer, HashMap<Pair<Long, Long>, Integer>>, Pair<Integer, HashMap<Pair<Long, Long>, Integer>>>> {
    private Pair<Integer, HashMap<Pair<Long, Long>, Integer>> graphPointsCurrent;
    private Pair<Integer, HashMap<Pair<Long, Long>, Integer>> graphPointsPrevious;
    private PresentersContainer.MODE mode;
    private WhoViewedMyProfileHolder whoViewedMyProfileHolder;
    private InlineVisibilityTracker whoViewedMyProfileVisibilityTracker;
    private boolean alreadyBounded = false;
    private boolean alreadyTrack = false;
    private boolean needToShowGraph = true;
    private final int TWELVE_POINTS = 12;
    private final int MIN_DATA = 4;
    private final int ONE_MONTH = 1;
    private final double MULTIPLE_Y_AXIS = 1.5d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder.class */
    public class WhoViewedMyProfileHolder {

        /* renamed from: b  reason: collision with root package name */
        private final TextView f10798b;

        /* renamed from: c  reason: collision with root package name */
        private final TextView f10799c;

        /* renamed from: d  reason: collision with root package name */
        private final ImageView f10800d;
        private final TextView e;
        private final TextView f;
        private final ImageView g;
        private final GraphView h;
        private final View i;
        private final TextView j;

        public WhoViewedMyProfileHolder(View view) {
            this.f10798b = (TextView) view.findViewById(2131364076);
            this.f10799c = (TextView) view.findViewById(2131364010);
            this.f10800d = (ImageView) view.findViewById(2131363011);
            this.e = (TextView) view.findViewById(2131363398);
            this.f = (TextView) view.findViewById(2131362327);
            this.g = (ImageView) view.findViewById(2131362330);
            this.h = (GraphView) view.findViewById(2131362914);
            this.i = view.findViewById(2131363809);
            this.j = (TextView) view.findViewById(a.d.button);
        }
    }

    public WhoViewedMyProfileCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558488);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleGraph() {
        if (this.whoViewedMyProfileHolder != null) {
            this.needToShowGraph = false;
            c[] cVarArr = new c[12];
            int i = 0;
            int i2 = 0;
            for (Map.Entry entry : ((HashMap) this.graphPointsCurrent.second).entrySet()) {
                int intValue = ((Integer) entry.getValue()).intValue();
                cVarArr[i2] = new c(i2, intValue);
                i = i;
                if (intValue > i) {
                    i = intValue;
                }
                i2++;
            }
            this.whoViewedMyProfileHolder.h.f33523c.b(true);
            this.whoViewedMyProfileHolder.h.f33523c.c(11.0d);
            this.whoViewedMyProfileHolder.h.f33523c.d(0.0d);
            this.whoViewedMyProfileHolder.h.f33523c.c();
            this.whoViewedMyProfileHolder.h.f33523c.a(j.a.FIX);
            this.whoViewedMyProfileHolder.h.f33523c.d(false);
            this.whoViewedMyProfileHolder.h.f33523c.a(i * 1.5d);
            this.whoViewedMyProfileHolder.h.f33523c.b(0.0d);
            this.whoViewedMyProfileHolder.h.f33523c.d();
            this.whoViewedMyProfileHolder.h.f33523c.b(j.a.FIX);
            e eVar = new e(cVarArr);
            eVar.f.f33549b = true;
            eVar.f.e = ThemeUtils.getColor(2131099786);
            eVar.g = true;
            eVar.f.f33550c = true;
            eVar.f33540c = ThemeUtils.getColor(2131099784);
            eVar.f.f33551d = 7.0f;
            eVar.f.f33548a = 9;
            com.jjoe64.graphview.helper.a aVar = new com.jjoe64.graphview.helper.a(this.whoViewedMyProfileHolder.h);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMMM d");
            Calendar instance = Calendar.getInstance();
            String format = simpleDateFormat.format(instance.getTime());
            instance.add(2, -1);
            String format2 = simpleDateFormat.format(instance.getTime());
            instance.add(2, -1);
            aVar.a(new String[]{simpleDateFormat.format(instance.getTime()), format2, format, ""});
            this.whoViewedMyProfileHolder.h.f33522b.a(aVar);
            this.whoViewedMyProfileHolder.h.f33522b.j();
            this.whoViewedMyProfileHolder.h.f33522b.c(ThemeUtils.getColor(2131100140));
            this.whoViewedMyProfileHolder.h.f33522b.b(ThemeUtils.getColor(2131100140));
            this.whoViewedMyProfileHolder.h.f33522b.a(ThemeUtils.getColor(2131100140));
            this.whoViewedMyProfileHolder.h.f33522b.e = 3;
            com.jjoe64.graphview.c cVar = this.whoViewedMyProfileHolder.h.f33522b;
            cVar.g = true;
            cVar.f = true;
            this.whoViewedMyProfileHolder.h.a(eVar);
        }
    }

    private void refreshCardData() {
        if (this.presentersContainer.getContainerMode() == this.mode) {
            this.graphPointsCurrent = WhoViewedMyProfileDataManager.a(AnalyticsDataManager.DatePeriod.CURRENT);
            Pair<Integer, HashMap<Pair<Long, Long>, Integer>> a2 = WhoViewedMyProfileDataManager.a(AnalyticsDataManager.DatePeriod.PREVIOUS);
            this.graphPointsPrevious = a2;
            updateCardData(Pair.create(this.graphPointsCurrent, a2), true);
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return Activities.getString(2131888238);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 91;
    }

    @Override // com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent
    public void onAnalyticsRefreshCard(PresentersContainer.MODE mode) {
        this.mode = mode;
        refreshCardData();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(final WhoViewedMyProfileHolder whoViewedMyProfileHolder) {
        this.alreadyBounded = true;
        whoViewedMyProfileHolder.i.setVisibility(8);
        whoViewedMyProfileHolder.e.setText(String.valueOf(this.graphPointsCurrent.first));
        whoViewedMyProfileHolder.e.setTextColor(ThemeUtils.getColor(2131100140));
        int intValue = ((Integer) this.graphPointsPrevious.first).intValue() != 0 ? (int) (((((Integer) this.graphPointsCurrent.first).intValue() - ((Integer) this.graphPointsPrevious.first).intValue()) / ((Integer) this.graphPointsPrevious.first).intValue()) * 100.0f) : 100;
        whoViewedMyProfileHolder.f.setText(String.format("%d%%", Integer.valueOf(intValue)));
        int i = intValue > 0 ? 2131231458 : 2131231457;
        int i2 = intValue > 0 ? 2131099916 : 2131099675;
        whoViewedMyProfileHolder.f.setTextColor(ThemeUtils.getColor(i2));
        whoViewedMyProfileHolder.g.setImageResource(i);
        whoViewedMyProfileHolder.g.setColorFilter(ThemeUtils.getColor(i2));
        whoViewedMyProfileHolder.f10798b.setText(Activities.getString(2131888240));
        whoViewedMyProfileHolder.f10798b.setTextColor(ThemeUtils.getColor(2131100140));
        whoViewedMyProfileHolder.f10799c.setText(Activities.getString(2131888239));
        whoViewedMyProfileHolder.f10799c.setTextColor(ThemeUtils.getColor(2131100108));
        whoViewedMyProfileHolder.f10800d.setImageResource(2131231767);
        whoViewedMyProfileHolder.f10800d.setColorFilter(ThemeUtils.getColor(2131099784));
        whoViewedMyProfileHolder.j.setBackgroundResource(2131232136);
        whoViewedMyProfileHolder.j.setText(Activities.getString(2131887617));
        ViewUtils.a(whoViewedMyProfileHolder.j, Integer.valueOf(ThemeUtils.getColor(2131099817)), Integer.valueOf(ThemeUtils.getColor(2131099817)));
        whoViewedMyProfileHolder.j.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.WhoViewedMyProfileCard.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().a(Constants.INSIGHTS, "ClickInsightsViewProfile");
                AndroidUtils.a(whoViewedMyProfileHolder.j, 1);
                Activities.b(WhoViewedMyProfileCard.this.presentersContainer.getRealContext(), new Intent(WhoViewedMyProfileCard.this.presentersContainer.getRealContext(), WhoViewedMyProfileActivity.class));
            }
        });
        if (this.alreadyTrack && this.needToShowGraph) {
            handleGraph();
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public WhoViewedMyProfileHolder onCreateViewHolder(ViewGroup viewGroup) {
        this.whoViewedMyProfileHolder = new WhoViewedMyProfileHolder(viewGroup);
        InlineVisibilityTracker inlineVisibilityTracker = new InlineVisibilityTracker(this.presentersContainer.getRealContext(), viewGroup, viewGroup, 500, 500);
        this.whoViewedMyProfileVisibilityTracker = inlineVisibilityTracker;
        inlineVisibilityTracker.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.activity.analytics.cards.WhoViewedMyProfileCard.1
            @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
            public void onVisibilityChanged() {
                WhoViewedMyProfileCard.this.alreadyTrack = true;
                if (WhoViewedMyProfileCard.this.alreadyBounded && WhoViewedMyProfileCard.this.needToShowGraph) {
                    WhoViewedMyProfileCard.this.handleGraph();
                }
                if (WhoViewedMyProfileCard.this.whoViewedMyProfileVisibilityTracker != null) {
                    WhoViewedMyProfileCard.this.whoViewedMyProfileVisibilityTracker.destroy();
                    WhoViewedMyProfileCard.this.whoViewedMyProfileVisibilityTracker = null;
                }
            }
        });
        return this.whoViewedMyProfileHolder;
    }

    @Override // com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        InlineVisibilityTracker inlineVisibilityTracker = this.whoViewedMyProfileVisibilityTracker;
        if (inlineVisibilityTracker != null) {
            inlineVisibilityTracker.destroy();
            this.whoViewedMyProfileVisibilityTracker = null;
        }
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCardData(Pair<Pair<Integer, HashMap<Pair<Long, Long>, Integer>>, Pair<Integer, HashMap<Pair<Long, Long>, Integer>>> pair, boolean z) {
        this.graphPointsCurrent = (Pair) pair.first;
        this.graphPointsPrevious = (Pair) pair.second;
        if (this.presentersContainer.getContainerMode() != this.mode) {
            return;
        }
        if ((Prefs.hA.get().booleanValue() || WhoViewedMyProfileDataManager.g() <= 4) && !Prefs.hF.get().booleanValue()) {
            hideCard();
        } else {
            showCard(true);
        }
    }
}
