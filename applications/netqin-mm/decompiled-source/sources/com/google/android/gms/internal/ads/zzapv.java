package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.mediation.VersionInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapv.class */
public final class zzapv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzapv> CREATOR = new zzapy();
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f24243a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f24244b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f24245c;

    @SafeParcelable.Constructor
    public zzapv(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3) {
        this.f24243a = i;
        this.f24244b = i2;
        this.f24245c = i3;
    }

    /* renamed from: a */
    public static zzapv m16464a(VersionInfo versionInfo) {
        return new zzapv(versionInfo.m17926a(), versionInfo.m17924c(), versionInfo.m17925b());
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzapv)) {
            return false;
        }
        zzapv zzapvVar = (zzapv) obj;
        return zzapvVar.f24245c == this.f24245c && zzapvVar.f24244b == this.f24244b && zzapvVar.f24243a == this.f24243a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new int[]{this.f24243a, this.f24244b, this.f24245c});
    }

    public final String toString() {
        int i = this.f24243a;
        int i2 = this.f24244b;
        int i3 = this.f24245c;
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
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f24243a);
        SafeParcelWriter.m17231a(parcel, 2, this.f24244b);
        SafeParcelWriter.m17231a(parcel, 3, this.f24245c);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
