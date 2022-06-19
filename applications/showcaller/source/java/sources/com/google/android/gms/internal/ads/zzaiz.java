package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaiz.class */
public final class zzaiz implements zzaiu {
    public static final Parcelable.Creator<zzaiz> CREATOR = new C7061v7();

    /* renamed from: d */
    private static final C7021u4 f33473d;

    /* renamed from: e */
    private static final C7021u4 f33474e;

    /* renamed from: f */
    public final String f33475f;

    /* renamed from: g */
    public final String f33476g;

    /* renamed from: h */
    public final long f33477h;

    /* renamed from: i */
    public final long f33478i;

    /* renamed from: j */
    public final byte[] f33479j;

    /* renamed from: k */
    private int f33480k;

    static {
        C6947s4 c6947s4 = new C6947s4();
        c6947s4.m11129n("application/id3");
        f33473d = c6947s4.m11168I();
        C6947s4 c6947s42 = new C6947s4();
        c6947s42.m11129n("application/x-scte35");
        f33474e = c6947s42.m11168I();
    }

    public zzaiz(Parcel parcel) {
        String readString = parcel.readString();
        int i = C7101wa.f31475a;
        this.f33475f = readString;
        this.f33476g = parcel.readString();
        this.f33477h = parcel.readLong();
        this.f33478i = parcel.readLong();
        this.f33479j = (byte[]) C7101wa.m9719I(parcel.createByteArray());
    }

    public zzaiz(String str, String str2, long j, long j2, byte[] bArr) {
        this.f33475f = str;
        this.f33476g = str2;
        this.f33477h = j;
        this.f33478i = j2;
        this.f33479j = bArr;
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
        if (obj == null || zzaiz.class != obj.getClass()) {
            return false;
        }
        zzaiz zzaizVar = (zzaiz) obj;
        return this.f33477h == zzaizVar.f33477h && this.f33478i == zzaizVar.f33478i && C7101wa.m9720H(this.f33475f, zzaizVar.f33475f) && C7101wa.m9720H(this.f33476g, zzaizVar.f33476g) && Arrays.equals(this.f33479j, zzaizVar.f33479j);
    }

    public final int hashCode() {
        int i = this.f33480k;
        int i2 = i;
        if (i == 0) {
            String str = this.f33475f;
            int i3 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f33476g;
            if (str2 != null) {
                i3 = str2.hashCode();
            }
            long j = this.f33477h;
            long j2 = this.f33478i;
            i2 = ((((((((hashCode + 527) * 31) + i3) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31) + Arrays.hashCode(this.f33479j);
            this.f33480k = i2;
        }
        return i2;
    }

    public final String toString() {
        String str = this.f33475f;
        long j = this.f33478i;
        long j2 = this.f33477h;
        String str2 = this.f33476g;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 79 + String.valueOf(str2).length());
        sb.append("EMSG: scheme=");
        sb.append(str);
        sb.append(", id=");
        sb.append(j);
        sb.append(", durationMs=");
        sb.append(j2);
        sb.append(", value=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33475f);
        parcel.writeString(this.f33476g);
        parcel.writeLong(this.f33477h);
        parcel.writeLong(this.f33478i);
        parcel.writeByteArray(this.f33479j);
    }
}
