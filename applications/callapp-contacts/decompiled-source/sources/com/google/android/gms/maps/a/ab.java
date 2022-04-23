package com.google.android.gms.maps.a;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.maps.model.RuntimeRemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/ab.class */
public class ab {

    /* renamed from: a  reason: collision with root package name */
    private static final String f29359a = "ab";

    /* renamed from: b  reason: collision with root package name */
    private static Context f29360b;

    /* renamed from: c  reason: collision with root package name */
    private static ac f29361c;

    public static ac a(Context context) throws GooglePlayServicesNotAvailableException {
        ac acVar;
        o.a(context);
        ac acVar2 = f29361c;
        if (acVar2 != null) {
            return acVar2;
        }
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context, 13400000);
        if (isGooglePlayServicesAvailable == 0) {
            IBinder iBinder = (IBinder) a(b(context).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl");
            if (iBinder == null) {
                acVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICreator");
                acVar = queryLocalInterface instanceof ac ? (ac) queryLocalInterface : new ad(iBinder);
            }
            f29361c = acVar;
            try {
                acVar.a(d.a(b(context).getResources()), GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                return f29361c;
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        } else {
            throw new GooglePlayServicesNotAvailableException(isGooglePlayServicesAvailable);
        }
    }

    private static <T> T a(Class<?> cls) {
        try {
            return (T) cls.newInstance();
        } catch (IllegalAccessException e) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalStateException(valueOf.length() != 0 ? "Unable to call the default constructor of ".concat(valueOf) : new String("Unable to call the default constructor of "));
        } catch (InstantiationException e2) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new IllegalStateException(valueOf2.length() != 0 ? "Unable to instantiate the dynamic class ".concat(valueOf2) : new String("Unable to instantiate the dynamic class "));
        }
    }

    private static <T> T a(ClassLoader classLoader, String str) {
        try {
            return (T) a(((ClassLoader) o.a(classLoader)).loadClass(str));
        } catch (ClassNotFoundException e) {
            String valueOf = String.valueOf(str);
            throw new IllegalStateException(valueOf.length() != 0 ? "Unable to find dynamic class ".concat(valueOf) : new String("Unable to find dynamic class "));
        }
    }

    private static Context b(Context context) {
        Context context2 = f29360b;
        if (context2 != null) {
            return context2;
        }
        Context c2 = c(context);
        f29360b = c2;
        return c2;
    }

    private static Context c(Context context) {
        Context context2;
        try {
            context2 = DynamiteModule.a(context, DynamiteModule.f22980a, "com.google.android.gms.maps_dynamite").h;
        } catch (Exception e) {
            Log.e(f29359a, "Failed to load maps module, use legacy", e);
            context2 = GooglePlayServicesUtil.getRemoteContext(context);
        }
        return context2;
    }
}
