package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/ActivityTransition.class */
public class ActivityTransition extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransition> CREATOR = new zzc();
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f29706a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f29707b;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/location/ActivityTransition$Builder.class */
    public static class Builder {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/location/ActivityTransition$SupportedActivityTransition.class */
    public @interface SupportedActivityTransition {
    }

    @SafeParcelable.Constructor
    public ActivityTransition(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2) {
        this.f29706a = i;
        this.f29707b = i2;
    }

    public static void zza(int i) {
        boolean z = true;
        if (i < 0 || i > 1) {
            z = false;
        }
        StringBuilder sb = new StringBuilder(41);
        sb.append("Transition type ");
        sb.append(i);
        sb.append(" is not valid.");
        Preconditions.m17283a(z, sb.toString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityTransition)) {
            return false;
        }
        ActivityTransition activityTransition = (ActivityTransition) obj;
        return this.f29706a == activityTransition.f29706a && this.f29707b == activityTransition.f29707b;
    }

    /* renamed from: f */
    public int m9424f() {
        return this.f29706a;
    }

    public int hashCode() {
        return Objects.m17294a(Integer.valueOf(this.f29706a), Integer.valueOf(this.f29707b));
    }

    /* renamed from: i */
    public int m9423i() {
        return this.f29707b;
    }

    public String toString() {
        int i = this.f29706a;
        int i2 = this.f29707b;
        StringBuilder sb = new StringBuilder(75);
        sb.append("ActivityTransition [mActivityType=");
        sb.append(i);
        sb.append(", mTransitionType=");
        sb.append(i2);
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, m9424f());
        SafeParcelWriter.m17231a(parcel, 2, m9423i());
        SafeParcelWriter.m17234a(parcel, a);
    }
}
