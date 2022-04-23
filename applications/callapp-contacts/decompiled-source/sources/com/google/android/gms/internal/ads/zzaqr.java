package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.mediation.VersionInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaqr.class */
public final class zzaqr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaqr> CREATOR = new pi();
    private final int major;
    private final int minor;
    private final int zzdqh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaqr(int i, int i2, int i3) {
        this.major = i;
        this.minor = i2;
        this.zzdqh = i3;
    }

    public static zzaqr zza(VersionInfo versionInfo) {
        return new zzaqr(versionInfo.getMajorVersion(), versionInfo.getMinorVersion(), versionInfo.getMicroVersion());
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzaqr)) {
            return false;
        }
        zzaqr zzaqrVar = (zzaqr) obj;
        return zzaqrVar.zzdqh == this.zzdqh && zzaqrVar.minor == this.minor && zzaqrVar.major == this.major;
    }

    public final int hashCode() {
        return Arrays.hashCode(new int[]{this.major, this.minor, this.zzdqh});
    }

    public final String toString() {
        int i = this.major;
        int i2 = this.minor;
        int i3 = this.zzdqh;
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
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.major);
        a.a(parcel, 2, this.minor);
        a.a(parcel, 3, this.zzdqh);
        a.b(parcel, a2);
    }
}
