package com.google.android.gms.internal.vision;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.dynamite.DynamiteModule;
import com.tenor.android.core.constant.StringConstant;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzn.class */
public abstract class zzn<T> {
    private static String PREFIX = "com.google.android.gms.vision.dynamite";
    private final String tag;
    private final String zzde;
    private final String zzdf;
    private final boolean zzdg;
    private T zzdj;
    private final Context zze;
    private final Object lock = new Object();
    private boolean zzdh = false;
    private boolean zzdi = false;

    public zzn(Context context, String str, String str2) {
        this.zze = context;
        this.tag = str;
        String str3 = PREFIX;
        this.zzde = C22128a.m8671R1(C22128a.m8623f2(str2, C22128a.m8623f2(str3, 1)), str3, StringConstant.DOT, str2);
        this.zzdf = str2;
        boolean z = false;
        if (context != null) {
            zzbe.maybeInit(context);
            boolean zzjp = zzkv.zzjp();
            Boolean bool = Boolean.TRUE;
            zzdg zza = zzdg.zza("barcode", Boolean.valueOf(zzjp), "face", bool, "ica", Boolean.valueOf(zzkv.zzjq()), "ocr", bool);
            z = false;
            if (zza.containsKey(str2) && ((Boolean) zza.get(str2)).booleanValue()) {
                z = true;
            }
        }
        this.zzdg = z;
    }

    public final boolean isOperational() {
        return zzp() != null;
    }

    public abstract T zza(DynamiteModule dynamiteModule, Context context) throws RemoteException, DynamiteModule.LoadingException;

    public abstract void zzn() throws RemoteException;

    public final void zzo() {
        synchronized (this.lock) {
            if (this.zzdj == null) {
                return;
            }
            try {
                zzn();
            } catch (RemoteException e) {
            }
        }
    }

    public final T zzp() {
        DynamiteModule dynamiteModule;
        synchronized (this.lock) {
            T t = this.zzdj;
            if (t != null) {
                return t;
            }
            try {
                dynamiteModule = DynamiteModule.m38737d(this.zze, DynamiteModule.f6179e, this.zzde);
            } catch (DynamiteModule.LoadingException e) {
                DynamiteModule zza = zzr.zza(this.zze, this.zzdf, this.zzdg);
                dynamiteModule = zza;
                if (zza == null) {
                    dynamiteModule = zza;
                    if (this.zzdg) {
                        dynamiteModule = zza;
                        if (!this.zzdh) {
                            String valueOf = String.valueOf(this.zzdf);
                            if (valueOf.length() != 0) {
                                "Broadcasting download intent for dependency ".concat(valueOf);
                            } else {
                                new String("Broadcasting download intent for dependency ");
                            }
                            String str = this.zzdf;
                            Intent intent = new Intent();
                            intent.setClassName("com.google.android.gms", "com.google.android.gms.vision.DependencyBroadcastReceiverProxy");
                            intent.putExtra("com.google.android.gms.vision.DEPENDENCIES", str);
                            intent.setAction("com.google.android.gms.vision.DEPENDENCY");
                            this.zze.sendBroadcast(intent);
                            this.zzdh = true;
                            dynamiteModule = zza;
                        }
                    }
                }
            }
            if (dynamiteModule != null) {
                try {
                    this.zzdj = zza(dynamiteModule, this.zze);
                } catch (RemoteException | DynamiteModule.LoadingException e2) {
                }
            }
            boolean z = this.zzdi;
            if (!z && this.zzdj == null) {
                this.zzdi = true;
            } else if (z) {
                T t2 = this.zzdj;
            }
            return this.zzdj;
        }
    }
}
