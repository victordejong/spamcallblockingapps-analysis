package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C2657q;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.common.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/d.class */
public class C2587d extends AbstractC2663a {
    public static final Parcelable.Creator<C2587d> CREATOR = new C2678m();

    /* renamed from: a */
    private final String f7246a;
    @Deprecated

    /* renamed from: b */
    private final int f7247b;

    /* renamed from: c */
    private final long f7248c;

    public C2587d(String str, int i, long j) {
        this.f7246a = str;
        this.f7247b = i;
        this.f7248c = j;
    }

    /* renamed from: a */
    public String m14191a() {
        return this.f7246a;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: b */
    public long m14190b() {
        return this.f7248c == -1 ? this.f7247b : this.f7248c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
        if (r0.m14191a() == null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 0
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r6
            boolean r0 = r0 instanceof com.google.android.gms.common.C2587d
            if (r0 == 0) goto L47
            r0 = r6
            com.google.android.gms.common.d r0 = (com.google.android.gms.common.C2587d) r0
            r6 = r0
            r0 = r5
            java.lang.String r0 = r0.m14191a()
            if (r0 == 0) goto L25
            r0 = r5
            java.lang.String r0 = r0.m14191a()
            r1 = r6
            java.lang.String r1 = r1.m14191a()
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L37
        L25:
            r0 = r7
            r8 = r0
            r0 = r5
            java.lang.String r0 = r0.m14191a()
            if (r0 != 0) goto L47
            r0 = r7
            r8 = r0
            r0 = r6
            java.lang.String r0 = r0.m14191a()
            if (r0 != 0) goto L47
        L37:
            r0 = r7
            r8 = r0
            r0 = r5
            long r0 = r0.m14190b()
            r1 = r6
            long r1 = r1.m14190b()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L47
            r0 = 1
            r8 = r0
        L47:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.C2587d.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return C2657q.m13991a(m14191a(), Long.valueOf(m14190b()));
    }

    public String toString() {
        return C2657q.m13993a(this).m13990a("name", m14191a()).m13990a("version", Long.valueOf(m14190b())).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 1, m14191a(), false);
        C2664b.m13941a(parcel, 2, this.f7247b);
        C2664b.m13940a(parcel, 3, m14190b());
        C2664b.m13943a(parcel, m13944a);
    }
}
