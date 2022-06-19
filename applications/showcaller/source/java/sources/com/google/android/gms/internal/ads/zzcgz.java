package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.C6094e;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgz.class */
public final class zzcgz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcgz> CREATOR = new ki0();

    /* renamed from: d */
    public String f33854d;

    /* renamed from: e */
    public int f33855e;

    /* renamed from: f */
    public int f33856f;

    /* renamed from: g */
    public boolean f33857g;

    /* renamed from: h */
    public boolean f33858h;

    public zzcgz(int i, int i2, boolean z, boolean z2) {
        this(213806000, i2, true, false, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzcgz(int r8, int r9, boolean r10, boolean r11, boolean r12) {
        /*
            r7 = this;
            r0 = r10
            if (r0 == 0) goto Lb
            java.lang.String r0 = "0"
            r13 = r0
            goto Lf
        Lb:
            java.lang.String r0 = "1"
            r13 = r0
        Lf:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r13
            int r2 = r2.length()
            r3 = 36
            int r2 = r2 + r3
            r1.<init>(r2)
            r14 = r0
            r0 = r14
            java.lang.String r1 = "afma-sdk-a-v"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            java.lang.String r1 = "."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            java.lang.String r1 = "."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            r1 = r13
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r14
            java.lang.String r1 = r1.toString()
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = 0
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcgz.<init>(int, int, boolean, boolean, boolean):void");
    }

    public zzcgz(String str, int i, int i2, boolean z, boolean z2) {
        this.f33854d = str;
        this.f33855e = i;
        this.f33856f = i2;
        this.f33857g = z;
        this.f33858h = z2;
    }

    /* renamed from: k0 */
    public static zzcgz m8066k0() {
        return new zzcgz((int) C6094e.f19409a, (int) C6094e.f19409a, true, false, false);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 2, this.f33854d, false);
        C6170a.m16937k(parcel, 3, this.f33855e);
        C6170a.m16937k(parcel, 4, this.f33856f);
        C6170a.m16945c(parcel, 5, this.f33857g);
        C6170a.m16945c(parcel, 6, this.f33858h);
        C6170a.m16946b(parcel, m16947a);
    }
}
