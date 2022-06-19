package com.callapp.contacts.manager.permission;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.permission.PermissionManager;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/permission/PermissionDeniedEvent.class */
public interface PermissionDeniedEvent {

    /* renamed from: a */
    public static final EventType<PermissionDeniedEvent, PermissionManager.PermissionGroup> f26064a = _$$Lambda$7PDzWy_7nIKUtwlQ7P0IrQW3sDA.INSTANCE;

    void onPermissionDenied(PermissionManager.PermissionGroup permissionGroup);
}
