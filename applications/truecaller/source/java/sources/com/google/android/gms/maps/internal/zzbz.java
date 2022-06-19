package com.google.android.gms.maps.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/internal/zzbz.class */
public class zzbz {

    /* renamed from: a */
    public static Context f6245a;

    /* renamed from: b */
    public static zze f6246b;

    /* renamed from: a */
    public static zze m38644a(Context context) throws GooglePlayServicesNotAvailableException {
        zze zzeVar;
        Objects.requireNonNull(context, "null reference");
        zze zzeVar2 = f6246b;
        if (zzeVar2 != null) {
            return zzeVar2;
        }
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context, 13400000);
        if (isGooglePlayServicesAvailable != 0) {
            throw new GooglePlayServicesNotAvailableException(isGooglePlayServicesAvailable);
        }
        ClassLoader classLoader = m38642c(context).getClassLoader();
        try {
            Objects.requireNonNull(classLoader, "null reference");
            IBinder iBinder = (IBinder) m38643b(classLoader.loadClass("com.google.android.gms.maps.internal.CreatorImpl"));
            if (iBinder == null) {
                zzeVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICreator");
                zzeVar = queryLocalInterface instanceof zze ? (zze) queryLocalInterface : new zzf(iBinder);
            }
            f6246b = zzeVar;
            try {
                zzeVar.m38638v1(new ObjectWrapper(m38642c(context).getResources()), GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                return f6246b;
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        } catch (ClassNotFoundException e2) {
            throw new IllegalStateException("com.google.android.gms.maps.internal.CreatorImpl".length() != 0 ? "Unable to find dynamic class ".concat("com.google.android.gms.maps.internal.CreatorImpl") : new String("Unable to find dynamic class "));
        }
    }

    /* renamed from: b */
    public static <T> T m38643b(Class<?> cls) {
        try {
            return (T) cls.newInstance();
        } catch (IllegalAccessException e) {
            String name = cls.getName();
            throw new IllegalStateException(name.length() != 0 ? "Unable to call the default constructor of ".concat(name) : new String("Unable to call the default constructor of "));
        } catch (InstantiationException e2) {
            String name2 = cls.getName();
            throw new IllegalStateException(name2.length() != 0 ? "Unable to instantiate the dynamic class ".concat(name2) : new String("Unable to instantiate the dynamic class "));
        }
    }

    /* renamed from: c */
    public static Context m38642c(Context context) {
        Context context2;
        Context context3 = f6245a;
        if (context3 != null) {
            return context3;
        }
        try {
            context2 = DynamiteModule.m38737d(context, DynamiteModule.f6176b, "com.google.android.gms.maps_dynamite").f6189a;
        } catch (Exception e) {
            context2 = GooglePlayServicesUtil.getRemoteContext(context);
        }
        f6245a = context2;
        return context2;
    }
}
