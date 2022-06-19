package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakd.class */
public final class zzakd extends zzajx {
    public static final Parcelable.Creator<zzakd> CREATOR = new C6766n8();

    /* renamed from: e */
    public final String f33529e;

    /* renamed from: f */
    public final byte[] f33530f;

    public zzakd(Parcel parcel) {
        super("PRIV");
        String readString = parcel.readString();
        int i = C7101wa.f31475a;
        this.f33529e = readString;
        this.f33530f = (byte[]) C7101wa.m9719I(parcel.createByteArray());
    }

    public zzakd(String str, byte[] bArr) {
        super("PRIV");
        this.f33529e = str;
        this.f33530f = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzakd.class != obj.getClass()) {
            return false;
        }
        zzakd zzakdVar = (zzakd) obj;
        return C7101wa.m9720H(this.f33529e, zzakdVar.f33529e) && Arrays.equals(this.f33530f, zzakdVar.f33530f);
    }

    public final int hashCode() {
        String str = this.f33529e;
        return (((str != null ? str.hashCode() : 0) + 527) * 31) + Arrays.hashCode(this.f33530f);
    }

    @Override // com.google.android.gms.internal.ads.zzajx
    public final String toString() {
        String str = this.f33520d;
        String str2 = this.f33529e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 8 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(": owner=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33529e);
        parcel.writeByteArray(this.f33530f);
    }
}
