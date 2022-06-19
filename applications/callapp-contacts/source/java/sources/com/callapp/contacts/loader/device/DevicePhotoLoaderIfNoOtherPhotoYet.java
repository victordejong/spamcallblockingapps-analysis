package com.callapp.contacts.loader.device;

import com.callapp.contacts.loader.api.LoadContext;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/DevicePhotoLoaderIfNoOtherPhotoYet.class */
public class DevicePhotoLoaderIfNoOtherPhotoYet extends DevicePhotoLoader {
    @Override // com.callapp.contacts.loader.device.DevicePhotoLoader, com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
        if (!loadContext.f25322a.hasAnyPhotoUrl()) {
            super.mo27726a(loadContext);
        }
    }
}
