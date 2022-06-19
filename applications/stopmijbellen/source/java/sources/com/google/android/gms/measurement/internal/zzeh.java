package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzeh.class */
public final class zzeh extends zzgo {
    public static final AtomicReference<String[]> zza = new AtomicReference<>();
    public static final AtomicReference<String[]> zzb = new AtomicReference<>();
    public static final AtomicReference<String[]> zzc = new AtomicReference<>();

    public zzeh(zzfu zzfuVar) {
        super(zzfuVar);
    }

    private static final String zzi(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        Preconditions.checkNotNull(strArr);
        Preconditions.checkNotNull(strArr2);
        Preconditions.checkNotNull(atomicReference);
        Preconditions.checkArgument(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (zzku.zzS(str, strArr[i])) {
                synchronized (atomicReference) {
                    String[] strArr3 = atomicReference.get();
                    String[] strArr4 = strArr3;
                    if (strArr3 == null) {
                        strArr4 = new String[strArr2.length];
                        atomicReference.set(strArr4);
                    }
                    String str3 = strArr4[i];
                    str2 = str3;
                    if (str3 == null) {
                        str2 = strArr2[i] + "(" + strArr[i] + ")";
                        strArr4[i] = str2;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    @Override // com.google.android.gms.measurement.internal.zzgo
    public final boolean zza() {
        return false;
    }

    public final boolean zzb() {
        this.zzs.zzat();
        return this.zzs.zzq() && Log.isLoggable(this.zzs.zzau().zzn(), 3);
    }

    public final String zzc(String str) {
        if (str == null) {
            return null;
        }
        return !zzb() ? str : zzi(str, zzgr.zzc, zzgr.zza, zza);
    }

    public final String zzd(String str) {
        if (str == null) {
            return null;
        }
        return !zzb() ? str : zzi(str, zzgs.zzb, zzgs.zza, zzb);
    }

    public final String zze(String str) {
        if (str == null) {
            return null;
        }
        return !zzb() ? str : str.startsWith("_exp_") ? C0082b.m8755g("experiment_id(", str, ")") : zzi(str, zzgt.zzb, zzgt.zza, zzc);
    }

    public final String zzf(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!zzb()) {
            return bundle.toString();
        }
        StringBuilder m8752j = C0082b.m8752j("Bundle[{");
        for (String str : bundle.keySet()) {
            if (m8752j.length() != 8) {
                m8752j.append(", ");
            }
            m8752j.append(zzd(str));
            m8752j.append("=");
            Object obj = bundle.get(str);
            m8752j.append(obj instanceof Bundle ? zzh(new Object[]{obj}) : obj instanceof Object[] ? zzh((Object[]) obj) : obj instanceof ArrayList ? zzh(((ArrayList) obj).toArray()) : String.valueOf(obj));
        }
        m8752j.append("}]");
        return m8752j.toString();
    }

    public final String zzh(Object[] objArr) {
        if (objArr == null) {
            return "[]";
        }
        StringBuilder m8752j = C0082b.m8752j("[");
        for (Object obj : objArr) {
            String zzf = obj instanceof Bundle ? zzf((Bundle) obj) : String.valueOf(obj);
            if (zzf != null) {
                if (m8752j.length() != 1) {
                    m8752j.append(", ");
                }
                m8752j.append(zzf);
            }
        }
        m8752j.append("]");
        return m8752j.toString();
    }
}
