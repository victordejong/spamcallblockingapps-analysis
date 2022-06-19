package com.callapp.contacts.manager.permission;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.permission.PermissionManager;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/permission/PermissionAllowedEvent.class */
public interface PermissionAllowedEvent {

    /* renamed from: a */
    public static final EventType<PermissionAllowedEvent, PermissionManager.PermissionGroup> f26063a = _$$Lambda$GorUM07iF_eqzLr5bYAIfKdMJp4.INSTANCE;

    void onPermissionAllowed(PermissionManager.PermissionGroup permissionGroup);
}
