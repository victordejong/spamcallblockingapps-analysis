package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.Apptentive;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/Feature.class */
public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new zzb();
    @SafeParcelable.Field

    /* renamed from: f */
    private final String f6972f;
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: g */
    private final int f6973g;
    @SafeParcelable.Field

    /* renamed from: h */
    private final long f6974h;

    @SafeParcelable.Constructor
    public Feature(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) int i, @SafeParcelable.Param(id = 3) long j) {
        this.f6972f = str;
        this.f6973g = i;
        this.f6974h = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @com.google.android.gms.common.annotation.KeepForSdk
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m15087B() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f6974h
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0015
            r0 = r5
            int r0 = r0.f6973g
            long r0 = (long) r0
            r8 = r0
        L_0x0015:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.Feature.m15087B():long");
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof Feature)) {
            return false;
        }
        Feature feature = (Feature) obj;
        return ((getName() != null && getName().equals(feature.getName())) || (getName() == null && feature.getName() == null)) && m15087B() == feature.m15087B();
    }

    @KeepForSdk
    public String getName() {
        return this.f6972f;
    }

    public int hashCode() {
        return Objects.m14536b(getName(), Long.valueOf(m15087B()));
    }

    public String toString() {
        Objects.ToStringHelper c = Objects.m14535c(this);
        c.m14534a("name", getName());
        c.m14534a(Apptentive.Version.TYPE, Long.valueOf(m15087B()));
        return c.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14447q(parcel, 1, getName(), false);
        SafeParcelWriter.m14453k(parcel, 2, this.f6973g);
        SafeParcelWriter.m14451m(parcel, 3, m15087B());
        SafeParcelWriter.m14462b(parcel, a);
    }
}
