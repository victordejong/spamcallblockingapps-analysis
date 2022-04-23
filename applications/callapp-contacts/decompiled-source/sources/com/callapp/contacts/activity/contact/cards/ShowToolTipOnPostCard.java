package com.callapp.contacts.activity.contact.cards;

import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ShowToolTipOnPostCard.class */
public interface ShowToolTipOnPostCard {

    /* renamed from: a  reason: collision with root package name */
    public static final EventType<ShowToolTipOnPostCard, Boolean> f11762a = _$$Lambda$ShowToolTipOnPostCard$1URamjSpevGazqNDYqyhrls3jxg.INSTANCE;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ShowToolTipOnPostCard$_CC.class */
    public final /* synthetic */ class _CC {
        public static /* synthetic */ void a(ShowToolTipOnPostCard showToolTipOnPostCard, Boolean bool) {
            showToolTipOnPostCard.onPostCallNeedToShowToolTip(bool.booleanValue());
        }
    }

    void onPostCallNeedToShowToolTip(boolean z);
}
