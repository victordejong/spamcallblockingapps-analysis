package com.callapp.contacts.activity.analytics.data;

import com.callapp.contacts.activity.analytics.data.-$;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/_$$Lambda$UpdateAnalyticsCardEvent$wgCGMaNi5O4sOhqJVm7A4YIDxTY.class */
public final /* synthetic */ class _$$Lambda$UpdateAnalyticsCardEvent$wgCGMaNi5O4sOhqJVm7A4YIDxTY implements EventType {
    public static final /* synthetic */ -$.Lambda.UpdateAnalyticsCardEvent.wgCGMaNi5O4sOhqJVm7A4YIDxTY INSTANCE = new _$$Lambda$UpdateAnalyticsCardEvent$wgCGMaNi5O4sOhqJVm7A4YIDxTY();

    private /* synthetic */ _$$Lambda$UpdateAnalyticsCardEvent$wgCGMaNi5O4sOhqJVm7A4YIDxTY() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((UpdateAnalyticsCardEvent) obj).onAnalyticsRefreshCard((PresentersContainer.MODE) obj2);
    }
}
