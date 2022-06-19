package com.callapp.contacts.activity.contact.cards.framework;

import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.prototypes.CardWithList;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/DefaultListObject.class */
public class DefaultListObject implements CardWithList.ListObject {

    /* renamed from: b */
    protected String f21364b;

    /* renamed from: c */
    protected C18073b f21365c;

    /* renamed from: d */
    protected CardWithList.OnItemClickListener f21366d;

    /* renamed from: e */
    protected boolean f21367e = false;

    /* renamed from: f */
    protected CardWithList.OnItemSwipeListener f21368f;

    public DefaultListObject(C18073b c18073b) {
        this.f21365c = c18073b;
    }

    @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
    public String getObjectId() {
        return this.f21364b;
    }

    @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
    public CardWithList.OnItemClickListener getOnItemClickListener() {
        return this.f21366d;
    }

    @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
    public CardWithList.OnItemSwipeListener getOnItemSwipeListener() {
        return this.f21368f;
    }

    @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
    public C18073b getParentCard() {
        return null;
    }

    @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
    public boolean isSwipeable() {
        return this.f21367e;
    }

    @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
    public void setOnItemClickListener(CardWithList.OnItemClickListener onItemClickListener) {
        this.f21366d = onItemClickListener;
    }

    @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
    public void setOnItemSwipeListener(CardWithList.OnItemSwipeListener onItemSwipeListener) {
        if (onItemSwipeListener != null) {
            this.f21367e = true;
        } else {
            this.f21367e = false;
        }
        this.f21368f = onItemSwipeListener;
    }

    @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
    public void setSwipeable(boolean z) {
        this.f21367e = z;
    }
}
