package com.callapp.contacts.activity.contact.cards.framework.simple;

import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCardListObject;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleLayoutViewHolder;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard.class */
public abstract class SimpleCard<O extends SimpleCardListObject, T extends SimpleLayoutViewHolder<O>> extends ContactCard<T, O> {
    private T cardViewHolder;
    private O firstItemObject;

    public SimpleCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131559023);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardInitHeight() {
        return getContext().getResources().getDimensionPixelSize(2131166058);
    }

    protected void onBindViewHolder(T t) {
        this.cardViewHolder = t;
        if (this.firstItemObject == null) {
            showMainContent(false);
            return;
        }
        showMainContent(true);
        t.m31049a(this.firstItemObject, getCardInitHeight(), t.getRoot().getContext());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public /* bridge */ /* synthetic */ void onBindViewHolder(Object obj) {
        onBindViewHolder((SimpleCard<O, T>) ((SimpleLayoutViewHolder) obj));
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    public void updateCardData(O o, boolean z) {
        this.firstItemObject = o;
        if (this.cardViewHolder == null || !isCardVisibleOnScreen()) {
            return;
        }
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCard.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                SimpleCard simpleCard = SimpleCard.this;
                simpleCard.onBindViewHolder((SimpleCard) simpleCard.cardViewHolder);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public /* bridge */ /* synthetic */ void updateCardData(Object obj, boolean z) {
        updateCardData((SimpleCard<O, T>) ((SimpleCardListObject) obj), z);
    }
}
