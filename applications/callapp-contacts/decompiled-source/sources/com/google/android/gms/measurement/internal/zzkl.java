package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzkl.class */
public final class zzkl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzkl> CREATOR = new jr();
    public final int zza;
    public final String zzb;
    public final long zzc;
    public final Long zzd;
    public final String zze;
    public final String zzf;
    public final Double zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkl(int i, String str, long j, Long l, Float f, String str2, String str3, Double d2) {
        this.zza = i;
        this.zzb = str;
        this.zzc = j;
        this.zzd = l;
        if (i == 1) {
            this.zzg = f != null ? Double.valueOf(f.doubleValue()) : null;
        } else {
            this.zzg = d2;
        }
        this.zze = str2;
        this.zzf = str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkl(js jsVar) {
        this(jsVar.f29911c, jsVar.f29912d, jsVar.e, jsVar.f29910b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkl(String str, long j, Object obj, String str2) {
        o.a(str);
        this.zza = 2;
        this.zzb = str;
        this.zzc = j;
        this.zzf = str2;
        if (obj == null) {
            this.zzd = null;
            this.zzg = null;
            this.zze = null;
        } else if (obj instanceof Long) {
            this.zzd = (Long) obj;
            this.zzg = null;
            this.zze = null;
        } else if (obj instanceof String) {
            this.zzd = null;
            this.zzg = null;
            this.zze = (String) obj;
        } else if (obj instanceof Double) {
            this.zzd = null;
            this.zzg = (Double) obj;
            this.zze = null;
        } else {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        jr.a(this, parcel);
    }

    public final Object zza() {
        Long l = this.zzd;
        if (l != null) {
            return l;
        }
        Double d2 = this.zzg;
        if (d2 != null) {
            return d2;
        }
        String str = this.zze;
        if (str != null) {
            return str;
        }
        return null;
    }
}
