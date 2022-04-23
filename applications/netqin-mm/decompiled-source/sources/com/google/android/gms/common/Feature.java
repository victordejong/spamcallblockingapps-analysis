package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
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

    /* renamed from: a */
    public final String f23013a;
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f23014b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final long f23015c;

    @SafeParcelable.Constructor
    public Feature(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) int i, @SafeParcelable.Param(id = 3) long j) {
        this.f23013a = str;
        this.f23014b = i;
        this.f23015c = j;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Feature)) {
            return false;
        }
        Feature feature = (Feature) obj;
        return ((m17828f() != null && m17828f().equals(feature.m17828f())) || (m17828f() == null && feature.m17828f() == null)) && m17827i() == feature.m17827i();
    }

    @KeepForSdk
    /* renamed from: f */
    public String m17828f() {
        return this.f23013a;
    }

    public int hashCode() {
        return Objects.m17294a(m17828f(), Long.valueOf(m17827i()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @com.google.android.gms.common.annotation.KeepForSdk
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m17827i() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f23015c
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0015
            r0 = r5
            int r0 = r0.f23014b
            long r0 = (long) r0
            r8 = r0
        L_0x0015:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.Feature.m17827i():long");
    }

    public String toString() {
        Objects.ToStringHelper a = Objects.m17296a(this);
        a.m17293a("name", m17828f());
        a.m17293a("version", Long.valueOf(m17827i()));
        return a.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 1, m17828f(), false);
        SafeParcelWriter.m17231a(parcel, 2, this.f23014b);
        SafeParcelWriter.m17230a(parcel, 3, m17827i());
        SafeParcelWriter.m17234a(parcel, a);
    }
}
