package com.callapp.contacts.activity.contact.cards;

import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ShowToolTipOnPostCard.class */
public interface ShowToolTipOnPostCard {

    /* renamed from: a */
    public static final EventType<ShowToolTipOnPostCard, Boolean> f21237a = _$$Lambda$ShowToolTipOnPostCard$1URamjSpevGazqNDYqyhrls3jxg.INSTANCE;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ShowToolTipOnPostCard$_CC.class */
    public final /* synthetic */ class _CC {
        /* renamed from: a */
        public static /* synthetic */ void m31167a(ShowToolTipOnPostCard showToolTipOnPostCard, Boolean bool) {
            showToolTipOnPostCard.onPostCallNeedToShowToolTip(bool.booleanValue());
        }
    }

    void onPostCallNeedToShowToolTip(boolean z);
}
