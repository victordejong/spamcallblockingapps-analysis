package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$mMwiYusldFztaO4wUs7eUygf9TI.class */
public final /* synthetic */ class _$$Lambda$mMwiYusldFztaO4wUs7eUygf9TI implements EventType {
    public static final /* synthetic */ -$.Lambda.mMwiYusldFztaO4wUs7eUygf9TI INSTANCE = new _$$Lambda$mMwiYusldFztaO4wUs7eUygf9TI();

    private /* synthetic */ _$$Lambda$mMwiYusldFztaO4wUs7eUygf9TI() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((ShowKeypadListener) obj).mo30193a((Boolean) obj2);
    }
}
