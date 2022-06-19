package com.callapp.contacts.activity.analytics.cards.myCallsCard;

import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.transition.C2908u;
import androidx.transition.Fade;
import com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.data.items.ContactDetailsInsightData;
import com.callapp.contacts.activity.contact.cards.MultiCardContainer;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.explorestack.iab.mraid.C9568h;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard.class */
public class CDMyCallsCard extends BaseMyCallsCard<CDMyCallsCardHolder, ContactDetailsInsightData> {
    private CDMyCallsCardHolder cdMyCallsCardHolder;
    private ContactDetailsInsightData data;
    private String headerTitle;
    private MultiCardContainer multiCardContainer;
    private int priority;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder.class */
    public class CDMyCallsCardHolder {

        /* renamed from: A */
        TextView f19747A;

        /* renamed from: B */
        TextView f19748B;

        /* renamed from: C */
        TextView f19749C;

        /* renamed from: D */
        TextView f19750D;

        /* renamed from: E */
        LinearLayout f19751E;

        /* renamed from: F */
        FrameLayout f19752F;

        /* renamed from: G */
        TextView f19753G;

        /* renamed from: H */
        TextView f19754H;

        /* renamed from: I */
        RoundCornerProgressBar f19755I;

        /* renamed from: J */
        TextView f19756J;

        /* renamed from: K */
        TextView f19757K;

        /* renamed from: L */
        RoundCornerProgressBar f19758L;

        /* renamed from: M */
        TextView f19759M;

        /* renamed from: N */
        TextView f19760N;

        /* renamed from: O */
        RoundCornerProgressBar f19761O;

        /* renamed from: P */
        TextView f19762P;

        /* renamed from: R */
        private ImageView f19764R;

        /* renamed from: S */
        private LinearLayout f19765S;

        /* renamed from: T */
        private ImageView f19766T;

        /* renamed from: U */
        private LinearLayout f19767U;

        /* renamed from: V */
        private LinearLayout f19768V;

        /* renamed from: W */
        private TextView f19769W;

        /* renamed from: a */
        LinearLayout f19770a;

        /* renamed from: b */
        TextView f19771b;

        /* renamed from: c */
        TextView f19772c;

        /* renamed from: d */
        TextView f19773d;

        /* renamed from: e */
        TextView f19774e;

        /* renamed from: f */
        TextView f19775f;

        /* renamed from: g */
        TextView f19776g;

        /* renamed from: h */
        TextView f19777h;

        /* renamed from: i */
        TextView f19778i;

        /* renamed from: j */
        TextView f19779j;

        /* renamed from: k */
        LinearLayout f19780k;

        /* renamed from: l */
        TextView f19781l;

        /* renamed from: m */
        TextView f19782m;

        /* renamed from: n */
        TextView f19783n;

        /* renamed from: o */
        TextView f19784o;

        /* renamed from: p */
        TextView f19785p;

        /* renamed from: q */
        TextView f19786q;

        /* renamed from: r */
        TextView f19787r;

        /* renamed from: s */
        TextView f19788s;

        /* renamed from: t */
        TextView f19789t;

        /* renamed from: u */
        LinearLayout f19790u;

        /* renamed from: v */
        TextView f19791v;

        /* renamed from: w */
        TextView f19792w;

        /* renamed from: x */
        TextView f19793x;

        /* renamed from: y */
        TextView f19794y;

        /* renamed from: z */
        TextView f19795z;

        public CDMyCallsCardHolder(View view) {
            CDMyCallsCard.this = r5;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(2131363705);
            this.f19770a = linearLayout;
            this.f19769W = (TextView) linearLayout.findViewById(2131363233);
            this.f19771b = (TextView) this.f19770a.findViewById(2131364199);
            LinearLayout linearLayout2 = (LinearLayout) this.f19770a.findViewById(2131364192);
            this.f19780k = linearLayout2;
            this.f19772c = (TextView) linearLayout2.findViewById(2131362651);
            this.f19773d = (TextView) this.f19780k.findViewById(2131362650);
            this.f19774e = (TextView) this.f19780k.findViewById(2131362653);
            this.f19775f = (TextView) this.f19780k.findViewById(2131362652);
            this.f19776g = (TextView) this.f19780k.findViewById(2131362656);
            this.f19777h = (TextView) this.f19780k.findViewById(2131362655);
            this.f19778i = (TextView) this.f19780k.findViewById(2131362658);
            this.f19779j = (TextView) this.f19780k.findViewById(2131362657);
            this.f19781l = (TextView) this.f19770a.findViewById(2131363081);
            LinearLayout linearLayout3 = (LinearLayout) this.f19770a.findViewById(2131363074);
            this.f19790u = linearLayout3;
            this.f19782m = (TextView) linearLayout3.findViewById(2131362651);
            this.f19783n = (TextView) this.f19790u.findViewById(2131362650);
            this.f19784o = (TextView) this.f19790u.findViewById(2131362653);
            this.f19785p = (TextView) this.f19790u.findViewById(2131362652);
            this.f19786q = (TextView) this.f19790u.findViewById(2131362656);
            this.f19787r = (TextView) this.f19790u.findViewById(2131362655);
            this.f19788s = (TextView) this.f19790u.findViewById(2131362658);
            this.f19789t = (TextView) this.f19790u.findViewById(2131362657);
            this.f19791v = (TextView) this.f19770a.findViewById(2131363440);
            LinearLayout linearLayout4 = (LinearLayout) this.f19770a.findViewById(2131363432);
            this.f19751E = linearLayout4;
            this.f19792w = (TextView) linearLayout4.findViewById(2131362651);
            this.f19793x = (TextView) this.f19751E.findViewById(2131362650);
            this.f19794y = (TextView) this.f19751E.findViewById(2131362653);
            this.f19795z = (TextView) this.f19751E.findViewById(2131362652);
            this.f19747A = (TextView) this.f19751E.findViewById(2131362656);
            this.f19748B = (TextView) this.f19751E.findViewById(2131362655);
            this.f19749C = (TextView) this.f19751E.findViewById(2131362658);
            this.f19750D = (TextView) this.f19751E.findViewById(2131362657);
            this.f19764R = (ImageView) this.f19770a.findViewById(2131363435);
            this.f19752F = (FrameLayout) this.f19770a.findViewById(2131362124);
            this.f19753G = (TextView) this.f19770a.findViewById(2131363396);
            this.f19754H = (TextView) this.f19770a.findViewById(2131364197);
            this.f19755I = (RoundCornerProgressBar) this.f19770a.findViewById(2131364198);
            this.f19756J = (TextView) this.f19770a.findViewById(2131364196);
            this.f19757K = (TextView) this.f19770a.findViewById(2131363079);
            this.f19758L = (RoundCornerProgressBar) this.f19770a.findViewById(2131363080);
            this.f19759M = (TextView) this.f19770a.findViewById(2131363078);
            this.f19760N = (TextView) this.f19770a.findViewById(2131363438);
            this.f19761O = (RoundCornerProgressBar) this.f19770a.findViewById(2131363439);
            this.f19762P = (TextView) this.f19770a.findViewById(2131363437);
            this.f19765S = (LinearLayout) this.f19770a.findViewById(2131364174);
            this.f19766T = (ImageView) this.f19770a.findViewById(2131364175);
            this.f19767U = (LinearLayout) this.f19770a.findViewById(2131362125);
            this.f19768V = (LinearLayout) this.f19770a.findViewById(2131362122);
        }
    }

    public CDMyCallsCard(MultiCardContainer multiCardContainer, int i) {
        super(multiCardContainer, 2131558548);
        this.multiCardContainer = multiCardContainer;
        this.priority = i;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    private static Pair<Pair<Long, Long>, Pair<Long, Long>> getTimeSeparate(long j) {
        boolean z;
        char c;
        char c2 = j / 3600;
        if (c2 > 99) {
            z = c2 / 24;
            c = c2 % 24;
        } else {
            z = false;
            c = c2;
        }
        return Pair.create(Pair.create(Long.valueOf(z ? 1L : 0L), Long.valueOf(c)), Pair.create(Long.valueOf((j / 60) % 60), Long.valueOf(j % 60)));
    }

    public static void handleDuration(float f, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8) {
        Pair<Pair<Long, Long>, Pair<Long, Long>> timeSeparate = getTimeSeparate(f);
        if (((Long) ((Pair) timeSeparate.first).first).longValue() >= 1) {
            setDurationText(textView, textView2, true, ((Long) ((Pair) timeSeparate.first).first).longValue(), textView3, textView4, true, ((Long) ((Pair) timeSeparate.first).second).longValue(), textView5, textView6, false, 0L, textView7, textView8, false, 0L);
        } else if (((Long) ((Pair) timeSeparate.first).second).longValue() >= 1) {
            setDurationText(textView, textView2, false, 0L, textView3, textView4, true, ((Long) ((Pair) timeSeparate.first).second).longValue(), textView5, textView6, true, ((Long) ((Pair) timeSeparate.second).first).longValue(), textView7, textView8, false, 0L);
        } else if (((Long) ((Pair) timeSeparate.second).first).longValue() >= 1) {
            setDurationText(textView, textView2, false, 0L, textView3, textView4, false, 0L, textView5, textView6, true, ((Long) ((Pair) timeSeparate.second).first).longValue(), textView7, textView8, true, ((Long) ((Pair) timeSeparate.second).second).longValue());
        } else {
            setDurationText(textView, textView2, false, 0L, textView3, textView4, false, 0L, textView5, textView6, false, 0L, textView7, textView8, true, ((Long) ((Pair) timeSeparate.second).second).longValue());
        }
    }

    private static void setDurationText(TextView textView, TextView textView2, boolean z, long j, TextView textView3, TextView textView4, boolean z2, long j2, TextView textView5, TextView textView6, boolean z3, long j3, TextView textView7, TextView textView8, boolean z4, long j4) {
        textView2.setText("d");
        textView.setText(String.valueOf(j));
        int i = z ? 0 : 8;
        textView.setVisibility(i);
        textView2.setVisibility(i);
        textView4.setText(C9568h.f32519a);
        textView3.setText(String.valueOf(j2));
        int i2 = z2 ? 0 : 8;
        textView3.setVisibility(i2);
        textView4.setVisibility(i2);
        textView6.setText("m");
        textView5.setText(String.valueOf(j3));
        int i3 = z3 ? 0 : 8;
        textView5.setVisibility(i3);
        textView6.setVisibility(i3);
        textView8.setText("s");
        textView7.setText(String.valueOf(j4));
        int i4 = z4 ? 0 : 8;
        textView7.setVisibility(i4);
        textView8.setVisibility(i4);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardBgColor() {
        return this.multiCardContainer.isInExpandMode() ? ThemeUtils.m27386a(CallAppApplication.get(), 2131099686) : ThemeUtils.m27386a(CallAppApplication.get(), 2131099780);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getHeaderBackgroundColor() {
        return this.multiCardContainer.isInExpandMode() ? ThemeUtils.m27386a(CallAppApplication.get(), 2131099686) : ThemeUtils.m27386a(CallAppApplication.get(), 2131099780);
    }

    @Override // com.callapp.contacts.activity.analytics.cards.myCallsCard.BaseMyCallsCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.analytics.cards.myCallsCard.BaseMyCallsCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NAME_FIELDS;
    }

    @Override // com.callapp.contacts.activity.analytics.cards.myCallsCard.BaseMyCallsCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return this.priority;
    }

    public void onBindViewHolder(CDMyCallsCardHolder cDMyCallsCardHolder) {
        int i = this.multiCardContainer.isInExpandMode() ? 0 : 8;
        if (this.data.isShowData()) {
            cDMyCallsCardHolder.f19765S.setVisibility(0);
            cDMyCallsCardHolder.f19768V.setVisibility(0);
            cDMyCallsCardHolder.f19766T.setVisibility(8);
            cDMyCallsCardHolder.f19767U.setVisibility(8);
            cDMyCallsCardHolder.f19752F.setVisibility(i);
            handleDuration(this.data.getTotalDuration(), cDMyCallsCardHolder.f19772c, cDMyCallsCardHolder.f19773d, cDMyCallsCardHolder.f19774e, cDMyCallsCardHolder.f19775f, cDMyCallsCardHolder.f19776g, cDMyCallsCardHolder.f19777h, cDMyCallsCardHolder.f19778i, cDMyCallsCardHolder.f19779j);
            handleDuration(this.data.getIncomingDuration(), cDMyCallsCardHolder.f19782m, cDMyCallsCardHolder.f19783n, cDMyCallsCardHolder.f19784o, cDMyCallsCardHolder.f19785p, cDMyCallsCardHolder.f19786q, cDMyCallsCardHolder.f19787r, cDMyCallsCardHolder.f19788s, cDMyCallsCardHolder.f19789t);
            handleDuration(this.data.getOutgoingDuration(), cDMyCallsCardHolder.f19792w, cDMyCallsCardHolder.f19793x, cDMyCallsCardHolder.f19794y, cDMyCallsCardHolder.f19795z, cDMyCallsCardHolder.f19747A, cDMyCallsCardHolder.f19748B, cDMyCallsCardHolder.f19749C, cDMyCallsCardHolder.f19750D);
            cDMyCallsCardHolder.f19771b.setText(Activities.getString(2131887911));
            cDMyCallsCardHolder.f19781l.setText(Activities.getString(2131887265));
            cDMyCallsCardHolder.f19791v.setText(Activities.getString(2131887266));
            cDMyCallsCardHolder.f19769W.setText(Activities.getString(2131887693));
            cDMyCallsCardHolder.f19771b.setTextColor(ThemeUtils.getColor(2131100228));
            cDMyCallsCardHolder.f19781l.setTextColor(ThemeUtils.getColor(2131100228));
            cDMyCallsCardHolder.f19791v.setTextColor(ThemeUtils.getColor(2131100228));
            cDMyCallsCardHolder.f19769W.setTextColor(ThemeUtils.getColor(2131100140));
            cDMyCallsCardHolder.f19753G.setText(Activities.getString(2131886947));
            cDMyCallsCardHolder.f19754H.setText(Activities.getString(2131887912));
            cDMyCallsCardHolder.f19756J.setText(String.valueOf(this.data.getTotalCalls()));
            cDMyCallsCardHolder.f19753G.setTextColor(ThemeUtils.getColor(2131100140));
            cDMyCallsCardHolder.f19754H.setTextColor(ThemeUtils.getColor(2131100140));
            cDMyCallsCardHolder.f19756J.setTextColor(ThemeUtils.getColor(2131100140));
            cDMyCallsCardHolder.f19755I.setMax(this.data.getTotalCalls());
            cDMyCallsCardHolder.f19755I.setProgress(this.data.getTotalCalls());
            cDMyCallsCardHolder.f19755I.setProgressColor(ThemeUtils.getColor(2131100050));
            cDMyCallsCardHolder.f19757K.setText(Activities.getString(2131887046));
            cDMyCallsCardHolder.f19759M.setText(String.valueOf(this.data.getIncomingCalls()));
            cDMyCallsCardHolder.f19757K.setTextColor(ThemeUtils.getColor(2131100140));
            cDMyCallsCardHolder.f19759M.setTextColor(ThemeUtils.getColor(2131100140));
            cDMyCallsCardHolder.f19758L.setMax(this.data.getTotalCalls());
            cDMyCallsCardHolder.f19758L.setProgress(this.data.getIncomingCalls());
            cDMyCallsCardHolder.f19758L.setProgressColor(ThemeUtils.getColor(2131099935));
            cDMyCallsCardHolder.f19760N.setText(Activities.getString(2131887371));
            cDMyCallsCardHolder.f19760N.setTextColor(ThemeUtils.getColor(2131100140));
            if (PhoneManager.get().isDefaultPhoneApp()) {
                cDMyCallsCardHolder.f19764R.setVisibility(8);
                cDMyCallsCardHolder.f19751E.setVisibility(0);
                cDMyCallsCardHolder.f19762P.setText(String.valueOf(this.data.getOutgoingCalls()));
                cDMyCallsCardHolder.f19762P.setTextColor(ThemeUtils.getColor(2131100140));
                cDMyCallsCardHolder.f19761O.setMax(this.data.getTotalCalls());
                cDMyCallsCardHolder.f19761O.setProgress(this.data.getOutgoingCalls());
                cDMyCallsCardHolder.f19761O.setProgressColor(ThemeUtils.getColor(2131100071));
            } else {
                cDMyCallsCardHolder.f19764R.setVisibility(0);
                cDMyCallsCardHolder.f19751E.setVisibility(8);
                cDMyCallsCardHolder.f19762P.setText("");
            }
        } else {
            cDMyCallsCardHolder.f19765S.setVisibility(8);
            cDMyCallsCardHolder.f19768V.setVisibility(8);
            cDMyCallsCardHolder.f19766T.setVisibility(0);
            cDMyCallsCardHolder.f19767U.setVisibility(0);
            TextView textView = (TextView) cDMyCallsCardHolder.f19767U.findViewById(2131364130);
            TextView textView2 = (TextView) cDMyCallsCardHolder.f19767U.findViewById(2131364011);
            textView.setText(Activities.getString(2131886545));
            textView2.setText(Activities.getString(2131886544));
            textView2.setTextColor(ThemeUtils.getColor(2131100140));
            textView.setTextColor(ThemeUtils.getColor(2131100140));
            cDMyCallsCardHolder.f19752F.setVisibility(i);
        }
        cDMyCallsCardHolder.f19764R.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.myCallsCard.CDMyCallsCard.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CDMyCallsCard.this.setDefaultDialer();
            }
        });
    }

    @Override // com.callapp.contacts.activity.analytics.cards.myCallsCard.BaseMyCallsCard, com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (set.contains(ContactField.names) || set.contains(ContactField.fullName)) {
            this.headerTitle = Activities.m27697a(2131888257, contactData.getNameOrNumber());
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.myCallsCard.CDMyCallsCard.3
                @Override // java.lang.Runnable
                public void run() {
                    if (CDMyCallsCard.this.multiCardContainer != null) {
                        CDMyCallsCard.this.multiCardContainer.updateHeaderTitle(CDMyCallsCard.this.headerTitle);
                    }
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public CDMyCallsCardHolder onCreateViewHolder(ViewGroup viewGroup) {
        CDMyCallsCardHolder cDMyCallsCardHolder = new CDMyCallsCardHolder(viewGroup);
        this.cdMyCallsCardHolder = cDMyCallsCardHolder;
        return cDMyCallsCardHolder;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void onMultiCardExpended(boolean z) {
        int i = z ? 0 : 8;
        if (this.cdMyCallsCardHolder != null) {
            final int i2 = i;
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.myCallsCard.CDMyCallsCard.2
                @Override // java.lang.Runnable
                public void run() {
                    C2908u.m39680a(CDMyCallsCard.this.cdMyCallsCardHolder.f19770a, new Fade());
                    CDMyCallsCard.this.cdMyCallsCardHolder.f19752F.setVisibility(i2);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.analytics.cards.myCallsCard.BaseMyCallsCard
    public void refreshCardData() {
        MultiCardContainer multiCardContainer;
        if (this.presentersContainer.getContainerMode() != PresentersContainer.MODE.CONTACT_DETAILS_SCREEN || (multiCardContainer = this.multiCardContainer) == null) {
            return;
        }
        updateCardData((ContactDetailsInsightData) multiCardContainer.getData(), true);
    }

    public void updateCardData(ContactDetailsInsightData contactDetailsInsightData, boolean z) {
        this.data = contactDetailsInsightData;
        String m27697a = Activities.m27697a(2131888257, contactDetailsInsightData.getContactName());
        this.headerTitle = m27697a;
        this.multiCardContainer.updateHeaderTitle(m27697a);
        showCard(true);
    }
}
