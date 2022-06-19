package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbeq.class */
public abstract class zzbeq<T> {
    private static final zzbfx zza;

    static {
        zzbfv zzbfvVar = null;
        try {
            Object newInstance = zzbep.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                zzcgt.zzi("ClientApi class is not an instance of IBinder.");
            } else {
                IBinder iBinder = (IBinder) newInstance;
                if (iBinder != null) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    zzbfvVar = queryLocalInterface instanceof zzbfx ? (zzbfx) queryLocalInterface : new zzbfv(iBinder);
                }
            }
        } catch (Exception e) {
            zzcgt.zzi("Failed to instantiate ClientApi class.");
        }
        zza = zzbfvVar;
    }

    private final T zze() {
        zzbfx zzbfxVar = zza;
        if (zzbfxVar == null) {
            zzcgt.zzi("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return zzc(zzbfxVar);
        } catch (RemoteException e) {
            zzcgt.zzj("Cannot invoke local loader using ClientApi class.", e);
            return null;
        }
    }

    private final T zzf() {
        try {
            return zzb();
        } catch (RemoteException e) {
            zzcgt.zzj("Cannot invoke remote loader.", e);
            return null;
        }
    }

    public abstract T zza();

    public abstract T zzb() throws RemoteException;

    public abstract T zzc(zzbfx zzbfxVar) throws RemoteException;

    public final T zzd(Context context, boolean z) {
        boolean z2;
        boolean z3;
        T t;
        boolean z4 = z;
        if (!z) {
            zzber.zza();
            z4 = z;
            if (!zzcgm.zzn(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                zzcgt.zzd("Google Play Services is not available.");
                z4 = true;
            }
        }
        boolean z5 = DynamiteModule.m38740a(context, ModuleDescriptor.MODULE_ID) <= DynamiteModule.m38739b(context, ModuleDescriptor.MODULE_ID);
        zzbjl.zza(context);
        if (zzbku.zza.zze().booleanValue()) {
            z3 = false;
            z2 = false;
        } else if (zzbku.zzb.zze().booleanValue()) {
            z2 = true;
            z3 = true;
        } else {
            z3 = z4 | (!z5);
            z2 = false;
        }
        if (z3) {
            T zze = zze();
            t = zze;
            if (zze == null) {
                t = zze;
                if (!z2) {
                    t = zzf();
                }
            }
        } else {
            T zzf = zzf();
            if (zzf == null) {
                if (zzber.zze().nextInt(zzblf.zza.zze().intValue()) == 0) {
                    Bundle bundle = new Bundle();
                    bundle.putString("action", "dynamite_load");
                    bundle.putInt("is_missing", 1);
                    zzber.zza().zze(context, zzber.zzd().zza, "gmob-apps", bundle, true);
                }
            }
            t = zzf == null ? zze() : zzf;
        }
        T t2 = t;
        if (t == null) {
            t2 = zza();
        }
        return t2;
    }
}
