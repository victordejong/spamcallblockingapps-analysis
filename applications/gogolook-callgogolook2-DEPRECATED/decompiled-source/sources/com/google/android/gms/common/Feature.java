package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.C7099v;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/Feature.class */
public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new C7099v();

    /* renamed from: a */
    public final String f6500a;
    @Deprecated

    /* renamed from: b */
    public final int f6501b;

    /* renamed from: c */
    public final long f6502c;

    public Feature(String str, int i, long j) {
        this.f6500a = str;
        this.f6501b = i;
        this.f6502c = j;
    }

    /* renamed from: c */
    public String m31998c() {
        return this.f6500a;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof Feature)) {
            return false;
        }
        Feature feature = (Feature) obj;
        return ((m31998c() != null && m31998c().equals(feature.m31998c())) || (m31998c() == null && feature.m31998c() == null)) && getVersion() == feature.getVersion();
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
            long r0 = r0.f6502c
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0015
            r0 = r5
            int r0 = r0.f6501b
            long r0 = (long) r0
            r8 = r0
        L_0x0015:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.Feature.getVersion():long");
    }

    public int hashCode() {
        return C7018s.m21296a(m31998c(), Long.valueOf(getVersion()));
    }

    public String toString() {
        C7018s.C7019a a = C7018s.m21298a(this);
        a.m21295a("name", m31998c());
        a.m21295a("version", Long.valueOf(getVersion()));
        return a.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 1, m31998c(), false);
        C7031b.m21225a(parcel, 2, this.f6501b);
        C7031b.m21224a(parcel, 3, getVersion());
        C7031b.m21229a(parcel, a);
    }
}
