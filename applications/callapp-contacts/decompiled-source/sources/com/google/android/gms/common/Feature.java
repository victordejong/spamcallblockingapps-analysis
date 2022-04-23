package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/Feature.class */
public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new j();
    private final String zza;
    @Deprecated
    private final int zzb;
    private final long zzc;

    public Feature(String str, int i, long j) {
        this.zza = str;
        this.zzb = i;
        this.zzc = j;
    }

    public Feature(String str, long j) {
        this.zza = str;
        this.zzc = j;
        this.zzb = -1;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Feature)) {
            return false;
        }
        Feature feature = (Feature) obj;
        return ((getName() != null && getName().equals(feature.getName())) || (getName() == null && feature.getName() == null)) && getVersion() == feature.getVersion();
    }

    public String getName() {
        return this.zza;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getVersion() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.zzc
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0015
            r0 = r5
            int r0 = r0.zzb
            long r0 = (long) r0
            r8 = r0
        L_0x0015:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.Feature.getVersion():long");
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{getName(), Long.valueOf(getVersion())});
    }

    public final String toString() {
        m.a a2 = m.a(this);
        a2.a("name", getName());
        a2.a("version", Long.valueOf(getVersion()));
        return a2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, getName(), false);
        a.a(parcel, 2, this.zzb);
        a.a(parcel, 3, getVersion());
        a.b(parcel, a2);
    }
}
