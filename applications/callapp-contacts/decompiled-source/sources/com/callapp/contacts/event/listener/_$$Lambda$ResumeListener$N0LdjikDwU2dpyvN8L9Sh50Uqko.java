package com.callapp.contacts.event.listener;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.event.listener.-$;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/event/listener/_$$Lambda$ResumeListener$N0LdjikDwU2dpyvN8L9Sh50Uqko.class */
public final /* synthetic */ class _$$Lambda$ResumeListener$N0LdjikDwU2dpyvN8L9Sh50Uqko implements EventType {
    public static final /* synthetic */ -$.Lambda.ResumeListener.N0LdjikDwU2dpyvN8L9Sh50Uqko INSTANCE = new _$$Lambda$ResumeListener$N0LdjikDwU2dpyvN8L9Sh50Uqko();

    private /* synthetic */ _$$Lambda$ResumeListener$N0LdjikDwU2dpyvN8L9Sh50Uqko() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((ResumeListener) obj).onResume();
    }
}
