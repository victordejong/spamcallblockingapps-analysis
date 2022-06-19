package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.razorpay.AnalyticsConstants;
import java.util.Arrays;
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/Feature.class */
public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new zzc();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f5669a;
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f5670b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final long f5671c;

    @SafeParcelable.Constructor
    public Feature(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) int i, @SafeParcelable.Param(id = 3) long j) {
        this.f5669a = str;
        this.f5670b = i;
        this.f5671c = j;
    }

    @KeepForSdk
    public Feature(String str, long j) {
        this.f5669a = str;
        this.f5671c = j;
        this.f5670b = -1;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            String str = this.f5669a;
            return ((str != null && str.equals(feature.f5669a)) || (this.f5669a == null && feature.f5669a == null)) && m39073o2() == feature.m39073o2();
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5669a, Long.valueOf(m39073o2())});
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    @KeepForSdk
    /* renamed from: o2 */
    public long m39073o2() {
        ?? r0 = this.f5671c;
        char c = r0;
        if (r0 == -1) {
            c = this.f5670b;
        }
        return c;
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.m38909a(AnalyticsConstants.NAME, this.f5669a);
        toStringHelper.m38909a("version", Long.valueOf(m39073o2()));
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 1, this.f5669a, false);
        int i2 = this.f5670b;
        parcel.writeInt(262146);
        parcel.writeInt(i2);
        long m39073o2 = m39073o2();
        parcel.writeInt(524291);
        parcel.writeLong(m39073o2);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
