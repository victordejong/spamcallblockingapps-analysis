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
    public static void a(Location location) {
        try {
            Parcel obtain = Parcel.obtain();
            location.writeToParcel(obtain, 0);
            Base64Utils.getInstance();
            String a2 = Base64.a(obtain.marshall());
            obtain.recycle();
            Prefs.eC.set(a2);
            Prefs.eB.set(Long.valueOf(System.currentTimeMillis()));
        } catch (Exception e) {
            CLog.a(LocationPrefs.class, e);
        }
    }

    public static boolean a() {
        return Prefs.eC.isNotNull();
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
        String str = Prefs.eC.get();
        Location location = null;
        location = null;
        if (StringUtils.b((CharSequence) str)) {
            try {
                obtain = Parcel.obtain();
                Base64Utils.getInstance();
                byte[] a2 = Base64.a(str);
                obtain.unmarshall(a2, 0, a2.length);
                obtain.setDataPosition(0);
                location = (Location) Location.CREATOR.createFromParcel(obtain);
            } catch (Exception e2) {
                e = e2;
            }
            try {
                obtain.recycle();
            } catch (Exception e3) {
                e = e3;
                CLog.a(LocationPrefs.class, e);
                return location;
            }
        }
        return location;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
