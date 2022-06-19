package com.google.android.gms.maps.p362a;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.maps.model.RuntimeRemoteException;
/* renamed from: com.google.android.gms.maps.a.ab */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/ab.class */
public class C13789ab {

    /* renamed from: a */
    private static final String f51146a = "ab";

    /* renamed from: b */
    private static Context f51147b;

    /* renamed from: c */
    private static AbstractC13790ac f51148c;

    /* renamed from: a */
    public static AbstractC13790ac m12246a(Context context) throws GooglePlayServicesNotAvailableException {
        C13791ad c13791ad;
        C12045o.m19162a(context);
        AbstractC13790ac abstractC13790ac = f51148c;
        if (abstractC13790ac != null) {
            return abstractC13790ac;
        }
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context, 13400000);
        if (isGooglePlayServicesAvailable != 0) {
            throw new GooglePlayServicesNotAvailableException(isGooglePlayServicesAvailable);
        }
        IBinder iBinder = (IBinder) m12244a(m12243b(context).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl");
        if (iBinder == null) {
            c13791ad = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICreator");
            c13791ad = queryLocalInterface instanceof AbstractC13790ac ? (AbstractC13790ac) queryLocalInterface : new C13791ad(iBinder);
        }
        f51148c = c13791ad;
        try {
            c13791ad.mo12239a(BinderC12129d.m18979a(m12243b(context).getResources()), GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            return f51148c;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: a */
    private static <T> T m12245a(Class<?> cls) {
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

    /* renamed from: a */
    private static <T> T m12244a(ClassLoader classLoader, String str) {
        try {
            return (T) m12245a(((ClassLoader) C12045o.m19162a(classLoader)).loadClass(str));
        } catch (ClassNotFoundException e) {
            String valueOf = String.valueOf(str);
            throw new IllegalStateException(valueOf.length() != 0 ? "Unable to find dynamic class ".concat(valueOf) : new String("Unable to find dynamic class "));
        }
    }

    /* renamed from: b */
    private static Context m12243b(Context context) {
        Context context2 = f51147b;
        if (context2 != null) {
            return context2;
        }
        Context m12242c = m12242c(context);
        f51147b = m12242c;
        return m12242c;
    }

    /* renamed from: c */
    private static Context m12242c(Context context) {
        Context context2;
        try {
            context2 = DynamiteModule.m18974a(context, DynamiteModule.f39671a, "com.google.android.gms.maps_dynamite").f39686h;
        } catch (Exception e) {
            Log.e(f51146a, "Failed to load maps module, use legacy", e);
            context2 = GooglePlayServicesUtil.getRemoteContext(context);
        }
        return context2;
    }
}
