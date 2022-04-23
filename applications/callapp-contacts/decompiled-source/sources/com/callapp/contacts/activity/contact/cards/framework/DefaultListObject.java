package com.callapp.contacts.activity.contact.cards.framework;

import it.gmariotti.cardslib.library.a.b;
import it.gmariotti.cardslib.library.prototypes.CardWithList;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/DefaultListObject.class */
public class DefaultListObject implements CardWithList.ListObject {

    /* renamed from: b  reason: collision with root package name */
    protected String f11857b;

    /* renamed from: c  reason: collision with root package name */
    protected b f11858c;

    /* renamed from: d  reason: collision with root package name */
    protected CardWithList.OnItemClickListener f11859d;
    protected boolean e = false;
    protected CardWithList.OnItemSwipeListener f;

    public DefaultListObject(b bVar) {
        this.f11858c = bVar;
    }

    @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
    public String getObjectId() {
        return this.f11857b;
    }

    @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
    public CardWithList.OnItemClickListener getOnItemClickListener() {
        return this.f11859d;
    }

    @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
    public CardWithList.OnItemSwipeListener getOnItemSwipeListener() {
        return this.f;
    }

    @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
    public b getParentCard() {
        return null;
    }

    @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
    public boolean isSwipeable() {
        return this.e;
    }

    @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
    public void setOnItemClickListener(CardWithList.OnItemClickListener onItemClickListener) {
        this.f11859d = onItemClickListener;
    }

    @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
    public void setOnItemSwipeListener(CardWithList.OnItemSwipeListener onItemSwipeListener) {
        if (onItemSwipeListener != null) {
            this.e = true;
        } else {
            this.e = false;
        }
        this.f = onItemSwipeListener;
    }

    @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
    public void setSwipeable(boolean z) {
        this.e = z;
    }
}
