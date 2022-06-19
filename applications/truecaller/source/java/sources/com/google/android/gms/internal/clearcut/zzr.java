package com.google.android.gms.internal.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.clearcut.zzge;
import java.util.Arrays;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzr.class */
public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new zzs();
    @SafeParcelable.Field
    private final String packageName;
    @SafeParcelable.Field
    private final boolean zzay;
    @SafeParcelable.Field
    private final int zzaz;
    @SafeParcelable.Field
    private final int zzi;
    @SafeParcelable.Field
    public final String zzj;
    @SafeParcelable.Field
    public final int zzk;
    @SafeParcelable.Field
    private final String zzl;
    @SafeParcelable.Field
    private final String zzm;
    @SafeParcelable.Field
    private final boolean zzn;

    public zzr(String str, int i, int i2, String str2, String str3, String str4, boolean z, zzge.zzv.zzb zzbVar) {
        Objects.requireNonNull(str, "null reference");
        this.packageName = str;
        this.zzi = i;
        this.zzk = i2;
        this.zzj = str2;
        this.zzl = str3;
        this.zzm = str4;
        this.zzay = !z;
        this.zzn = z;
        this.zzaz = zzbVar.zzc();
    }

    @SafeParcelable.Constructor
    public zzr(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) String str2, @SafeParcelable.Param(id = 6) String str3, @SafeParcelable.Param(id = 7) boolean z, @SafeParcelable.Param(id = 8) String str4, @SafeParcelable.Param(id = 9) boolean z2, @SafeParcelable.Param(id = 10) int i3) {
        this.packageName = str;
        this.zzi = i;
        this.zzk = i2;
        this.zzl = str2;
        this.zzm = str3;
        this.zzay = z;
        this.zzj = str4;
        this.zzn = z2;
        this.zzaz = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzr)) {
            return false;
        }
        zzr zzrVar = (zzr) obj;
        return com.google.android.gms.common.internal.Objects.m38910a(this.packageName, zzrVar.packageName) && this.zzi == zzrVar.zzi && this.zzk == zzrVar.zzk && com.google.android.gms.common.internal.Objects.m38910a(this.zzj, zzrVar.zzj) && com.google.android.gms.common.internal.Objects.m38910a(this.zzl, zzrVar.zzl) && com.google.android.gms.common.internal.Objects.m38910a(this.zzm, zzrVar.zzm) && this.zzay == zzrVar.zzay && this.zzn == zzrVar.zzn && this.zzaz == zzrVar.zzaz;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.packageName, Integer.valueOf(this.zzi), Integer.valueOf(this.zzk), this.zzj, this.zzl, this.zzm, Boolean.valueOf(this.zzay), Boolean.valueOf(this.zzn), Integer.valueOf(this.zzaz)});
    }

    public final String toString() {
        StringBuilder m8696K = C22128a.m8696K("PlayLoggerContext[", "package=");
        C22128a.m8678P0(m8696K, this.packageName, ',', "packageVersionCode=");
        m8696K.append(this.zzi);
        m8696K.append(',');
        m8696K.append("logSource=");
        m8696K.append(this.zzk);
        m8696K.append(',');
        m8696K.append("logSourceName=");
        C22128a.m8678P0(m8696K, this.zzj, ',', "uploadAccount=");
        C22128a.m8678P0(m8696K, this.zzl, ',', "loggingId=");
        C22128a.m8678P0(m8696K, this.zzm, ',', "logAndroidId=");
        m8696K.append(this.zzay);
        m8696K.append(',');
        m8696K.append("isAnonymous=");
        m8696K.append(this.zzn);
        m8696K.append(',');
        m8696K.append("qosTier=");
        return C22128a.m8697J2(m8696K, this.zzaz, "]");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 2, this.packageName, false);
        int i2 = this.zzi;
        parcel.writeInt(262147);
        parcel.writeInt(i2);
        int i3 = this.zzk;
        parcel.writeInt(262148);
        parcel.writeInt(i3);
        SafeParcelWriter.m38846q(parcel, 5, this.zzl, false);
        SafeParcelWriter.m38846q(parcel, 6, this.zzm, false);
        boolean z = this.zzay;
        parcel.writeInt(262151);
        parcel.writeInt(z ? 1 : 0);
        SafeParcelWriter.m38846q(parcel, 8, this.zzj, false);
        boolean z2 = this.zzn;
        parcel.writeInt(262153);
        parcel.writeInt(z2 ? 1 : 0);
        int i4 = this.zzaz;
        parcel.writeInt(262154);
        parcel.writeInt(i4);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
