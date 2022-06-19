package com.callapp.contacts.activity.contact.cards.framework.horizontal.pager;

import android.view.ViewGroup;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerCard.class */
public abstract class HorizontalPagerCard<Data extends List> extends ContactCard<HorizontalPagerLayoutViewHolder, Data> {
    private HorizontalPagerLayoutViewHolder cardViewHolder;
    private Data pagerData;

    public HorizontalPagerCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558559);
    }

    protected abstract HorizontalPagerAdapter getNewPageAdapter();

    public void onBindViewHolder(HorizontalPagerLayoutViewHolder horizontalPagerLayoutViewHolder) {
        this.cardViewHolder = horizontalPagerLayoutViewHolder;
        HorizontalPagerAdapter adapter = horizontalPagerLayoutViewHolder.getAdapter();
        if (adapter == null || !adapter.m31118a(this.pagerData)) {
            return;
        }
        horizontalPagerLayoutViewHolder.m31117a();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public HorizontalPagerLayoutViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        return new HorizontalPagerLayoutViewHolder(viewGroup, getNewPageAdapter());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public /* bridge */ /* synthetic */ void updateCardData(Object obj, boolean z) {
        updateCardData((HorizontalPagerCard<Data>) ((List) obj), z);
    }

    public void updateCardData(Data data, boolean z) {
        this.pagerData = data;
        if (this.cardViewHolder == null || !isCardVisibleOnScreen()) {
            return;
        }
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerCard.1
            @Override // java.lang.Runnable
            public void run() {
                HorizontalPagerCard horizontalPagerCard = HorizontalPagerCard.this;
                horizontalPagerCard.onBindViewHolder(horizontalPagerCard.cardViewHolder);
            }
        });
    }
}
