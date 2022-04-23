package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.mopub.nativeads.MoPubNativeAdPositioning;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzj.class */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new zzk();
    @SafeParcelable.Field

    /* renamed from: a */
    public boolean f29766a;
    @SafeParcelable.Field

    /* renamed from: b */
    public long f29767b;
    @SafeParcelable.Field

    /* renamed from: c */
    public float f29768c;
    @SafeParcelable.Field

    /* renamed from: d */
    public long f29769d;
    @SafeParcelable.Field

    /* renamed from: e */
    public int f29770e;

    public zzj() {
        this(true, 50L, 0.0f, Long.MAX_VALUE, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);
    }

    @SafeParcelable.Constructor
    public zzj(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 3) float f, @SafeParcelable.Param(id = 4) long j2, @SafeParcelable.Param(id = 5) int i) {
        this.f29766a = z;
        this.f29767b = j;
        this.f29768c = f;
        this.f29769d = j2;
        this.f29770e = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzj)) {
            return false;
        }
        zzj zzjVar = (zzj) obj;
        return this.f29766a == zzjVar.f29766a && this.f29767b == zzjVar.f29767b && Float.compare(this.f29768c, zzjVar.f29768c) == 0 && this.f29769d == zzjVar.f29769d && this.f29770e == zzjVar.f29770e;
    }

    public final int hashCode() {
        return Objects.m17294a(Boolean.valueOf(this.f29766a), Long.valueOf(this.f29767b), Float.valueOf(this.f29768c), Long.valueOf(this.f29769d), Integer.valueOf(this.f29770e));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DeviceOrientationRequest[mShouldUseMag=");
        sb.append(this.f29766a);
        sb.append(" mMinimumSamplingPeriodMs=");
        sb.append(this.f29767b);
        sb.append(" mSmallestAngleChangeRadians=");
        sb.append(this.f29768c);
        long j = this.f29769d;
        if (j != Long.MAX_VALUE) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            sb.append(" expireIn=");
            sb.append(j - elapsedRealtime);
            sb.append("ms");
        }
        if (this.f29770e != Integer.MAX_VALUE) {
            sb.append(" num=");
            sb.append(this.f29770e);
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17218a(parcel, 1, this.f29766a);
        SafeParcelWriter.m17230a(parcel, 2, this.f29767b);
        SafeParcelWriter.m17232a(parcel, 3, this.f29768c);
        SafeParcelWriter.m17230a(parcel, 4, this.f29769d);
        SafeParcelWriter.m17231a(parcel, 5, this.f29770e);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
