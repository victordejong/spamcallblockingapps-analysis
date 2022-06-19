package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajm.class */
public final class zzajm extends zzajx {
    public static final Parcelable.Creator<zzajm> CREATOR = new C6394d8();

    /* renamed from: e */
    public final String f33502e;

    /* renamed from: f */
    public final int f33503f;

    /* renamed from: g */
    public final int f33504g;

    /* renamed from: h */
    public final long f33505h;

    /* renamed from: i */
    public final long f33506i;

    /* renamed from: j */
    private final zzajx[] f33507j;

    public zzajm(Parcel parcel) {
        super("CHAP");
        String readString = parcel.readString();
        int i = C7101wa.f31475a;
        this.f33502e = readString;
        this.f33503f = parcel.readInt();
        this.f33504g = parcel.readInt();
        this.f33505h = parcel.readLong();
        this.f33506i = parcel.readLong();
        int readInt = parcel.readInt();
        this.f33507j = new zzajx[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f33507j[i2] = (zzajx) parcel.readParcelable(zzajx.class.getClassLoader());
        }
    }

    public zzajm(String str, int i, int i2, long j, long j2, zzajx[] zzajxVarArr) {
        super("CHAP");
        this.f33502e = str;
        this.f33503f = i;
        this.f33504g = i2;
        this.f33505h = j;
        this.f33506i = j2;
        this.f33507j = zzajxVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzajx, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzajm.class != obj.getClass()) {
            return false;
        }
        zzajm zzajmVar = (zzajm) obj;
        return this.f33503f == zzajmVar.f33503f && this.f33504g == zzajmVar.f33504g && this.f33505h == zzajmVar.f33505h && this.f33506i == zzajmVar.f33506i && C7101wa.m9720H(this.f33502e, zzajmVar.f33502e) && Arrays.equals(this.f33507j, zzajmVar.f33507j);
    }

    public final int hashCode() {
        int i = this.f33503f;
        int i2 = this.f33504g;
        int i3 = (int) this.f33505h;
        int i4 = (int) this.f33506i;
        String str = this.f33502e;
        return ((((((((i + 527) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33502e);
        parcel.writeInt(this.f33503f);
        parcel.writeInt(this.f33504g);
        parcel.writeLong(this.f33505h);
        parcel.writeLong(this.f33506i);
        parcel.writeInt(this.f33507j.length);
        for (zzajx zzajxVar : this.f33507j) {
            parcel.writeParcelable(zzajxVar, 0);
        }
    }
}
