package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzm.class */
public final class zzm implements Parcelable {
    public static final Parcelable.Creator<zzm> CREATOR = new eo3();

    /* renamed from: d */
    private int f34213d;

    /* renamed from: e */
    public final UUID f34214e;

    /* renamed from: f */
    public final String f34215f;

    /* renamed from: g */
    public final String f34216g;

    /* renamed from: h */
    public final byte[] f34217h;

    public zzm(Parcel parcel) {
        this.f34214e = new UUID(parcel.readLong(), parcel.readLong());
        this.f34215f = parcel.readString();
        String readString = parcel.readString();
        int i = C7101wa.f31475a;
        this.f34216g = readString;
        this.f34217h = parcel.createByteArray();
    }

    public zzm(UUID uuid, String str, String str2, byte[] bArr) {
        Objects.requireNonNull(uuid);
        this.f34214e = uuid;
        this.f34215f = null;
        this.f34216g = str2;
        this.f34217h = bArr;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzm)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzm zzmVar = (zzm) obj;
        return C7101wa.m9720H(this.f34215f, zzmVar.f34215f) && C7101wa.m9720H(this.f34216g, zzmVar.f34216g) && C7101wa.m9720H(this.f34214e, zzmVar.f34214e) && Arrays.equals(this.f34217h, zzmVar.f34217h);
    }

    public final int hashCode() {
        int i = this.f34213d;
        int i2 = i;
        if (i == 0) {
            int hashCode = this.f34214e.hashCode();
            String str = this.f34215f;
            i2 = (((((hashCode * 31) + (str == null ? 0 : str.hashCode())) * 31) + this.f34216g.hashCode()) * 31) + Arrays.hashCode(this.f34217h);
            this.f34213d = i2;
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f34214e.getMostSignificantBits());
        parcel.writeLong(this.f34214e.getLeastSignificantBits());
        parcel.writeString(this.f34215f);
        parcel.writeString(this.f34216g);
        parcel.writeByteArray(this.f34217h);
    }
}
