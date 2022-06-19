package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.C11943d;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzbar.class */
public final class zzbar extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbar> CREATOR = new C13092ze();
    public String zzbrz;
    public int zzeka;
    public int zzekb;
    public boolean zzekc;
    public boolean zzekd;

    public zzbar(int i, int i2, boolean z) {
        this(i, i2, z, false, false);
    }

    public zzbar(int i, int i2, boolean z, boolean z2) {
        this(204890000, i2, true, false, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzbar(int r8, int r9, boolean r10, boolean r11, boolean r12) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbar.<init>(int, int, boolean, boolean, boolean):void");
    }

    public zzbar(String str, int i, int i2, boolean z, boolean z2) {
        this.zzbrz = str;
        this.zzeka = i;
        this.zzekb = i2;
        this.zzekc = z;
        this.zzekd = z2;
    }

    public static zzbar zzaau() {
        return new zzbar(C11943d.GOOGLE_PLAY_SERVICES_VERSION_CODE, C11943d.GOOGLE_PLAY_SERVICES_VERSION_CODE, true);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 2, this.zzbrz, false);
        C12050a.m19112a(parcel, 3, this.zzeka);
        C12050a.m19112a(parcel, 4, this.zzekb);
        C12050a.m19101a(parcel, 5, this.zzekc);
        C12050a.m19101a(parcel, 6, this.zzekd);
        C12050a.m19095b(parcel, m19116a);
    }
}
