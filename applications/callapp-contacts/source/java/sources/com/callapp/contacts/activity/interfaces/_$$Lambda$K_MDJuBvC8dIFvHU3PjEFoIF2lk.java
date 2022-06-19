package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$K_MDJuBvC8dIFvHU3PjEFoIF2lk.class */
public final /* synthetic */ class _$$Lambda$K_MDJuBvC8dIFvHU3PjEFoIF2lk implements EventType {
    public static final /* synthetic */ -$.Lambda.K-MDJuBvC8dIFvHU3PjEFoIF2lk INSTANCE = new _$$Lambda$K_MDJuBvC8dIFvHU3PjEFoIF2lk();

    private /* synthetic */ _$$Lambda$K_MDJuBvC8dIFvHU3PjEFoIF2lk() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((OnMissedCallReminderMenuClickListener) obj).mo30202a((Phone) obj2);
    }
}
