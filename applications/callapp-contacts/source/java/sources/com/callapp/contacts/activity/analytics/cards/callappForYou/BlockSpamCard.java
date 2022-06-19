package com.callapp.contacts.activity.analytics.cards.callappForYou;

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
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.contact.cards.MultiCardContainer;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.ThemeUtils;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard.class */
public class BlockSpamCard extends AnalyticsWrapperCard<BlockSpamCardHolder, Pair<BlockSpamItem, BlockSpamItem>> {
    private BlockSpamItem blockSpamListCurr;
    private BlockSpamItem blockSpamListPrev;
    private PresentersContainer.MODE mode;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder.class */
    public class BlockSpamCardHolder {

        /* renamed from: b */
        private final TextView f19669b;

        /* renamed from: c */
        private final TextView f19670c;

        /* renamed from: d */
        private final TextView f19671d;

        /* renamed from: e */
        private final RelativeLayout f19672e;

        /* renamed from: f */
        private final TextView f19673f;

        /* renamed from: g */
        private final TextView f19674g;

        /* renamed from: h */
        private final TextView f19675h;

        /* renamed from: i */
        private final RelativeLayout f19676i;

        /* renamed from: j */
        private final TextView f19677j;

        /* renamed from: k */
        private final LinearLayout f19678k;

        /* renamed from: l */
        private final TextView f19679l;

        /* renamed from: m */
        private final LinearLayout f19680m;

        /* renamed from: n */
        private final TextView f19681n;

        /* renamed from: o */
        private final ImageView f19682o;

        /* renamed from: p */
        private final ImageView f19683p;

        /* renamed from: q */
        private final TextView f19684q;

        /* renamed from: r */
        private final ImageView f19685r;

        /* renamed from: s */
        private final ImageView f19686s;

        public BlockSpamCardHolder(View view) {
            BlockSpamCard.this = r5;
            this.f19669b = (TextView) view.findViewById(2131364148);
            this.f19670c = (TextView) view.findViewById(2131364023);
            this.f19671d = (TextView) view.findViewById(2131363936);
            this.f19677j = (TextView) view.findViewById(2131363932);
            this.f19678k = (LinearLayout) view.findViewById(2131363934);
            this.f19681n = (TextView) view.findViewById(2131363937);
            this.f19682o = (ImageView) view.findViewById(2131363933);
            this.f19683p = (ImageView) view.findViewById(2131363938);
            this.f19672e = (RelativeLayout) view.findViewById(2131363935);
            this.f19673f = (TextView) view.findViewById(2131364139);
            this.f19674g = (TextView) view.findViewById(2131364014);
            this.f19675h = (TextView) view.findViewById(2131362107);
            this.f19679l = (TextView) view.findViewById(2131362102);
            this.f19680m = (LinearLayout) view.findViewById(2131362104);
            this.f19684q = (TextView) view.findViewById(2131362108);
            this.f19686s = (ImageView) view.findViewById(2131362109);
            this.f19685r = (ImageView) view.findViewById(2131362103);
            this.f19676i = (RelativeLayout) view.findViewById(2131362106);
        }
    }

    public BlockSpamCard(MultiCardContainer multiCardContainer) {
        super(multiCardContainer, 2131558486);
    }

    private void refreshCardData() {
        if (this.presentersContainer.getContainerMode() == this.mode) {
            updateCardData(Pair.create(AnalyticsDataManager.m31625b(AnalyticsDataManager.DatePeriod.CURRENT), AnalyticsDataManager.m31625b(AnalyticsDataManager.DatePeriod.PREVIOUS)), true);
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
        return 42;
    }

    @Override // com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent
    public void onAnalyticsRefreshCard(PresentersContainer.MODE mode) {
        this.mode = mode;
        refreshCardData();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(com.callapp.contacts.activity.analytics.cards.callappForYou.BlockSpamCard.BlockSpamCardHolder r8) {
        /*
            Method dump skipped, instructions count: 583
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.cards.callappForYou.BlockSpamCard.onBindViewHolder(com.callapp.contacts.activity.analytics.cards.callappForYou.BlockSpamCard$BlockSpamCardHolder):void");
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public BlockSpamCardHolder onCreateViewHolder(ViewGroup viewGroup) {
        return new BlockSpamCardHolder(viewGroup);
    }

    @Override // it.gmariotti.cardslib.library.p510a.p511a.AbstractC18070a
    public void setTitle(String str) {
        super.setTitle(str);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    public void updateCardData(Pair<BlockSpamItem, BlockSpamItem> pair, boolean z) {
        if (!Objects.m31915a(this.blockSpamListCurr, pair.first) || !Objects.m31915a(this.blockSpamListPrev, pair.second)) {
            this.blockSpamListCurr = (BlockSpamItem) pair.first;
            this.blockSpamListPrev = (BlockSpamItem) pair.second;
            showCard(true);
        }
    }
}
