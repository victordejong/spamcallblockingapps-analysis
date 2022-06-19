package com.callapp.contacts.manager.permission;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.permission.-$;
import com.callapp.contacts.manager.permission.PermissionManager;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/permission/_$$Lambda$7PDzWy_7nIKUtwlQ7P0IrQW3sDA.class */
public final /* synthetic */ class _$$Lambda$7PDzWy_7nIKUtwlQ7P0IrQW3sDA implements EventType {
    public static final /* synthetic */ -$.Lambda.7PDzWy-7nIKUtwlQ7P0IrQW3sDA INSTANCE = new _$$Lambda$7PDzWy_7nIKUtwlQ7P0IrQW3sDA();

    private /* synthetic */ _$$Lambda$7PDzWy_7nIKUtwlQ7P0IrQW3sDA() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((PermissionDeniedEvent) obj).onPermissionDenied((PermissionManager.PermissionGroup) obj2);
    }
}
