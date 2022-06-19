package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzarw.class */
public final class zzarw extends zzasa {
    public static final Parcelable.Creator<zzarw> CREATOR = new C6958sf();

    /* renamed from: e */
    public final String f33582e;

    /* renamed from: f */
    public final String f33583f;

    /* renamed from: g */
    public final int f33584g;

    /* renamed from: h */
    public final byte[] f33585h;

    public zzarw(Parcel parcel) {
        super("APIC");
        this.f33582e = parcel.readString();
        this.f33583f = parcel.readString();
        this.f33584g = parcel.readInt();
        this.f33585h = parcel.createByteArray();
    }

    public zzarw(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.f33582e = str;
        this.f33583f = null;
        this.f33584g = 3;
        this.f33585h = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzarw.class != obj.getClass()) {
            return false;
        }
        zzarw zzarwVar = (zzarw) obj;
        return this.f33584g == zzarwVar.f33584g && C6961si.m11021a(this.f33582e, zzarwVar.f33582e) && C6961si.m11021a(this.f33583f, zzarwVar.f33583f) && Arrays.equals(this.f33585h, zzarwVar.f33585h);
    }

    public final int hashCode() {
        int i = this.f33584g;
        String str = this.f33582e;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f33583f;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((((((i + 527) * 31) + hashCode) * 31) + i2) * 31) + Arrays.hashCode(this.f33585h);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33582e);
        parcel.writeString(this.f33583f);
        parcel.writeInt(this.f33584g);
        parcel.writeByteArray(this.f33585h);
    }
}
