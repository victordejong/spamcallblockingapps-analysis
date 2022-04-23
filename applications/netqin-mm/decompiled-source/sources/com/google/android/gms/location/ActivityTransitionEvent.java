package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/ActivityTransitionEvent.class */
public class ActivityTransitionEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionEvent> CREATOR = new zzd();
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f29708a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f29709b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final long f29710c;

    @SafeParcelable.Constructor
    public ActivityTransitionEvent(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) long j) {
        DetectedActivity.zzb(i);
        ActivityTransition.zza(i2);
        this.f29708a = i;
        this.f29709b = i2;
        this.f29710c = j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityTransitionEvent)) {
            return false;
        }
        ActivityTransitionEvent activityTransitionEvent = (ActivityTransitionEvent) obj;
        return this.f29708a == activityTransitionEvent.f29708a && this.f29709b == activityTransitionEvent.f29709b && this.f29710c == activityTransitionEvent.f29710c;
    }

    /* renamed from: f */
    public int m9422f() {
        return this.f29708a;
    }

    public int hashCode() {
        return Objects.m17294a(Integer.valueOf(this.f29708a), Integer.valueOf(this.f29709b), Long.valueOf(this.f29710c));
    }

    /* renamed from: i */
    public long m9421i() {
        return this.f29710c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i = this.f29708a;
        StringBuilder sb2 = new StringBuilder(24);
        sb2.append("ActivityType ");
        sb2.append(i);
        sb.append(sb2.toString());
        sb.append(" ");
        int i2 = this.f29709b;
        StringBuilder sb3 = new StringBuilder(26);
        sb3.append("TransitionType ");
        sb3.append(i2);
        sb.append(sb3.toString());
        sb.append(" ");
        long j = this.f29710c;
        StringBuilder sb4 = new StringBuilder(41);
        sb4.append("ElapsedRealTimeNanos ");
        sb4.append(j);
        sb.append(sb4.toString());
        return sb.toString();
    }

    /* renamed from: u */
    public int m9420u() {
        return this.f29709b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, m9422f());
        SafeParcelWriter.m17231a(parcel, 2, m9420u());
        SafeParcelWriter.m17230a(parcel, 3, m9421i());
        SafeParcelWriter.m17234a(parcel, a);
    }
}
