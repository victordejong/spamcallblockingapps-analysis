package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.internal.ads.yd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yd.class */
public final class C3647yd extends AbstractC2663a {
    public static final Parcelable.Creator<C3647yd> CREATOR = new C3651yh();

    /* renamed from: a */
    public String f17636a;

    /* renamed from: b */
    public int f17637b;

    /* renamed from: c */
    public int f17638c;

    /* renamed from: d */
    public boolean f17639d;

    /* renamed from: e */
    private boolean f17640e;

    public C3647yd(int i, int i2, boolean z) {
        this(i, i2, z, false, false);
    }

    public C3647yd(int i, int i2, boolean z, boolean z2) {
        this(i, i2, true, false, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private C3647yd(int r8, int r9, boolean r10, boolean r11, boolean r12) {
        /*
            r7 = this;
            r0 = r10
            if (r0 == 0) goto L42
            java.lang.String r0 = "0"
            r13 = r0
        L8:
            r0 = r7
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = r1
            r3 = r13
            java.lang.String r3 = java.lang.String.valueOf(r3)
            int r3 = r3.length()
            r4 = 36
            int r3 = r3 + r4
            r2.<init>(r3)
            java.lang.String r2 = "afma-sdk-a-v"
            java.lang.StringBuilder r1 = r1.append(r2)
            r2 = r8
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = "."
            java.lang.StringBuilder r1 = r1.append(r2)
            r2 = r9
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = "."
            java.lang.StringBuilder r1 = r1.append(r2)
            r2 = r13
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = 0
            r0.<init>(r1, r2, r3, r4, r5)
            return
        L42:
            java.lang.String r0 = "1"
            r13 = r0
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3647yd.<init>(int, int, boolean, boolean, boolean):void");
    }

    public C3647yd(String str, int i, int i2, boolean z, boolean z2) {
        this.f17636a = str;
        this.f17637b = i;
        this.f17638c = i2;
        this.f17639d = z;
        this.f17640e = z2;
    }

    /* renamed from: a */
    public static C3647yd m6741a() {
        return new C3647yd(12451009, 12451009, true);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 2, this.f17636a, false);
        C2664b.m13941a(parcel, 3, this.f17637b);
        C2664b.m13941a(parcel, 4, this.f17638c);
        C2664b.m13930a(parcel, 5, this.f17639d);
        C2664b.m13930a(parcel, 6, this.f17640e);
        C2664b.m13943a(parcel, m13944a);
    }
}
