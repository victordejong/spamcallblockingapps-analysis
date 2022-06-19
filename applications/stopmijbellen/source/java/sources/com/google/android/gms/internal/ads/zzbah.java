package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.InputStream;
import javax.annotation.concurrent.GuardedBy;
@SafeParcelable.Class(creator = "CacheEntryParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbah.class */
public final class zzbah extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbah> CREATOR = new zzbai();
    @GuardedBy("this")
    @SafeParcelable.Field(getter = "getContentFileDescriptor", m4805id = 2)
    private ParcelFileDescriptor zza;
    @GuardedBy("this")
    @SafeParcelable.Field(getter = "hasAdditionalMetadataFromReadV2", m4805id = 3)
    private final boolean zzb;
    @GuardedBy("this")
    @SafeParcelable.Field(getter = "isDownloaded", m4805id = 4)
    private final boolean zzc;
    @GuardedBy("this")
    @SafeParcelable.Field(getter = "getCachedBytes", m4805id = 5)
    private final long zzd;
    @GuardedBy("this")
    @SafeParcelable.Field(getter = "isGcacheHit", m4805id = 6)
    private final boolean zze;

    public zzbah() {
        this(null, false, false, 0L, false);
    }

    @SafeParcelable.Constructor
    public zzbah(@SafeParcelable.Param(m4804id = 2) ParcelFileDescriptor parcelFileDescriptor, @SafeParcelable.Param(m4804id = 3) boolean z, @SafeParcelable.Param(m4804id = 4) boolean z2, @SafeParcelable.Param(m4804id = 5) long j, @SafeParcelable.Param(m4804id = 6) boolean z3) {
        this.zza = parcelFileDescriptor;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = j;
        this.zze = z3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, zzb(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 3, zzd());
        SafeParcelWriter.writeBoolean(parcel, 4, zzf());
        SafeParcelWriter.writeLong(parcel, 5, zza());
        SafeParcelWriter.writeBoolean(parcel, 6, zzg());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final long zza() {
        long j;
        synchronized (this) {
            j = this.zzd;
        }
        return j;
    }

    public final ParcelFileDescriptor zzb() {
        ParcelFileDescriptor parcelFileDescriptor;
        synchronized (this) {
            parcelFileDescriptor = this.zza;
        }
        return parcelFileDescriptor;
    }

    public final InputStream zzc() {
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
            z = this.zza != null;
        }
        return z;
    }

    public final boolean zzf() {
        boolean z;
        synchronized (this) {
            z = this.zzc;
        }
        return z;
    }

    public final boolean zzg() {
        boolean z;
        synchronized (this) {
            z = this.zze;
        }
        return z;
    }
}
