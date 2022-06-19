package com.callapp.contacts.manager.permission;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.permission.-$;
import com.callapp.contacts.manager.permission.PermissionManager;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/permission/_$$Lambda$GorUM07iF_eqzLr5bYAIfKdMJp4.class */
public final /* synthetic */ class _$$Lambda$GorUM07iF_eqzLr5bYAIfKdMJp4 implements EventType {
    public static final /* synthetic */ -$.Lambda.GorUM07iF-eqzLr5bYAIfKdMJp4 INSTANCE = new _$$Lambda$GorUM07iF_eqzLr5bYAIfKdMJp4();

    private /* synthetic */ _$$Lambda$GorUM07iF_eqzLr5bYAIfKdMJp4() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((PermissionAllowedEvent) obj).onPermissionAllowed((PermissionManager.PermissionGroup) obj2);
    }
}
