package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/DetectedActivity.class */
public class DetectedActivity extends AbstractSafeParcelable {
    public static final int IN_VEHICLE = 0;
    public static final int ON_BICYCLE = 1;
    public static final int ON_FOOT = 2;
    public static final int RUNNING = 8;
    public static final int STILL = 3;
    public static final int TILTING = 5;
    public static final int UNKNOWN = 4;
    public static final int WALKING = 7;
    int zzb;
    int zzc;
    public static final Comparator<DetectedActivity> zza = new ar();
    public static final Parcelable.Creator<DetectedActivity> CREATOR = new as();

    public DetectedActivity(int i, int i2) {
        this.zzb = i;
        this.zzc = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof DetectedActivity)) {
            return false;
        }
        DetectedActivity detectedActivity = (DetectedActivity) obj;
        return this.zzb == detectedActivity.zzb && this.zzc == detectedActivity.zzc;
    }

    public int getConfidence() {
        return this.zzc;
    }

    public int getType() {
        int i = this.zzb;
        if (i > 22 || i < 0) {
            return 4;
        }
        return i;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzb), Integer.valueOf(this.zzc)});
    }

    public String toString() {
        int type = getType();
        String num = type != 0 ? type != 1 ? type != 2 ? type != 3 ? type != 4 ? type != 5 ? type != 7 ? type != 8 ? type != 16 ? type != 17 ? Integer.toString(type) : "IN_RAIL_VEHICLE" : "IN_ROAD_VEHICLE" : "RUNNING" : "WALKING" : "TILTING" : "UNKNOWN" : "STILL" : "ON_FOOT" : "ON_BICYCLE" : "IN_VEHICLE";
        int i = this.zzc;
        StringBuilder sb = new StringBuilder(String.valueOf(num).length() + 48);
        sb.append("DetectedActivity [type=");
        sb.append(num);
        sb.append(", confidence=");
        sb.append(i);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        o.a(parcel);
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zzb);
        a.a(parcel, 2, this.zzc);
        a.b(parcel, a2);
    }
}
