package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpj.class */
public final class dpj extends dpp {
    public static final Parcelable.Creator<dpj> CREATOR = new dpl();

    /* renamed from: a */
    private final String f15287a;

    /* renamed from: b */
    private final String f15288b;

    /* renamed from: d */
    private final int f15289d;

    /* renamed from: e */
    private final byte[] f15290e;

    public dpj(Parcel parcel) {
        super("APIC");
        this.f15287a = parcel.readString();
        this.f15288b = parcel.readString();
        this.f15289d = parcel.readInt();
        this.f15290e = parcel.createByteArray();
    }

    public dpj(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.f15287a = str;
        this.f15288b = null;
        this.f15289d = 3;
        this.f15290e = bArr;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                dpj dpjVar = (dpj) obj;
                if (this.f15289d != dpjVar.f15289d || !dsn.m8704a(this.f15287a, dpjVar.f15287a) || !dsn.m8704a(this.f15288b, dpjVar.f15288b) || !Arrays.equals(this.f15290e, dpjVar.f15290e)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        int i = 0;
        int i2 = this.f15289d;
        int hashCode = this.f15287a != null ? this.f15287a.hashCode() : 0;
        if (this.f15288b != null) {
            i = this.f15288b.hashCode();
        }
        return ((((hashCode + ((i2 + 527) * 31)) * 31) + i) * 31) + Arrays.hashCode(this.f15290e);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f15287a);
        parcel.writeString(this.f15288b);
        parcel.writeInt(this.f15289d);
        parcel.writeByteArray(this.f15290e);
    }
}
