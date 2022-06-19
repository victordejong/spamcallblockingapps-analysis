package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbvd.class */
public final class zzbvd extends zzbvf {
    private static final zzbxr zzb = new zzbxr();
    private Map<Class<? extends NetworkExtras>, NetworkExtras> zza;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzbvj] */
    /* JADX WARN: Type inference failed for: r0v22, types: [com.google.android.gms.internal.ads.zzbwk] */
    /* JADX WARN: Type inference failed for: r0v26, types: [com.google.android.gms.internal.ads.zzbwf] */
    /* JADX WARN: Type inference failed for: r0v30, types: [com.google.android.gms.internal.ads.zzbwf] */
    /* JADX WARN: Type inference failed for: r0v34, types: [com.google.android.gms.internal.ads.zzbwf] */
    /* JADX WARN: Type inference failed for: r0v60, types: [com.google.android.gms.internal.ads.zzbwf] */
    /* JADX WARN: Type inference failed for: r0v62, types: [com.google.android.gms.internal.ads.zzbwf] */
    /* JADX WARN: Type inference failed for: r0v72, types: [com.google.android.gms.internal.ads.zzbwk] */
    @Override // com.google.android.gms.internal.ads.zzbvg
    public final zzbvj zzb(String str) throws RemoteException {
        RemoteException remoteException;
        boolean equals;
        boolean equals2;
        boolean equals3;
        try {
            Class<?> cls = Class.forName(str, false, zzbvd.class.getClassLoader());
            if (MediationAdapter.class.isAssignableFrom(cls)) {
                MediationAdapter mediationAdapter = (MediationAdapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                str = new zzbwk(mediationAdapter, (com.google.ads.mediation.NetworkExtras) this.zza.get(mediationAdapter.getAdditionalParametersType()));
            } else if (com.google.android.gms.ads.mediation.MediationAdapter.class.isAssignableFrom(cls)) {
                str = new zzbwf((com.google.android.gms.ads.mediation.MediationAdapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } else if (!Adapter.class.isAssignableFrom(cls)) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 64);
                sb.append("Could not instantiate mediation adapter: ");
                sb.append(str);
                sb.append(" (not a valid adapter).");
                zzcgt.zzi(sb.toString());
                throw new RemoteException();
            } else {
                str = new zzbwf((Adapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            }
        } finally {
            if (equals) {
            }
            return str;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzbvg
    public final boolean zzc(String str) throws RemoteException {
        try {
            return CustomEvent.class.isAssignableFrom(Class.forName(str, false, zzbvd.class.getClassLoader()));
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 88);
            sb.append("Could not load custom event implementation class: ");
            sb.append(str);
            sb.append(", trying Adapter implementation class.");
            zzcgt.zzi(sb.toString());
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvg
    public final boolean zzd(String str) throws RemoteException {
        try {
            return Adapter.class.isAssignableFrom(Class.forName(str, false, zzbvd.class.getClassLoader()));
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 104);
            sb.append("Could not load custom event implementation class as Adapter: ");
            sb.append(str);
            sb.append(", assuming old custom event implementation.");
            zzcgt.zzi(sb.toString());
            return false;
        }
    }

    public final void zze(Map<Class<? extends NetworkExtras>, NetworkExtras> map) {
        this.zza = map;
    }

    @Override // com.google.android.gms.internal.ads.zzbvg
    public final zzbxn zzf(String str) throws RemoteException {
        try {
            return new zzbxy((RtbAdapter) Class.forName(str, false, zzbxr.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Throwable th) {
            throw new RemoteException();
        }
    }
}
