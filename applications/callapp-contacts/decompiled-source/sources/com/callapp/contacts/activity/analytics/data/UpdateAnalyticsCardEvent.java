package com.callapp.contacts.activity.analytics.data;

import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent.class */
public interface UpdateAnalyticsCardEvent {

    /* renamed from: a  reason: collision with root package name */
    public static final EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE> f10898a = _$$Lambda$UpdateAnalyticsCardEvent$wgCGMaNi5O4sOhqJVm7A4YIDxTY.INSTANCE;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent$_CC.class */
    public final /* synthetic */ class _CC {
    }

    void onAnalyticsRefreshCard(PresentersContainer.MODE mode);
}
