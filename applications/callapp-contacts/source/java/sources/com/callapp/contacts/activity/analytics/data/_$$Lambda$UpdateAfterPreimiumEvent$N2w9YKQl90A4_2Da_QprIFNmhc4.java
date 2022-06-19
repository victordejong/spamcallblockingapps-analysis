package com.callapp.contacts.activity.analytics.data;

import com.callapp.contacts.activity.analytics.data.-$;
import com.callapp.contacts.activity.analytics.data.UpdateAfterPreimiumEvent;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/_$$Lambda$UpdateAfterPreimiumEvent$N2w9YKQl90A4_2Da_QprIFNmhc4.class */
public final /* synthetic */ class _$$Lambda$UpdateAfterPreimiumEvent$N2w9YKQl90A4_2Da_QprIFNmhc4 implements EventType {
    public static final /* synthetic */ -$.Lambda.UpdateAfterPreimiumEvent.N2w9YKQl90A4-2Da_QprIFNmhc4 INSTANCE = new _$$Lambda$UpdateAfterPreimiumEvent$N2w9YKQl90A4_2Da_QprIFNmhc4();

    private /* synthetic */ _$$Lambda$UpdateAfterPreimiumEvent$N2w9YKQl90A4_2Da_QprIFNmhc4() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        UpdateAfterPreimiumEvent._CC.m31615a((UpdateAfterPreimiumEvent) obj, (EventBusManager.CallAppDataType) obj2);
    }
}
