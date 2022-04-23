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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamCard$BlockSpamCardHolder.class */
    public class BlockSpamCardHolder {

        /* renamed from: b  reason: collision with root package name */
        private final TextView f10802b;

        /* renamed from: c  reason: collision with root package name */
        private final TextView f10803c;

        /* renamed from: d  reason: collision with root package name */
        private final TextView f10804d;
        private final RelativeLayout e;
        private final TextView f;
        private final TextView g;
        private final TextView h;
        private final RelativeLayout i;
        private final TextView j;
        private final LinearLayout k;
        private final TextView l;
        private final LinearLayout m;
        private final TextView n;
        private final ImageView o;
        private final ImageView p;
        private final TextView q;
        private final ImageView r;
        private final ImageView s;

        public BlockSpamCardHolder(View view) {
            this.f10802b = (TextView) view.findViewById(2131364148);
            this.f10803c = (TextView) view.findViewById(2131364023);
            this.f10804d = (TextView) view.findViewById(2131363936);
            this.j = (TextView) view.findViewById(2131363932);
            this.k = (LinearLayout) view.findViewById(2131363934);
            this.n = (TextView) view.findViewById(2131363937);
            this.o = (ImageView) view.findViewById(2131363933);
            this.p = (ImageView) view.findViewById(2131363938);
            this.e = (RelativeLayout) view.findViewById(2131363935);
            this.f = (TextView) view.findViewById(2131364139);
            this.g = (TextView) view.findViewById(2131364014);
            this.h = (TextView) view.findViewById(2131362107);
            this.l = (TextView) view.findViewById(2131362102);
            this.m = (LinearLayout) view.findViewById(2131362104);
            this.q = (TextView) view.findViewById(2131362108);
            this.s = (ImageView) view.findViewById(2131362109);
            this.r = (ImageView) view.findViewById(2131362103);
            this.i = (RelativeLayout) view.findViewById(2131362106);
        }
    }

    public BlockSpamCard(MultiCardContainer multiCardContainer) {
        super(multiCardContainer, 2131558486);
    }

    private void refreshCardData() {
        if (this.presentersContainer.getContainerMode() == this.mode) {
            updateCardData(Pair.create(AnalyticsDataManager.b(AnalyticsDataManager.DatePeriod.CURRENT), AnalyticsDataManager.b(AnalyticsDataManager.DatePeriod.PREVIOUS)), true);
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
        return 42;
    }

    @Override // com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent
    public void onAnalyticsRefreshCard(PresentersContainer.MODE mode) {
        this.mode = mode;
        refreshCardData();
    }

    /* JADX INFO: Access modifiers changed from: protected */
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public BlockSpamCardHolder onCreateViewHolder(ViewGroup viewGroup) {
        return new BlockSpamCardHolder(viewGroup);
    }

    @Override // it.gmariotti.cardslib.library.a.a.a
    public void setTitle(String str) {
        super.setTitle(str);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCardData(Pair<BlockSpamItem, BlockSpamItem> pair, boolean z) {
        if (!Objects.a(this.blockSpamListCurr, pair.first) || !Objects.a(this.blockSpamListPrev, pair.second)) {
            this.blockSpamListCurr = (BlockSpamItem) pair.first;
            this.blockSpamListPrev = (BlockSpamItem) pair.second;
            showCard(true);
        }
    }
}
