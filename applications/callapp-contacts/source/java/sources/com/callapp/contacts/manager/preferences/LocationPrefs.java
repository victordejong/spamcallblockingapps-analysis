package com.callapp.contacts.manager.preferences;

import android.location.Location;
import android.os.Parcel;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.util.Base64Utils;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import com.callapp.repackaged.org.apache.commons.codec.binary.Base64;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/LocationPrefs.class */
public class LocationPrefs implements ManagedLifecycle {
    /* renamed from: a */
    public static void m28178a(Location location) {
        try {
            Parcel obtain = Parcel.obtain();
            location.writeToParcel(obtain, 0);
            Base64Utils.getInstance();
            String m26005a = Base64.m26005a(obtain.marshall());
            obtain.recycle();
            Prefs.f26438eC.set(m26005a);
            Prefs.f26437eB.set(Long.valueOf(System.currentTimeMillis()));
        } catch (Exception e) {
            CLog.m27609a(LocationPrefs.class, e);
        }
    }

    /* renamed from: a */
    public static boolean m28179a() {
        return Prefs.f26438eC.isNotNull();
    }

    public static LocationPrefs get() {
        return Singletons.get().getLocationPrefs();
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    public Location getLocation() {
        Exception e;
        Parcel obtain;
        String str = Prefs.f26438eC.get();
        Location location = null;
        if (StringUtils.m26045b((CharSequence) str)) {
            try {
                obtain = Parcel.obtain();
                Base64Utils.getInstance();
                byte[] m26006a = Base64.m26006a(str);
                obtain.unmarshall(m26006a, 0, m26006a.length);
                obtain.setDataPosition(0);
                location = (Location) Location.CREATOR.createFromParcel(obtain);
            } catch (Exception e2) {
                e = e2;
                location = null;
            }
            try {
                obtain.recycle();
            } catch (Exception e3) {
                e = e3;
                CLog.m27609a(LocationPrefs.class, e);
                return location;
            }
        }
        return location;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
