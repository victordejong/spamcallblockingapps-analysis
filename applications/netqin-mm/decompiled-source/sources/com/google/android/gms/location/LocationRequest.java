package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.mopub.nativeads.MoPubNativeAdPositioning;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/LocationRequest.class */
public final class LocationRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationRequest> CREATOR = new zzab();
    @SafeParcelable.Field

    /* renamed from: a */
    public int f29727a;
    @SafeParcelable.Field

    /* renamed from: b */
    public long f29728b;
    @SafeParcelable.Field

    /* renamed from: c */
    public long f29729c;
    @SafeParcelable.Field

    /* renamed from: d */
    public boolean f29730d;
    @SafeParcelable.Field

    /* renamed from: e */
    public long f29731e;
    @SafeParcelable.Field

    /* renamed from: f */
    public int f29732f;
    @SafeParcelable.Field

    /* renamed from: g */
    public float f29733g;
    @SafeParcelable.Field

    /* renamed from: h */
    public long f29734h;

    public LocationRequest() {
        this.f29727a = 102;
        this.f29728b = 3600000L;
        this.f29729c = 600000L;
        this.f29730d = false;
        this.f29731e = Long.MAX_VALUE;
        this.f29732f = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        this.f29733g = 0.0f;
        this.f29734h = 0L;
    }

    @SafeParcelable.Constructor
    public LocationRequest(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 3) long j2, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) long j3, @SafeParcelable.Param(id = 6) int i2, @SafeParcelable.Param(id = 7) float f, @SafeParcelable.Param(id = 8) long j4) {
        this.f29727a = i;
        this.f29728b = j;
        this.f29729c = j2;
        this.f29730d = z;
        this.f29731e = j3;
        this.f29732f = i2;
        this.f29733g = f;
        this.f29734h = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocationRequest)) {
            return false;
        }
        LocationRequest locationRequest = (LocationRequest) obj;
        return this.f29727a == locationRequest.f29727a && this.f29728b == locationRequest.f29728b && this.f29729c == locationRequest.f29729c && this.f29730d == locationRequest.f29730d && this.f29731e == locationRequest.f29731e && this.f29732f == locationRequest.f29732f && this.f29733g == locationRequest.f29733g && m9413f() == locationRequest.m9413f();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m9413f() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f29734h
            r6 = r0
            r0 = r5
            long r0 = r0.f29728b
            r8 = r0
            r0 = r6
            r10 = r0
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0016
            r0 = r8
            r10 = r0
        L_0x0016:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.location.LocationRequest.m9413f():long");
    }

    public final int hashCode() {
        return Objects.m17294a(Integer.valueOf(this.f29727a), Long.valueOf(this.f29728b), Float.valueOf(this.f29733g), Long.valueOf(this.f29734h));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request[");
        int i = this.f29727a;
        sb.append(i != 100 ? i != 102 ? i != 104 ? i != 105 ? "???" : "PRIORITY_NO_POWER" : "PRIORITY_LOW_POWER" : "PRIORITY_BALANCED_POWER_ACCURACY" : "PRIORITY_HIGH_ACCURACY");
        if (this.f29727a != 105) {
            sb.append(" requested=");
            sb.append(this.f29728b);
            sb.append("ms");
        }
        sb.append(" fastest=");
        sb.append(this.f29729c);
        sb.append("ms");
        if (this.f29734h > this.f29728b) {
            sb.append(" maxWait=");
            sb.append(this.f29734h);
            sb.append("ms");
        }
        if (this.f29733g > 0.0f) {
            sb.append(" smallestDisplacement=");
            sb.append(this.f29733g);
            sb.append("m");
        }
        long j = this.f29731e;
        if (j != Long.MAX_VALUE) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            sb.append(" expireIn=");
            sb.append(j - elapsedRealtime);
            sb.append("ms");
        }
        if (this.f29732f != Integer.MAX_VALUE) {
            sb.append(" num=");
            sb.append(this.f29732f);
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f29727a);
        SafeParcelWriter.m17230a(parcel, 2, this.f29728b);
        SafeParcelWriter.m17230a(parcel, 3, this.f29729c);
        SafeParcelWriter.m17218a(parcel, 4, this.f29730d);
        SafeParcelWriter.m17230a(parcel, 5, this.f29731e);
        SafeParcelWriter.m17231a(parcel, 6, this.f29732f);
        SafeParcelWriter.m17232a(parcel, 7, this.f29733g);
        SafeParcelWriter.m17230a(parcel, 8, this.f29734h);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
