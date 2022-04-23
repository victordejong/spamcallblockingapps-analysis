package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.contact.cards.AdCard;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/CardShowingAdEvent.class */
public interface CardShowingAdEvent {

    /* renamed from: a  reason: collision with root package name */
    public static final EventType<CardShowingAdEvent, AdCard> f12939a = _$$Lambda$7UjbN4Z3FhpPkKz1EFaG59uhWWA.INSTANCE;

    void onCardShowingAd(AdCard adCard);
}
