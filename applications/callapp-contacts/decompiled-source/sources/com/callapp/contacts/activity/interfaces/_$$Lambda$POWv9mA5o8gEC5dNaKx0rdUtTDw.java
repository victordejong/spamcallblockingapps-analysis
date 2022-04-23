package com.callapp.contacts.activity.interfaces;

import android.os.Bundle;
import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$POWv9mA5o8gEC5dNaKx0rdUtTDw.class */
public final /* synthetic */ class _$$Lambda$POWv9mA5o8gEC5dNaKx0rdUtTDw implements EventType {
    public static final /* synthetic */ -$.Lambda.POWv9mA5o8gEC5dNaKx0rdUtTDw INSTANCE = new _$$Lambda$POWv9mA5o8gEC5dNaKx0rdUtTDw();

    private /* synthetic */ _$$Lambda$POWv9mA5o8gEC5dNaKx0rdUtTDw() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((RecorderStateListener) obj).a((Bundle) obj2);
    }
}
