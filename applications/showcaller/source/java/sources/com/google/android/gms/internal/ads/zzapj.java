package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzapj.class */
public final class zzapj implements Parcelable {
    public static final Parcelable.Creator<zzapj> CREATOR = new C6623jd();

    /* renamed from: d */
    private int f33573d;

    /* renamed from: e */
    private final UUID f33574e;

    /* renamed from: f */
    public final String f33575f;

    /* renamed from: g */
    public final byte[] f33576g;

    /* renamed from: h */
    public final boolean f33577h;

    public zzapj(Parcel parcel) {
        this.f33574e = new UUID(parcel.readLong(), parcel.readLong());
        this.f33575f = parcel.readString();
        this.f33576g = parcel.createByteArray();
        this.f33577h = parcel.readByte() != 0;
    }

    public zzapj(UUID uuid, String str, byte[] bArr, boolean z) {
        Objects.requireNonNull(uuid);
        this.f33574e = uuid;
        this.f33575f = str;
        Objects.requireNonNull(bArr);
        this.f33576g = bArr;
        this.f33577h = false;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzapj)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzapj zzapjVar = (zzapj) obj;
        return this.f33575f.equals(zzapjVar.f33575f) && C6961si.m11021a(this.f33574e, zzapjVar.f33574e) && Arrays.equals(this.f33576g, zzapjVar.f33576g);
    }

    public final int hashCode() {
        int i = this.f33573d;
        int i2 = i;
        if (i == 0) {
            i2 = (((this.f33574e.hashCode() * 31) + this.f33575f.hashCode()) * 31) + Arrays.hashCode(this.f33576g);
            this.f33573d = i2;
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f33574e.getMostSignificantBits());
        parcel.writeLong(this.f33574e.getLeastSignificantBits());
        parcel.writeString(this.f33575f);
        parcel.writeByteArray(this.f33576g);
        parcel.writeByte(this.f33577h ? (byte) 1 : (byte) 0);
    }
}
