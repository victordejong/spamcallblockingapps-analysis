package com.callapp.contacts.loader;

import com.callapp.common.util.Objects;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/DeviceIdAndPhoneBasedContactLoader.class */
public abstract class DeviceIdAndPhoneBasedContactLoader extends SimpleContactLoader {

    /* renamed from: a */
    protected long f25219a;

    /* renamed from: b */
    protected Phone f25220b;

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public void mo27726a(LoadContext loadContext) {
        if (loadContext.f25322a.getDeviceId() != this.f25219a || !Objects.m31915a(this.f25220b, loadContext.f25322a.getPhone())) {
            this.f25219a = loadContext.f25322a.getDeviceId();
            this.f25220b = loadContext.f25322a.getPhone();
            if (Prefs.f26657n.get().booleanValue()) {
                CLog.m27597b(DeviceIdAndPhoneBasedContactLoader.class, "internalDoLoad %s using %s", getClass().getSimpleName(), loadContext.f25322a.getId());
            }
            mo28856c(loadContext);
        }
    }

    /* renamed from: c */
    protected abstract void mo28856c(LoadContext loadContext);
}
