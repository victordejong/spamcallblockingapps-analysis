package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.mediation.VersionInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzapy.class */
public final class zzapy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzapy> CREATOR = new zzaqb();
    private final int major;
    private final int minor;
    private final int zzdow;

    public zzapy(int i, int i2, int i3) {
        this.major = i;
        this.minor = i2;
        this.zzdow = i3;
    }

    public static zzapy zza(VersionInfo versionInfo) {
        return new zzapy(versionInfo.getMajorVersion(), versionInfo.getMinorVersion(), versionInfo.getMicroVersion());
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzapy)) {
            zzapy zzapyVar = (zzapy) obj;
            return zzapyVar.zzdow == this.zzdow && zzapyVar.minor == this.minor && zzapyVar.major == this.major;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new int[]{this.major, this.minor, this.zzdow});
    }

    public final String toString() {
        int i = this.major;
        int i2 = this.minor;
        int i3 = this.zzdow;
        StringBuilder sb = new StringBuilder(35);
        sb.append(i);
        sb.append(".");
        sb.append(i2);
        sb.append(".");
        sb.append(i3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.major);
        SafeParcelWriter.writeInt(parcel, 2, this.minor);
        SafeParcelWriter.writeInt(parcel, 3, this.zzdow);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
