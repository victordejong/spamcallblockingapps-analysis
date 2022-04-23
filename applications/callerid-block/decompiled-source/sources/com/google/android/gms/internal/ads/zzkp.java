package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzkp.class */
public final class zzkp implements Parcelable {
    public static final Parcelable.Creator<zzkp> CREATOR = new um2();

    /* renamed from: b */
    private int f9701b;

    /* renamed from: c */
    private final UUID f9702c;

    /* renamed from: d */
    public final String f9703d;

    /* renamed from: e */
    public final byte[] f9704e;

    /* renamed from: f */
    public final boolean f9705f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkp(Parcel parcel) {
        this.f9702c = new UUID(parcel.readLong(), parcel.readLong());
        this.f9703d = parcel.readString();
        this.f9704e = parcel.createByteArray();
        this.f9705f = parcel.readByte() != 0;
    }

    public zzkp(UUID uuid, String str, byte[] bArr, boolean z) {
        uuid.getClass();
        this.f9702c = uuid;
        this.f9703d = str;
        bArr.getClass();
        this.f9704e = bArr;
        this.f9705f = false;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzkp)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzkp zzkpVar = (zzkp) obj;
        return this.f9703d.equals(zzkpVar.f9703d) && zr2.m4534a(this.f9702c, zzkpVar.f9702c) && Arrays.equals(this.f9704e, zzkpVar.f9704e);
    }

    public final int hashCode() {
        int i = this.f9701b;
        int i2 = i;
        if (i == 0) {
            i2 = (((this.f9702c.hashCode() * 31) + this.f9703d.hashCode()) * 31) + Arrays.hashCode(this.f9704e);
            this.f9701b = i2;
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f9702c.getMostSignificantBits());
        parcel.writeLong(this.f9702c.getLeastSignificantBits());
        parcel.writeString(this.f9703d);
        parcel.writeByteArray(this.f9704e);
        parcel.writeByte(this.f9705f ? (byte) 1 : (byte) 0);
    }
}
