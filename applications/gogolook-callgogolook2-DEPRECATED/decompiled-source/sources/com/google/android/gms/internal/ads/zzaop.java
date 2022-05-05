package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7354p0;
import p081h.p203i.p204a.p224e.p259j.p260a.C7192c2;
@AbstractC7354p0
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaop.class */
public final class zzaop extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaop> CREATOR = new C7192c2();

    /* renamed from: a */
    public String f6743a;

    /* renamed from: b */
    public int f6744b;

    /* renamed from: c */
    public int f6745c;

    /* renamed from: d */
    public boolean f6746d;

    /* renamed from: e */
    public boolean f6747e;

    public zzaop(int i, int i2, boolean z) {
        this(i, i2, z, false, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzaop(int r8, int r9, boolean r10, boolean r11, boolean r12) {
        /*
            r7 = this;
            r0 = r10
            if (r0 == 0) goto L_0x000b
            java.lang.String r0 = "0"
            r13 = r0
            goto L_0x000f
        L_0x000b:
            java.lang.String r0 = "1"
            r13 = r0
        L_0x000f:
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
            r5 = r12
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaop.<init>(int, int, boolean, boolean, boolean):void");
    }

    public zzaop(String str, int i, int i2, boolean z, boolean z2) {
        this.f6743a = str;
        this.f6744b = i;
        this.f6745c = i2;
        this.f6746d = z;
        this.f6747e = z2;
    }

    /* renamed from: c */
    public static zzaop m31853c() {
        return new zzaop(12451009, 12451009, true);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 2, this.f6743a, false);
        C7031b.m21225a(parcel, 3, this.f6744b);
        C7031b.m21225a(parcel, 4, this.f6745c);
        C7031b.m21212a(parcel, 5, this.f6746d);
        C7031b.m21212a(parcel, 6, this.f6747e);
        C7031b.m21229a(parcel, a);
    }
}
