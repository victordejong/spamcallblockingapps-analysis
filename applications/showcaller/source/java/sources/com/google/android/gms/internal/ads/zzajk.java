package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajk.class */
public final class zzajk extends zzajx {
    public static final Parcelable.Creator<zzajk> CREATOR = new C6357c8();

    /* renamed from: e */
    public final byte[] f33501e;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzajk(android.os.Parcel r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r0 = r0.readString()
            r5 = r0
            int r0 = com.google.android.gms.internal.ads.C7101wa.f31475a
            r6 = r0
            r0 = r3
            r1 = r5
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            byte[] r1 = r1.createByteArray()
            java.lang.Object r1 = com.google.android.gms.internal.ads.C7101wa.m9719I(r1)
            byte[] r1 = (byte[]) r1
            r0.f33501e = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzajk.<init>(android.os.Parcel):void");
    }

    public zzajk(String str, byte[] bArr) {
        super(str);
        this.f33501e = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzajk.class != obj.getClass()) {
            return false;
        }
        zzajk zzajkVar = (zzajk) obj;
        return this.f33520d.equals(zzajkVar.f33520d) && Arrays.equals(this.f33501e, zzajkVar.f33501e);
    }

    public final int hashCode() {
        return ((this.f33520d.hashCode() + 527) * 31) + Arrays.hashCode(this.f33501e);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33520d);
        parcel.writeByteArray(this.f33501e);
    }
}
