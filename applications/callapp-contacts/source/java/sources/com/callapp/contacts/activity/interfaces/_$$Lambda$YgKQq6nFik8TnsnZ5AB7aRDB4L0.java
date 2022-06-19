package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$YgKQq6nFik8TnsnZ5AB7aRDB4L0.class */
public final /* synthetic */ class _$$Lambda$YgKQq6nFik8TnsnZ5AB7aRDB4L0 implements EventType {
    public static final /* synthetic */ -$.Lambda.YgKQq6nFik8TnsnZ5AB7aRDB4L0 INSTANCE = new _$$Lambda$YgKQq6nFik8TnsnZ5AB7aRDB4L0();

    private /* synthetic */ _$$Lambda$YgKQq6nFik8TnsnZ5AB7aRDB4L0() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((InvalidateDataListener) obj).invalidateData((EventBusManager.CallAppDataType) obj2);
    }
}
