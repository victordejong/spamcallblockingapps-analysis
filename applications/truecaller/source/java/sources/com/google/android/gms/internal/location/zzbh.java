package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.location.Geofence;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
@VisibleForTesting
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzbh.class */
public final class zzbh extends AbstractSafeParcelable implements Geofence {
    public static final Parcelable.Creator<zzbh> CREATOR = new zzbi();
    @SafeParcelable.Field
    private final String zzad;
    @SafeParcelable.Field
    private final int zzae;
    @SafeParcelable.Field
    private final short zzag;
    @SafeParcelable.Field
    private final double zzah;
    @SafeParcelable.Field
    private final double zzai;
    @SafeParcelable.Field
    private final float zzaj;
    @SafeParcelable.Field
    private final int zzak;
    @SafeParcelable.Field
    private final int zzal;
    @SafeParcelable.Field
    private final long zzdo;

    @SafeParcelable.Constructor
    public zzbh(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 7) int i, @SafeParcelable.Param(id = 3) short s, @SafeParcelable.Param(id = 4) double d, @SafeParcelable.Param(id = 5) double d2, @SafeParcelable.Param(id = 6) float f, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 8) int i2, @SafeParcelable.Param(id = 9) int i3) {
        if (str == null || str.length() > 100) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "requestId is null or too long: ".concat(valueOf) : new String("requestId is null or too long: "));
        } else if (f <= 0.0f) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("invalid radius: ");
            sb.append(f);
            throw new IllegalArgumentException(sb.toString());
        } else if (d > 90.0d || d < -90.0d) {
            StringBuilder sb2 = new StringBuilder(42);
            sb2.append("invalid latitude: ");
            sb2.append(d);
            throw new IllegalArgumentException(sb2.toString());
        } else if (d2 > 180.0d || d2 < -180.0d) {
            StringBuilder sb3 = new StringBuilder(43);
            sb3.append("invalid longitude: ");
            sb3.append(d2);
            throw new IllegalArgumentException(sb3.toString());
        } else {
            int i4 = i & 7;
            if (i4 == 0) {
                throw new IllegalArgumentException(C22128a.m8690L1(46, "No supported transition specified: ", i));
            }
            this.zzag = s;
            this.zzad = str;
            this.zzah = d;
            this.zzai = d2;
            this.zzaj = f;
            this.zzdo = j;
            this.zzae = i4;
            this.zzak = i2;
            this.zzal = i3;
        }
    }

    public static zzbh zza(byte[] bArr) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        zzbh createFromParcel = CREATOR.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzbh)) {
            return false;
        }
        zzbh zzbhVar = (zzbh) obj;
        return this.zzaj == zzbhVar.zzaj && this.zzah == zzbhVar.zzah && this.zzai == zzbhVar.zzai && this.zzag == zzbhVar.zzag;
    }

    public final String getRequestId() {
        return this.zzad;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.zzah);
        int i = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.zzai);
        return ((((Float.floatToIntBits(this.zzaj) + ((((i + 31) * 31) + ((int) ((doubleToLongBits2 >>> 32) ^ doubleToLongBits2))) * 31)) * 31) + this.zzag) * 31) + this.zzae;
    }

    public final String toString() {
        return String.format(Locale.US, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", this.zzag != 1 ? null : "CIRCLE", this.zzad.replaceAll("\\p{C}", "?"), Integer.valueOf(this.zzae), Double.valueOf(this.zzah), Double.valueOf(this.zzai), Float.valueOf(this.zzaj), Integer.valueOf(this.zzak / 1000), Integer.valueOf(this.zzal), Long.valueOf(this.zzdo));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 1, getRequestId(), false);
        long j = this.zzdo;
        parcel.writeInt(524290);
        parcel.writeLong(j);
        short s = this.zzag;
        parcel.writeInt(262147);
        parcel.writeInt(s);
        double d = this.zzah;
        parcel.writeInt(524292);
        parcel.writeDouble(d);
        double d2 = this.zzai;
        parcel.writeInt(524293);
        parcel.writeDouble(d2);
        float f = this.zzaj;
        parcel.writeInt(262150);
        parcel.writeFloat(f);
        int i2 = this.zzae;
        parcel.writeInt(262151);
        parcel.writeInt(i2);
        int i3 = this.zzak;
        parcel.writeInt(262152);
        parcel.writeInt(i3);
        int i4 = this.zzal;
        parcel.writeInt(262153);
        parcel.writeInt(i4);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
