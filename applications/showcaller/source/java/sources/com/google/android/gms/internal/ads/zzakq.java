package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakq.class */
public final class zzakq implements zzaiu {
    public static final Parcelable.Creator<zzakq> CREATOR = new C7025u8();

    /* renamed from: d */
    public final float f33544d;

    /* renamed from: e */
    public final int f33545e;

    public zzakq(float f, int i) {
        this.f33544d = f;
        this.f33545e = i;
    }

    public /* synthetic */ zzakq(Parcel parcel, C7062v8 c7062v8) {
        this.f33544d = parcel.readFloat();
        this.f33545e = parcel.readInt();
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
        if (obj == null || zzakq.class != obj.getClass()) {
            return false;
        }
        zzakq zzakqVar = (zzakq) obj;
        return this.f33544d == zzakqVar.f33544d && this.f33545e == zzakqVar.f33545e;
    }

    public final int hashCode() {
        return ((Float.valueOf(this.f33544d).hashCode() + 527) * 31) + this.f33545e;
    }

    public final String toString() {
        float f = this.f33544d;
        int i = this.f33545e;
        StringBuilder sb = new StringBuilder(73);
        sb.append("smta: captureFrameRate=");
        sb.append(f);
        sb.append(", svcTemporalLayerCount=");
        sb.append(i);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.f33544d);
        parcel.writeInt(this.f33545e);
    }
}
