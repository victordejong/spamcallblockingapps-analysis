package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzed.class */
public final class zzed extends zzgf {
    protected static final AtomicReference<String[]> zza = new AtomicReference<>();
    protected static final AtomicReference<String[]> zzb = new AtomicReference<>();
    protected static final AtomicReference<String[]> zzc = new AtomicReference<>();

    public zzed(zzfl zzflVar) {
        super(zzflVar);
    }

    private static final String zzi(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        Preconditions.checkNotNull(strArr);
        Preconditions.checkNotNull(strArr2);
        Preconditions.checkNotNull(atomicReference);
        Preconditions.checkArgument(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (zzkk.zzS(str, strArr[i])) {
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

    @Override // com.google.android.gms.measurement.internal.zzgf
    protected final boolean zza() {
        return false;
    }

    public final boolean zzb() {
        this.zzx.zzas();
        return this.zzx.zzq() && Log.isLoggable(this.zzx.zzat().zzn(), 3);
    }

    public final String zzc(String str) {
        if (str == null) {
            return null;
        }
        return !zzb() ? str : zzi(str, zzgi.zzc, zzgi.zza, zza);
    }

    public final String zzd(String str) {
        if (str == null) {
            return null;
        }
        return !zzb() ? str : zzi(str, zzgj.zzb, zzgj.zza, zzb);
    }

    public final String zze(String str) {
        if (str == null) {
            return null;
        }
        if (!zzb()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return zzi(str, zzgk.zzb, zzgk.zza, zzc);
        }
        return "experiment_id(" + str + ")";
    }

    public final String zzf(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!zzb()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sb.length() != 8) {
                sb.append(", ");
            }
            sb.append(zzd(str));
            sb.append(SimpleComparison.EQUAL_TO_OPERATION);
            Object obj = bundle.get(str);
            sb.append(obj instanceof Bundle ? zzh(new Object[]{obj}) : obj instanceof Object[] ? zzh((Object[]) obj) : obj instanceof ArrayList ? zzh(((ArrayList) obj).toArray()) : String.valueOf(obj));
        }
        sb.append("}]");
        return sb.toString();
    }

    protected final String zzh(Object[] objArr) {
        if (objArr == null) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (Object obj : objArr) {
            String zzf = obj instanceof Bundle ? zzf((Bundle) obj) : String.valueOf(obj);
            if (zzf != null) {
                if (sb.length() != 1) {
                    sb.append(", ");
                }
                sb.append(zzf);
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
