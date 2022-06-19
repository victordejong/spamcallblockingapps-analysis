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
import com.facebook.common.C10165a;
import com.jjoe64.graphview.C16561c;
import com.jjoe64.graphview.C16577j;
import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.helper.C16575a;
import com.jjoe64.graphview.p455a.C16548c;
import com.jjoe64.graphview.p455a.C16550e;
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

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/WhoViewedMyProfileCard$WhoViewedMyProfileHolder.class */
    public class WhoViewedMyProfileHolder {

        /* renamed from: b */
        private final TextView f19659b;

        /* renamed from: c */
        private final TextView f19660c;

        /* renamed from: d */
        private final ImageView f19661d;

        /* renamed from: e */
        private final TextView f19662e;

        /* renamed from: f */
        private final TextView f19663f;

        /* renamed from: g */
        private final ImageView f19664g;

        /* renamed from: h */
        private final GraphView f19665h;

        /* renamed from: i */
        private final View f19666i;

        /* renamed from: j */
        private final TextView f19667j;

        public WhoViewedMyProfileHolder(View view) {
            WhoViewedMyProfileCard.this = r5;
            this.f19659b = (TextView) view.findViewById(2131364076);
            this.f19660c = (TextView) view.findViewById(2131364010);
            this.f19661d = (ImageView) view.findViewById(2131363011);
            this.f19662e = (TextView) view.findViewById(2131363398);
            this.f19663f = (TextView) view.findViewById(2131362327);
            this.f19664g = (ImageView) view.findViewById(2131362330);
            this.f19665h = (GraphView) view.findViewById(2131362914);
            this.f19666i = view.findViewById(2131363809);
            this.f19667j = (TextView) view.findViewById(C10165a.C10169d.button);
        }
    }

    public WhoViewedMyProfileCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558488);
    }

    public void handleGraph() {
        if (this.whoViewedMyProfileHolder != null) {
            this.needToShowGraph = false;
            C16548c[] c16548cArr = new C16548c[12];
            int i = 0;
            int i2 = 0;
            for (Map.Entry entry : ((HashMap) this.graphPointsCurrent.second).entrySet()) {
                int intValue = ((Integer) entry.getValue()).intValue();
                c16548cArr[i2] = new C16548c(i2, intValue);
                int i3 = i;
                if (intValue > i) {
                    i3 = intValue;
                }
                i2++;
                i = i3;
            }
            this.whoViewedMyProfileHolder.f19665h.f58151c.m6968b(true);
            this.whoViewedMyProfileHolder.f19665h.f58151c.m6966c(11.0d);
            this.whoViewedMyProfileHolder.f19665h.f58151c.m6963d(0.0d);
            this.whoViewedMyProfileHolder.f19665h.f58151c.m6967c();
            this.whoViewedMyProfileHolder.f19665h.f58151c.m6973a(C16577j.EnumC16580a.FIX);
            this.whoViewedMyProfileHolder.f19665h.f58151c.m6962d(false);
            this.whoViewedMyProfileHolder.f19665h.f58151c.m6976a(i * 1.5d);
            this.whoViewedMyProfileHolder.f19665h.f58151c.m6970b(0.0d);
            this.whoViewedMyProfileHolder.f19665h.f58151c.m6964d();
            this.whoViewedMyProfileHolder.f19665h.f58151c.m6969b(C16577j.EnumC16580a.FIX);
            C16550e c16550e = new C16550e(c16548cArr);
            c16550e.f58216f.f58230b = true;
            c16550e.f58216f.f58233e = ThemeUtils.getColor(2131099786);
            c16550e.f58217g = true;
            c16550e.f58216f.f58231c = true;
            c16550e.f58200c = ThemeUtils.getColor(2131099784);
            c16550e.f58216f.f58232d = 7.0f;
            c16550e.f58216f.f58229a = 9;
            C16575a c16575a = new C16575a(this.whoViewedMyProfileHolder.f19665h);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMMM d");
            Calendar calendar = Calendar.getInstance();
            String format = simpleDateFormat.format(calendar.getTime());
            calendar.add(2, -1);
            String format2 = simpleDateFormat.format(calendar.getTime());
            calendar.add(2, -1);
            c16575a.m6980a(new String[]{simpleDateFormat.format(calendar.getTime()), format2, format, ""});
            this.whoViewedMyProfileHolder.f19665h.f58150b.m7018a(c16575a);
            this.whoViewedMyProfileHolder.f19665h.f58150b.m7002j();
            this.whoViewedMyProfileHolder.f19665h.f58150b.m7011c(ThemeUtils.getColor(2131100140));
            this.whoViewedMyProfileHolder.f19665h.f58150b.m7014b(ThemeUtils.getColor(2131100140));
            this.whoViewedMyProfileHolder.f19665h.f58150b.m7020a(ThemeUtils.getColor(2131100140));
            this.whoViewedMyProfileHolder.f19665h.f58150b.f58251e = 3;
            C16561c c16561c = this.whoViewedMyProfileHolder.f19665h.f58150b;
            c16561c.f58253g = true;
            c16561c.f58252f = true;
            this.whoViewedMyProfileHolder.f19665h.m7061a(c16550e);
        }
    }

    private void refreshCardData() {
        if (this.presentersContainer.getContainerMode() == this.mode) {
            this.graphPointsCurrent = WhoViewedMyProfileDataManager.m29359a(AnalyticsDataManager.DatePeriod.CURRENT);
            Pair<Integer, HashMap<Pair<Long, Long>, Integer>> m29359a = WhoViewedMyProfileDataManager.m29359a(AnalyticsDataManager.DatePeriod.PREVIOUS);
            this.graphPointsPrevious = m29359a;
            updateCardData(Pair.create(this.graphPointsCurrent, m29359a), true);
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

    public void onBindViewHolder(final WhoViewedMyProfileHolder whoViewedMyProfileHolder) {
        this.alreadyBounded = true;
        whoViewedMyProfileHolder.f19666i.setVisibility(8);
        whoViewedMyProfileHolder.f19662e.setText(String.valueOf(this.graphPointsCurrent.first));
        whoViewedMyProfileHolder.f19662e.setTextColor(ThemeUtils.getColor(2131100140));
        int intValue = ((Integer) this.graphPointsPrevious.first).intValue() != 0 ? (int) (((((Integer) this.graphPointsCurrent.first).intValue() - ((Integer) this.graphPointsPrevious.first).intValue()) / ((Integer) this.graphPointsPrevious.first).intValue()) * 100.0f) : 100;
        whoViewedMyProfileHolder.f19663f.setText(String.format("%d%%", Integer.valueOf(intValue)));
        int i = intValue > 0 ? 2131231458 : 2131231457;
        int i2 = intValue > 0 ? 2131099916 : 2131099675;
        whoViewedMyProfileHolder.f19663f.setTextColor(ThemeUtils.getColor(i2));
        whoViewedMyProfileHolder.f19664g.setImageResource(i);
        whoViewedMyProfileHolder.f19664g.setColorFilter(ThemeUtils.getColor(i2));
        whoViewedMyProfileHolder.f19659b.setText(Activities.getString(2131888240));
        whoViewedMyProfileHolder.f19659b.setTextColor(ThemeUtils.getColor(2131100140));
        whoViewedMyProfileHolder.f19660c.setText(Activities.getString(2131888239));
        whoViewedMyProfileHolder.f19660c.setTextColor(ThemeUtils.getColor(2131100108));
        whoViewedMyProfileHolder.f19661d.setImageResource(2131231767);
        whoViewedMyProfileHolder.f19661d.setColorFilter(ThemeUtils.getColor(2131099784));
        whoViewedMyProfileHolder.f19667j.setBackgroundResource(2131232136);
        whoViewedMyProfileHolder.f19667j.setText(Activities.getString(2131887617));
        ViewUtils.m27316a(whoViewedMyProfileHolder.f19667j, Integer.valueOf(ThemeUtils.getColor(2131099817)), Integer.valueOf(ThemeUtils.getColor(2131099817)));
        whoViewedMyProfileHolder.f19667j.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.WhoViewedMyProfileCard.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().m28450a(Constants.INSIGHTS, "ClickInsightsViewProfile");
                AndroidUtils.m27630a(whoViewedMyProfileHolder.f19667j, 1);
                Activities.m27656b(WhoViewedMyProfileCard.this.presentersContainer.getRealContext(), new Intent(WhoViewedMyProfileCard.this.presentersContainer.getRealContext(), WhoViewedMyProfileActivity.class));
            }
        });
        if (!this.alreadyTrack || !this.needToShowGraph) {
            return;
        }
        handleGraph();
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

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

    public void updateCardData(Pair<Pair<Integer, HashMap<Pair<Long, Long>, Integer>>, Pair<Integer, HashMap<Pair<Long, Long>, Integer>>> pair, boolean z) {
        this.graphPointsCurrent = (Pair) pair.first;
        this.graphPointsPrevious = (Pair) pair.second;
        if (this.presentersContainer.getContainerMode() == this.mode) {
            if ((Prefs.f26595hA.get().booleanValue() || WhoViewedMyProfileDataManager.m29349g() <= 4) && !Prefs.f26600hF.get().booleanValue()) {
                hideCard();
            } else {
                showCard(true);
            }
        }
    }
}
