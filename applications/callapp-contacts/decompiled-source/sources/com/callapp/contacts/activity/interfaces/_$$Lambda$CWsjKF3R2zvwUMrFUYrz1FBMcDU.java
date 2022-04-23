package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.bus.EventType;
import kotlin.n;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$CWsjKF3R2zvwUMrFUYrz1FBMcDU.class */
public final /* synthetic */ class _$$Lambda$CWsjKF3R2zvwUMrFUYrz1FBMcDU implements EventType {
    public static final /* synthetic */ -$.Lambda.CWsjKF3R2zvwUMrFUYrz1FBMcDU INSTANCE = new _$$Lambda$CWsjKF3R2zvwUMrFUYrz1FBMcDU();

    private /* synthetic */ _$$Lambda$CWsjKF3R2zvwUMrFUYrz1FBMcDU() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((RecorderTestChangedListener) obj).onRecorderTestChanged((n) obj2);
    }
}
