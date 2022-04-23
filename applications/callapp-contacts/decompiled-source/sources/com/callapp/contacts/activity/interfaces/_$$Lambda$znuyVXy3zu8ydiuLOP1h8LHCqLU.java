package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.model.contact.ContactData;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$znuyVXy3zu8ydiuLOP1h8LHCqLU.class */
public final /* synthetic */ class _$$Lambda$znuyVXy3zu8ydiuLOP1h8LHCqLU implements EventType {
    public static final /* synthetic */ -$.Lambda.znuyVXy3zu8ydiuLOP1h8LHCqLU INSTANCE = new _$$Lambda$znuyVXy3zu8ydiuLOP1h8LHCqLU();

    private /* synthetic */ _$$Lambda$znuyVXy3zu8ydiuLOP1h8LHCqLU() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((OnIncognitoCallStartedListener) obj).onIncognitoCallStarted((ContactData) obj2);
    }
}
