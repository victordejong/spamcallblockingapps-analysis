package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$UKOXjivld2SUaDRC6WybgkkUVhw.class */
public final /* synthetic */ class _$$Lambda$UKOXjivld2SUaDRC6WybgkkUVhw implements EventType {
    public static final /* synthetic */ -$.Lambda.UKOXjivld2SUaDRC6WybgkkUVhw INSTANCE = new _$$Lambda$UKOXjivld2SUaDRC6WybgkkUVhw();

    private /* synthetic */ _$$Lambda$UKOXjivld2SUaDRC6WybgkkUVhw() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((LowDeviceStorageListener) obj).m30206a((Boolean) obj2);
    }
}
