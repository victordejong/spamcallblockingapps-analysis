package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$WLkTLktkV_bsrmOVEpJ2ntxLWeE.class */
public final /* synthetic */ class _$$Lambda$WLkTLktkV_bsrmOVEpJ2ntxLWeE implements EventType {
    public static final /* synthetic */ -$.Lambda.WLkTLktkV_bsrmOVEpJ2ntxLWeE INSTANCE = new _$$Lambda$WLkTLktkV_bsrmOVEpJ2ntxLWeE();

    private /* synthetic */ _$$Lambda$WLkTLktkV_bsrmOVEpJ2ntxLWeE() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((OnMissedCallCardChangeListener) obj).b((Phone) obj2);
    }
}
