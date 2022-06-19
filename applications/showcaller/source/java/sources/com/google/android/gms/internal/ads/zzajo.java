package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajo.class */
public final class zzajo extends zzajx {
    public static final Parcelable.Creator<zzajo> CREATOR = new C6432e8();

    /* renamed from: e */
    public final String f33508e;

    /* renamed from: f */
    public final boolean f33509f;

    /* renamed from: g */
    public final boolean f33510g;

    /* renamed from: h */
    public final String[] f33511h;

    /* renamed from: i */
    private final zzajx[] f33512i;

    public zzajo(Parcel parcel) {
        super("CTOC");
        String readString = parcel.readString();
        int i = C7101wa.f31475a;
        this.f33508e = readString;
        this.f33509f = parcel.readByte() != 0;
        this.f33510g = parcel.readByte() != 0;
        this.f33511h = (String[]) C7101wa.m9719I(parcel.createStringArray());
        int readInt = parcel.readInt();
        this.f33512i = new zzajx[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f33512i[i2] = (zzajx) parcel.readParcelable(zzajx.class.getClassLoader());
        }
    }

    public zzajo(String str, boolean z, boolean z2, String[] strArr, zzajx[] zzajxVarArr) {
        super("CTOC");
        this.f33508e = str;
        this.f33509f = z;
        this.f33510g = z2;
        this.f33511h = strArr;
        this.f33512i = zzajxVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzajo.class != obj.getClass()) {
            return false;
        }
        zzajo zzajoVar = (zzajo) obj;
        return this.f33509f == zzajoVar.f33509f && this.f33510g == zzajoVar.f33510g && C7101wa.m9720H(this.f33508e, zzajoVar.f33508e) && Arrays.equals(this.f33511h, zzajoVar.f33511h) && Arrays.equals(this.f33512i, zzajoVar.f33512i);
    }

    public final int hashCode() {
        boolean z = this.f33509f;
        boolean z2 = this.f33510g;
        String str = this.f33508e;
        return (((((z ? 1 : 0) + 527) * 31) + (z2 ? 1 : 0)) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33508e);
        parcel.writeByte(this.f33509f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f33510g ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f33511h);
        parcel.writeInt(this.f33512i.length);
        for (zzajx zzajxVar : this.f33512i) {
            parcel.writeParcelable(zzajxVar, 0);
        }
    }
}
