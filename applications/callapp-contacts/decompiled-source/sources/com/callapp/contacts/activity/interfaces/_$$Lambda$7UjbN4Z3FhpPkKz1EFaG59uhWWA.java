package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.contact.cards.AdCard;
import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$7UjbN4Z3FhpPkKz1EFaG59uhWWA.class */
public final /* synthetic */ class _$$Lambda$7UjbN4Z3FhpPkKz1EFaG59uhWWA implements EventType {
    public static final /* synthetic */ -$.Lambda.7UjbN4Z3FhpPkKz1EFaG59uhWWA INSTANCE = new _$$Lambda$7UjbN4Z3FhpPkKz1EFaG59uhWWA();

    private /* synthetic */ _$$Lambda$7UjbN4Z3FhpPkKz1EFaG59uhWWA() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((CardShowingAdEvent) obj).onCardShowingAd((AdCard) obj2);
    }
}
