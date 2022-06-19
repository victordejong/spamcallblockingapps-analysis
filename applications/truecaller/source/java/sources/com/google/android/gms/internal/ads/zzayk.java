package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.InputStream;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayk.class */
public final class zzayk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzayk> CREATOR = new zzayl();
    @SafeParcelable.Field
    private ParcelFileDescriptor zza;
    @SafeParcelable.Field
    private final boolean zzb;
    @SafeParcelable.Field
    private final boolean zzc;
    @SafeParcelable.Field
    private final long zzd;
    @SafeParcelable.Field
    private final boolean zze;

    public zzayk() {
        this(null, false, false, 0L, false);
    }

    @SafeParcelable.Constructor
    public zzayk(@SafeParcelable.Param(id = 2) ParcelFileDescriptor parcelFileDescriptor, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) boolean z2, @SafeParcelable.Param(id = 5) long j, @SafeParcelable.Param(id = 6) boolean z3) {
        this.zza = parcelFileDescriptor;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = j;
        this.zze = z3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38847p(parcel, 2, zzc(), i, false);
        boolean zzd = zzd();
        parcel.writeInt(262147);
        parcel.writeInt(zzd ? 1 : 0);
        boolean zze = zze();
        parcel.writeInt(262148);
        parcel.writeInt(zze ? 1 : 0);
        long zzf = zzf();
        parcel.writeInt(524293);
        parcel.writeLong(zzf);
        boolean zzg = zzg();
        parcel.writeInt(262150);
        parcel.writeInt(zzg ? 1 : 0);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    public final boolean zza() {
        boolean z;
        synchronized (this) {
            z = this.zza != null;
        }
        return z;
    }

    public final InputStream zzb() {
        synchronized (this) {
            ParcelFileDescriptor parcelFileDescriptor = this.zza;
            if (parcelFileDescriptor == null) {
                return null;
            }
            ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
            this.zza = null;
            return autoCloseInputStream;
        }
    }

    public final ParcelFileDescriptor zzc() {
        ParcelFileDescriptor parcelFileDescriptor;
        synchronized (this) {
            parcelFileDescriptor = this.zza;
        }
        return parcelFileDescriptor;
    }

    public final boolean zzd() {
        boolean z;
        synchronized (this) {
            z = this.zzb;
        }
        return z;
    }

    public final boolean zze() {
        boolean z;
        synchronized (this) {
            z = this.zzc;
        }
        return z;
    }

    public final long zzf() {
        long j;
        synchronized (this) {
            j = this.zzd;
        }
        return j;
    }

    public final boolean zzg() {
        boolean z;
        synchronized (this) {
            z = this.zze;
        }
        return z;
    }
}
