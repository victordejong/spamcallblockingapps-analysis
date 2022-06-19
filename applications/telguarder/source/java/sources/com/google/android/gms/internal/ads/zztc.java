package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztc.class */
public final class zztc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zztc> CREATOR = new zztf();
    private ParcelFileDescriptor zzbvg;
    private final boolean zzbvh;
    private final boolean zzbvi;
    private final long zzbvj;
    private final boolean zzbvk;

    public zztc() {
        this(null, false, false, 0L, false);
    }

    public zztc(ParcelFileDescriptor parcelFileDescriptor, boolean z, boolean z2, long j, boolean z3) {
        this.zzbvg = parcelFileDescriptor;
        this.zzbvh = z;
        this.zzbvi = z2;
        this.zzbvj = j;
        this.zzbvk = z3;
    }

    private final ParcelFileDescriptor zzmy() {
        ParcelFileDescriptor parcelFileDescriptor;
        synchronized (this) {
            parcelFileDescriptor = this.zzbvg;
        }
        return parcelFileDescriptor;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, zzmy(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 3, zzmz());
        SafeParcelWriter.writeBoolean(parcel, 4, zzna());
        SafeParcelWriter.writeLong(parcel, 5, zznb());
        SafeParcelWriter.writeBoolean(parcel, 6, zznc());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final boolean zzmw() {
        boolean z;
        synchronized (this) {
            z = this.zzbvg != null;
        }
        return z;
    }

    public final InputStream zzmx() {
        synchronized (this) {
            if (this.zzbvg == null) {
                return null;
            }
            ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.zzbvg);
            this.zzbvg = null;
            return autoCloseInputStream;
        }
    }

    public final boolean zzmz() {
        boolean z;
        synchronized (this) {
            z = this.zzbvh;
        }
        return z;
    }

    public final boolean zzna() {
        boolean z;
        synchronized (this) {
            z = this.zzbvi;
        }
        return z;
    }

    public final long zznb() {
        long j;
        synchronized (this) {
            j = this.zzbvj;
        }
        return j;
    }

    public final boolean zznc() {
        boolean z;
        synchronized (this) {
            z = this.zzbvk;
        }
        return z;
    }
}
