package com.callapp.contacts.activity.contact.cards;

import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ScrollWhenCDAnalyticsExpand.class */
public interface ScrollWhenCDAnalyticsExpand {

    /* renamed from: a */
    public static final EventType<ScrollWhenCDAnalyticsExpand, Boolean> f21235a = C6092xd709f696.INSTANCE;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ScrollWhenCDAnalyticsExpand$_CC.class */
    public final /* synthetic */ class _CC {
        /* renamed from: a */
        public static /* synthetic */ void m31169a(ScrollWhenCDAnalyticsExpand scrollWhenCDAnalyticsExpand, Boolean bool) {
            scrollWhenCDAnalyticsExpand.onCDAnalyticsExpand(bool.booleanValue());
        }
    }

    void onCDAnalyticsExpand(boolean z);
}
