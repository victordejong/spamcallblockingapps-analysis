package com.callapp.contacts.event.listener;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.event.listener.-$;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/event/listener/_$$Lambda$DestroyListener$czCJR2RoTKyHdmE5H__zpVts22A.class */
public final /* synthetic */ class _$$Lambda$DestroyListener$czCJR2RoTKyHdmE5H__zpVts22A implements EventType {
    public static final /* synthetic */ -$.Lambda.DestroyListener.czCJR2RoTKyHdmE5H--zpVts22A INSTANCE = new _$$Lambda$DestroyListener$czCJR2RoTKyHdmE5H__zpVts22A();

    private /* synthetic */ _$$Lambda$DestroyListener$czCJR2RoTKyHdmE5H__zpVts22A() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((DestroyListener) obj).onDestroy();
    }
}
