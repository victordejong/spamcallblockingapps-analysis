package com.callapp.contacts.activity.contact.cards;

import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ScrollWhenCDAnalyticsExpand.class */
public interface ScrollWhenCDAnalyticsExpand {

    /* renamed from: a  reason: collision with root package name */
    public static final EventType<ScrollWhenCDAnalyticsExpand, Boolean> f11760a = _$$Lambda$ScrollWhenCDAnalyticsExpand$XfIldXPrHGiBd2ZC_hn_8v7aFAs.INSTANCE;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/ScrollWhenCDAnalyticsExpand$_CC.class */
    public final /* synthetic */ class _CC {
        public static /* synthetic */ void a(ScrollWhenCDAnalyticsExpand scrollWhenCDAnalyticsExpand, Boolean bool) {
            scrollWhenCDAnalyticsExpand.onCDAnalyticsExpand(bool.booleanValue());
        }
    }

    void onCDAnalyticsExpand(boolean z);
}
