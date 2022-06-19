package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import java.util.Map;
import p154l2.AbstractC3484b;
import p154l2.AbstractC3487e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxe.class */
public final class zzbxe extends zzbxg {
    private static final zzbzs zza = new zzbzs();
    private Map<Class<? extends NetworkExtras>, NetworkExtras> zzb;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzbxk] */
    /* JADX WARN: Type inference failed for: r0v22, types: [com.google.android.gms.internal.ads.zzbyl] */
    /* JADX WARN: Type inference failed for: r0v26, types: [com.google.android.gms.internal.ads.zzbyg] */
    /* JADX WARN: Type inference failed for: r0v30, types: [com.google.android.gms.internal.ads.zzbyg] */
    /* JADX WARN: Type inference failed for: r0v34, types: [com.google.android.gms.internal.ads.zzbyg] */
    /* JADX WARN: Type inference failed for: r0v60, types: [com.google.android.gms.internal.ads.zzbyg] */
    /* JADX WARN: Type inference failed for: r0v62, types: [com.google.android.gms.internal.ads.zzbyg] */
    /* JADX WARN: Type inference failed for: r0v72, types: [com.google.android.gms.internal.ads.zzbyl] */
    @Override // com.google.android.gms.internal.ads.zzbxh
    public final zzbxk zzb(String str) throws RemoteException {
        RemoteException remoteException;
        boolean equals;
        boolean equals2;
        boolean equals3;
        try {
            Class<?> cls = Class.forName(str, false, zzbxe.class.getClassLoader());
            if (AbstractC3484b.class.isAssignableFrom(cls)) {
                AbstractC3484b abstractC3484b = (AbstractC3484b) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                str = new zzbyl(abstractC3484b, (AbstractC3487e) this.zzb.get(abstractC3484b.getAdditionalParametersType()));
            } else if (MediationAdapter.class.isAssignableFrom(cls)) {
                str = new zzbyg((MediationAdapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } else if (!Adapter.class.isAssignableFrom(cls)) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 64);
                sb.append("Could not instantiate mediation adapter: ");
                sb.append(str);
                sb.append(" (not a valid adapter).");
                zzciz.zzj(sb.toString());
                throw new RemoteException();
            } else {
                str = new zzbyg((Adapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            }
        } finally {
            if (equals) {
            }
            return str;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzbxh
    public final zzbzo zzc(String str) throws RemoteException {
        try {
            return new zzbzz((RtbAdapter) Class.forName(str, false, zzbzs.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Throwable th) {
            throw new RemoteException();
        }
    }

    public final void zzd(Map<Class<? extends NetworkExtras>, NetworkExtras> map) {
        this.zzb = map;
    }

    @Override // com.google.android.gms.internal.ads.zzbxh
    public final boolean zze(String str) throws RemoteException {
        try {
            return Adapter.class.isAssignableFrom(Class.forName(str, false, zzbxe.class.getClassLoader()));
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 104);
            sb.append("Could not load custom event implementation class as Adapter: ");
            sb.append(str);
            sb.append(", assuming old custom event implementation.");
            zzciz.zzj(sb.toString());
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxh
    public final boolean zzf(String str) throws RemoteException {
        try {
            return CustomEvent.class.isAssignableFrom(Class.forName(str, false, zzbxe.class.getClassLoader()));
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 88);
            sb.append("Could not load custom event implementation class: ");
            sb.append(str);
            sb.append(", trying Adapter implementation class.");
            zzciz.zzj(sb.toString());
            return false;
        }
    }
}
