package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakn.class */
public final class zzakn implements zzaiu {
    public static final Parcelable.Creator<zzakn> CREATOR = new C6951s8();

    /* renamed from: d */
    public final long f33539d;

    /* renamed from: e */
    public final long f33540e;

    /* renamed from: f */
    public final long f33541f;

    /* renamed from: g */
    public final long f33542g;

    /* renamed from: h */
    public final long f33543h;

    public zzakn(long j, long j2, long j3, long j4, long j5) {
        this.f33539d = j;
        this.f33540e = j2;
        this.f33541f = j3;
        this.f33542g = j4;
        this.f33543h = j5;
    }

    public /* synthetic */ zzakn(Parcel parcel, C6988t8 c6988t8) {
        this.f33539d = parcel.readLong();
        this.f33540e = parcel.readLong();
        this.f33541f = parcel.readLong();
        this.f33542g = parcel.readLong();
        this.f33543h = parcel.readLong();
    }

    @Override // com.google.android.gms.internal.ads.zzaiu
    /* renamed from: I */
    public final void mo8113I(C6689l5 c6689l5) {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzakn.class != obj.getClass()) {
            return false;
        }
        zzakn zzaknVar = (zzakn) obj;
        return this.f33539d == zzaknVar.f33539d && this.f33540e == zzaknVar.f33540e && this.f33541f == zzaknVar.f33541f && this.f33542g == zzaknVar.f33542g && this.f33543h == zzaknVar.f33543h;
    }

    public final int hashCode() {
        long j = this.f33539d;
        long j2 = this.f33540e;
        long j3 = this.f33541f;
        long j4 = this.f33542g;
        long j5 = this.f33543h;
        return ((((((((((int) (j ^ (j >>> 32))) + 527) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) ((j3 >>> 32) ^ j3))) * 31) + ((int) ((j4 >>> 32) ^ j4))) * 31) + ((int) ((j5 >>> 32) ^ j5));
    }

    public final String toString() {
        long j = this.f33539d;
        long j2 = this.f33540e;
        long j3 = this.f33541f;
        long j4 = this.f33542g;
        long j5 = this.f33543h;
        StringBuilder sb = new StringBuilder(218);
        sb.append("Motion photo metadata: photoStartPosition=");
        sb.append(j);
        sb.append(", photoSize=");
        sb.append(j2);
        sb.append(", photoPresentationTimestampUs=");
        sb.append(j3);
        sb.append(", videoStartPosition=");
        sb.append(j4);
        sb.append(", videoSize=");
        sb.append(j5);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f33539d);
        parcel.writeLong(this.f33540e);
        parcel.writeLong(this.f33541f);
        parcel.writeLong(this.f33542g);
        parcel.writeLong(this.f33543h);
    }
}
