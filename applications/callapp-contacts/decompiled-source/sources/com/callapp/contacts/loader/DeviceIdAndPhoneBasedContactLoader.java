package com.callapp.contacts.loader;

import com.callapp.common.util.Objects;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader.class */
public abstract class DeviceIdAndPhoneBasedContactLoader extends SimpleContactLoader {

    /* renamed from: a  reason: collision with root package name */
    protected long f14436a;

    /* renamed from: b  reason: collision with root package name */
    protected Phone f14437b;

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public void a(LoadContext loadContext) {
        if (loadContext.f14535a.getDeviceId() != this.f14436a || !Objects.a(this.f14437b, loadContext.f14535a.getPhone())) {
            this.f14436a = loadContext.f14535a.getDeviceId();
            this.f14437b = loadContext.f14535a.getPhone();
            if (Prefs.n.get().booleanValue()) {
                CLog.b(DeviceIdAndPhoneBasedContactLoader.class, "internalDoLoad %s using %s", getClass().getSimpleName(), loadContext.f14535a.getId());
            }
            c(loadContext);
        }
    }

    protected abstract void c(LoadContext loadContext);
}
