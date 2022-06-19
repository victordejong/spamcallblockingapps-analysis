package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakh.class */
public final class zzakh extends zzajx {
    public static final Parcelable.Creator<zzakh> CREATOR = new C6840p8();

    /* renamed from: e */
    public final String f33533e;

    /* renamed from: f */
    public final String f33534f;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzakh(android.os.Parcel r4) {
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
            java.lang.String r1 = r1.readString()
            r0.f33533e = r1
            r0 = r3
            r1 = r4
            java.lang.String r1 = r1.readString()
            r0.f33534f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzakh.<init>(android.os.Parcel):void");
    }

    public zzakh(String str, String str2, String str3) {
        super(str);
        this.f33533e = str2;
        this.f33534f = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzakh.class != obj.getClass()) {
            return false;
        }
        zzakh zzakhVar = (zzakh) obj;
        return this.f33520d.equals(zzakhVar.f33520d) && C7101wa.m9720H(this.f33533e, zzakhVar.f33533e) && C7101wa.m9720H(this.f33534f, zzakhVar.f33534f);
    }

    public final int hashCode() {
        int hashCode = this.f33520d.hashCode();
        String str = this.f33533e;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f33534f;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((hashCode + 527) * 31) + hashCode2) * 31) + i;
    }

    @Override // com.google.android.gms.internal.ads.zzajx
    public final String toString() {
        String str = this.f33520d;
        String str2 = this.f33534f;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 6 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(": url=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33520d);
        parcel.writeString(this.f33533e);
        parcel.writeString(this.f33534f);
    }
}
