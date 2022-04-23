package com.callapp.contacts.loader.device;

import com.callapp.contacts.loader.api.LoadContext;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/DevicePhotoLoaderIfNoOtherPhotoYet.class */
public class DevicePhotoLoaderIfNoOtherPhotoYet extends DevicePhotoLoader {
    @Override // com.callapp.contacts.loader.device.DevicePhotoLoader, com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        if (!loadContext.f14535a.hasAnyPhotoUrl()) {
            super.a(loadContext);
        }
    }
}
