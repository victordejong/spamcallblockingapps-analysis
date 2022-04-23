package com.callapp.contacts.activity.analytics.cards.myCallsCard;

import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.transition.Fade;
import androidx.transition.u;
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
import com.explorestack.iab.mraid.h;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard.class */
public class CDMyCallsCard extends BaseMyCallsCard<CDMyCallsCardHolder, ContactDetailsInsightData> {
    private CDMyCallsCardHolder cdMyCallsCardHolder;
    private ContactDetailsInsightData data;
    private String headerTitle;
    private MultiCardContainer multiCardContainer;
    private int priority;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder.class */
    public class CDMyCallsCardHolder {
        TextView A;
        TextView B;
        TextView C;
        TextView D;
        LinearLayout E;
        FrameLayout F;
        TextView G;
        TextView H;
        RoundCornerProgressBar I;
        TextView J;
        TextView K;
        RoundCornerProgressBar L;
        TextView M;
        TextView N;
        RoundCornerProgressBar O;
        TextView P;
        private ImageView R;
        private LinearLayout S;
        private ImageView T;
        private LinearLayout U;
        private LinearLayout V;
        private TextView W;

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f10838a;

        /* renamed from: b  reason: collision with root package name */
        TextView f10839b;

        /* renamed from: c  reason: collision with root package name */
        TextView f10840c;

        /* renamed from: d  reason: collision with root package name */
        TextView f10841d;
        TextView e;
        TextView f;
        TextView g;
        TextView h;
        TextView i;
        TextView j;
        LinearLayout k;
        TextView l;
        TextView m;
        TextView n;
        TextView o;
        TextView p;
        TextView q;
        TextView r;
        TextView s;
        TextView t;
        LinearLayout u;
        TextView v;
        TextView w;
        TextView x;
        TextView y;
        TextView z;

        public CDMyCallsCardHolder(View view) {
            LinearLayout linearLayout = (LinearLayout) view.findViewById(2131363705);
            this.f10838a = linearLayout;
            this.W = (TextView) linearLayout.findViewById(2131363233);
            this.f10839b = (TextView) this.f10838a.findViewById(2131364199);
            LinearLayout linearLayout2 = (LinearLayout) this.f10838a.findViewById(2131364192);
            this.k = linearLayout2;
            this.f10840c = (TextView) linearLayout2.findViewById(2131362651);
            this.f10841d = (TextView) this.k.findViewById(2131362650);
            this.e = (TextView) this.k.findViewById(2131362653);
            this.f = (TextView) this.k.findViewById(2131362652);
            this.g = (TextView) this.k.findViewById(2131362656);
            this.h = (TextView) this.k.findViewById(2131362655);
            this.i = (TextView) this.k.findViewById(2131362658);
            this.j = (TextView) this.k.findViewById(2131362657);
            this.l = (TextView) this.f10838a.findViewById(2131363081);
            LinearLayout linearLayout3 = (LinearLayout) this.f10838a.findViewById(2131363074);
            this.u = linearLayout3;
            this.m = (TextView) linearLayout3.findViewById(2131362651);
            this.n = (TextView) this.u.findViewById(2131362650);
            this.o = (TextView) this.u.findViewById(2131362653);
            this.p = (TextView) this.u.findViewById(2131362652);
            this.q = (TextView) this.u.findViewById(2131362656);
            this.r = (TextView) this.u.findViewById(2131362655);
            this.s = (TextView) this.u.findViewById(2131362658);
            this.t = (TextView) this.u.findViewById(2131362657);
            this.v = (TextView) this.f10838a.findViewById(2131363440);
            LinearLayout linearLayout4 = (LinearLayout) this.f10838a.findViewById(2131363432);
            this.E = linearLayout4;
            this.w = (TextView) linearLayout4.findViewById(2131362651);
            this.x = (TextView) this.E.findViewById(2131362650);
            this.y = (TextView) this.E.findViewById(2131362653);
            this.z = (TextView) this.E.findViewById(2131362652);
            this.A = (TextView) this.E.findViewById(2131362656);
            this.B = (TextView) this.E.findViewById(2131362655);
            this.C = (TextView) this.E.findViewById(2131362658);
            this.D = (TextView) this.E.findViewById(2131362657);
            this.R = (ImageView) this.f10838a.findViewById(2131363435);
            this.F = (FrameLayout) this.f10838a.findViewById(2131362124);
            this.G = (TextView) this.f10838a.findViewById(2131363396);
            this.H = (TextView) this.f10838a.findViewById(2131364197);
            this.I = (RoundCornerProgressBar) this.f10838a.findViewById(2131364198);
            this.J = (TextView) this.f10838a.findViewById(2131364196);
            this.K = (TextView) this.f10838a.findViewById(2131363079);
            this.L = (RoundCornerProgressBar) this.f10838a.findViewById(2131363080);
            this.M = (TextView) this.f10838a.findViewById(2131363078);
            this.N = (TextView) this.f10838a.findViewById(2131363438);
            this.O = (RoundCornerProgressBar) this.f10838a.findViewById(2131363439);
            this.P = (TextView) this.f10838a.findViewById(2131363437);
            this.S = (LinearLayout) this.f10838a.findViewById(2131364174);
            this.T = (ImageView) this.f10838a.findViewById(2131364175);
            this.U = (LinearLayout) this.f10838a.findViewById(2131362125);
            this.V = (LinearLayout) this.f10838a.findViewById(2131362122);
        }
    }

    public CDMyCallsCard(MultiCardContainer multiCardContainer, int i) {
        super(multiCardContainer, 2131558548);
        this.multiCardContainer = multiCardContainer;
        this.priority = i;
    }

    private static Pair<Pair<Long, Long>, Pair<Long, Long>> getTimeSeparate(long j) {
        long j2;
        long j3 = j / 3600;
        if (j3 > 99) {
            j2 = j3 / 24;
            j3 %= 24;
        } else {
            j2 = 0;
        }
        return Pair.create(Pair.create(Long.valueOf(j2), Long.valueOf(j3)), Pair.create(Long.valueOf((j / 60) % 60), Long.valueOf(j % 60)));
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
        int i = 0;
        int i2 = z ? 0 : 8;
        textView.setVisibility(i2);
        textView2.setVisibility(i2);
        textView4.setText(h.f19142a);
        textView3.setText(String.valueOf(j2));
        int i3 = z2 ? 0 : 8;
        textView3.setVisibility(i3);
        textView4.setVisibility(i3);
        textView6.setText("m");
        textView5.setText(String.valueOf(j3));
        int i4 = z3 ? 0 : 8;
        textView5.setVisibility(i4);
        textView6.setVisibility(i4);
        textView8.setText("s");
        textView7.setText(String.valueOf(j4));
        if (!z4) {
            i = 8;
        }
        textView7.setVisibility(i);
        textView8.setVisibility(i);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardBgColor() {
        return this.multiCardContainer.isInExpandMode() ? ThemeUtils.a(CallAppApplication.get(), 2131099686) : ThemeUtils.a(CallAppApplication.get(), 2131099780);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getHeaderBackgroundColor() {
        return this.multiCardContainer.isInExpandMode() ? ThemeUtils.a(CallAppApplication.get(), 2131099686) : ThemeUtils.a(CallAppApplication.get(), 2131099780);
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

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(CDMyCallsCardHolder cDMyCallsCardHolder) {
        int i = this.multiCardContainer.isInExpandMode() ? 0 : 8;
        if (this.data.isShowData()) {
            cDMyCallsCardHolder.S.setVisibility(0);
            cDMyCallsCardHolder.V.setVisibility(0);
            cDMyCallsCardHolder.T.setVisibility(8);
            cDMyCallsCardHolder.U.setVisibility(8);
            cDMyCallsCardHolder.F.setVisibility(i);
            handleDuration(this.data.getTotalDuration(), cDMyCallsCardHolder.f10840c, cDMyCallsCardHolder.f10841d, cDMyCallsCardHolder.e, cDMyCallsCardHolder.f, cDMyCallsCardHolder.g, cDMyCallsCardHolder.h, cDMyCallsCardHolder.i, cDMyCallsCardHolder.j);
            handleDuration(this.data.getIncomingDuration(), cDMyCallsCardHolder.m, cDMyCallsCardHolder.n, cDMyCallsCardHolder.o, cDMyCallsCardHolder.p, cDMyCallsCardHolder.q, cDMyCallsCardHolder.r, cDMyCallsCardHolder.s, cDMyCallsCardHolder.t);
            handleDuration(this.data.getOutgoingDuration(), cDMyCallsCardHolder.w, cDMyCallsCardHolder.x, cDMyCallsCardHolder.y, cDMyCallsCardHolder.z, cDMyCallsCardHolder.A, cDMyCallsCardHolder.B, cDMyCallsCardHolder.C, cDMyCallsCardHolder.D);
            cDMyCallsCardHolder.f10839b.setText(Activities.getString(2131887911));
            cDMyCallsCardHolder.l.setText(Activities.getString(2131887265));
            cDMyCallsCardHolder.v.setText(Activities.getString(2131887266));
            cDMyCallsCardHolder.W.setText(Activities.getString(2131887693));
            cDMyCallsCardHolder.f10839b.setTextColor(ThemeUtils.getColor(2131100228));
            cDMyCallsCardHolder.l.setTextColor(ThemeUtils.getColor(2131100228));
            cDMyCallsCardHolder.v.setTextColor(ThemeUtils.getColor(2131100228));
            cDMyCallsCardHolder.W.setTextColor(ThemeUtils.getColor(2131100140));
            cDMyCallsCardHolder.G.setText(Activities.getString(2131886947));
            cDMyCallsCardHolder.H.setText(Activities.getString(2131887912));
            cDMyCallsCardHolder.J.setText(String.valueOf(this.data.getTotalCalls()));
            cDMyCallsCardHolder.G.setTextColor(ThemeUtils.getColor(2131100140));
            cDMyCallsCardHolder.H.setTextColor(ThemeUtils.getColor(2131100140));
            cDMyCallsCardHolder.J.setTextColor(ThemeUtils.getColor(2131100140));
            cDMyCallsCardHolder.I.setMax(this.data.getTotalCalls());
            cDMyCallsCardHolder.I.setProgress(this.data.getTotalCalls());
            cDMyCallsCardHolder.I.setProgressColor(ThemeUtils.getColor(2131100050));
            cDMyCallsCardHolder.K.setText(Activities.getString(2131887046));
            cDMyCallsCardHolder.M.setText(String.valueOf(this.data.getIncomingCalls()));
            cDMyCallsCardHolder.K.setTextColor(ThemeUtils.getColor(2131100140));
            cDMyCallsCardHolder.M.setTextColor(ThemeUtils.getColor(2131100140));
            cDMyCallsCardHolder.L.setMax(this.data.getTotalCalls());
            cDMyCallsCardHolder.L.setProgress(this.data.getIncomingCalls());
            cDMyCallsCardHolder.L.setProgressColor(ThemeUtils.getColor(2131099935));
            cDMyCallsCardHolder.N.setText(Activities.getString(2131887371));
            cDMyCallsCardHolder.N.setTextColor(ThemeUtils.getColor(2131100140));
            if (PhoneManager.get().isDefaultPhoneApp()) {
                cDMyCallsCardHolder.R.setVisibility(8);
                cDMyCallsCardHolder.E.setVisibility(0);
                cDMyCallsCardHolder.P.setText(String.valueOf(this.data.getOutgoingCalls()));
                cDMyCallsCardHolder.P.setTextColor(ThemeUtils.getColor(2131100140));
                cDMyCallsCardHolder.O.setMax(this.data.getTotalCalls());
                cDMyCallsCardHolder.O.setProgress(this.data.getOutgoingCalls());
                cDMyCallsCardHolder.O.setProgressColor(ThemeUtils.getColor(2131100071));
            } else {
                cDMyCallsCardHolder.R.setVisibility(0);
                cDMyCallsCardHolder.E.setVisibility(8);
                cDMyCallsCardHolder.P.setText("");
            }
        } else {
            cDMyCallsCardHolder.S.setVisibility(8);
            cDMyCallsCardHolder.V.setVisibility(8);
            cDMyCallsCardHolder.T.setVisibility(0);
            cDMyCallsCardHolder.U.setVisibility(0);
            TextView textView = (TextView) cDMyCallsCardHolder.U.findViewById(2131364130);
            TextView textView2 = (TextView) cDMyCallsCardHolder.U.findViewById(2131364011);
            textView.setText(Activities.getString(2131886545));
            textView2.setText(Activities.getString(2131886544));
            textView2.setTextColor(ThemeUtils.getColor(2131100140));
            textView.setTextColor(ThemeUtils.getColor(2131100140));
            cDMyCallsCardHolder.F.setVisibility(i);
        }
        cDMyCallsCardHolder.R.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.myCallsCard.CDMyCallsCard.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CDMyCallsCard.this.setDefaultDialer();
            }
        });
    }

    @Override // com.callapp.contacts.activity.analytics.cards.myCallsCard.BaseMyCallsCard, com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (set.contains(ContactField.names) || set.contains(ContactField.fullName)) {
            this.headerTitle = Activities.a(2131888257, contactData.getNameOrNumber());
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public CDMyCallsCardHolder onCreateViewHolder(ViewGroup viewGroup) {
        CDMyCallsCardHolder cDMyCallsCardHolder = new CDMyCallsCardHolder(viewGroup);
        this.cdMyCallsCardHolder = cDMyCallsCardHolder;
        return cDMyCallsCardHolder;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void onMultiCardExpended(boolean z) {
        final int i = z ? 0 : 8;
        if (this.cdMyCallsCardHolder != null) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.myCallsCard.CDMyCallsCard.2
                @Override // java.lang.Runnable
                public void run() {
                    u.a(CDMyCallsCard.this.cdMyCallsCardHolder.f10838a, new Fade());
                    CDMyCallsCard.this.cdMyCallsCardHolder.F.setVisibility(i);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.analytics.cards.myCallsCard.BaseMyCallsCard
    public void refreshCardData() {
        MultiCardContainer multiCardContainer;
        if (this.presentersContainer.getContainerMode() == PresentersContainer.MODE.CONTACT_DETAILS_SCREEN && (multiCardContainer = this.multiCardContainer) != null) {
            updateCardData((ContactDetailsInsightData) multiCardContainer.getData(), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCardData(ContactDetailsInsightData contactDetailsInsightData, boolean z) {
        this.data = contactDetailsInsightData;
        String a2 = Activities.a(2131888257, contactDetailsInsightData.getContactName());
        this.headerTitle = a2;
        this.multiCardContainer.updateHeaderTitle(a2);
        showCard(true);
    }
}
