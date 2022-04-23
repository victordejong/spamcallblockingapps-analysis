package com.callapp.contacts.activity.contact.cards;

import com.callapp.contacts.activity.contact.cards.-$;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/_$$Lambda$ShowAdWhenAnalyticsExtand$OXR6uQUdEZY7FoCkbWPHLvrRARU.class */
public final /* synthetic */ class _$$Lambda$ShowAdWhenAnalyticsExtand$OXR6uQUdEZY7FoCkbWPHLvrRARU implements EventType {
    public static final /* synthetic */ -$.Lambda.ShowAdWhenAnalyticsExtand.OXR6uQUdEZY7FoCkbWPHLvrRARU INSTANCE = new _$$Lambda$ShowAdWhenAnalyticsExtand$OXR6uQUdEZY7FoCkbWPHLvrRARU();

    private /* synthetic */ _$$Lambda$ShowAdWhenAnalyticsExtand$OXR6uQUdEZY7FoCkbWPHLvrRARU() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((ShowAdWhenAnalyticsExtand) obj).onShowAd();
    }
}
