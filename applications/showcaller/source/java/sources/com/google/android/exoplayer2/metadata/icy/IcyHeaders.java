package com.google.android.exoplayer2.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.C5120a;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/icy/IcyHeaders.class */
public final class IcyHeaders implements Metadata.Entry {
    public static final Parcelable.Creator<IcyHeaders> CREATOR = new C5132a();

    /* renamed from: d */
    public final int f16119d;

    /* renamed from: e */
    public final String f16120e;

    /* renamed from: f */
    public final String f16121f;

    /* renamed from: g */
    public final String f16122g;

    /* renamed from: h */
    public final boolean f16123h;

    /* renamed from: i */
    public final int f16124i;

    /* renamed from: com.google.android.exoplayer2.metadata.icy.IcyHeaders$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/icy/IcyHeaders$a.class */
    static final class C5132a implements Parcelable.Creator<IcyHeaders> {
        C5132a() {
        }

        /* renamed from: a */
        public IcyHeaders createFromParcel(Parcel parcel) {
            return new IcyHeaders(parcel);
        }

        /* renamed from: b */
        public IcyHeaders[] newArray(int i) {
            return new IcyHeaders[i];
        }
    }

    public IcyHeaders(int i, String str, String str2, String str3, boolean z, int i2) {
        C5508e.m18915a(i2 == -1 || i2 > 0);
        this.f16119d = i;
        this.f16120e = str;
        this.f16121f = str2;
        this.f16122g = str3;
        this.f16123h = z;
        this.f16124i = i2;
    }

    IcyHeaders(Parcel parcel) {
        this.f16119d = parcel.readInt();
        this.f16120e = parcel.readString();
        this.f16121f = parcel.readString();
        this.f16122g = parcel.readString();
        this.f16123h = C5515h0.m18828i0(parcel);
        this.f16124i = parcel.readInt();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01d7  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.metadata.icy.IcyHeaders m20371a(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r9) {
        /*
            Method dump skipped, instructions count: 506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.icy.IcyHeaders.m20371a(java.util.Map):com.google.android.exoplayer2.metadata.icy.IcyHeaders");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || IcyHeaders.class != obj.getClass()) {
            return false;
        }
        IcyHeaders icyHeaders = (IcyHeaders) obj;
        if (this.f16119d != icyHeaders.f16119d || !C5515h0.m18843b(this.f16120e, icyHeaders.f16120e) || !C5515h0.m18843b(this.f16121f, icyHeaders.f16121f) || !C5515h0.m18843b(this.f16122g, icyHeaders.f16122g) || this.f16123h != icyHeaders.f16123h || this.f16124i != icyHeaders.f16124i) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: h0 */
    public /* synthetic */ byte[] mo20092h0() {
        return C5120a.m20389a(this);
    }

    public int hashCode() {
        int i = this.f16119d;
        String str = this.f16120e;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f16121f;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f16122g;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return ((((((((((527 + i) * 31) + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + (this.f16123h ? 1 : 0)) * 31) + this.f16124i;
    }

    public String toString() {
        return "IcyHeaders: name=\"" + this.f16121f + "\", genre=\"" + this.f16120e + "\", bitrate=" + this.f16119d + ", metadataInterval=" + this.f16124i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f16119d);
        parcel.writeString(this.f16120e);
        parcel.writeString(this.f16121f);
        parcel.writeString(this.f16122g);
        C5515h0.m18798x0(parcel, this.f16123h);
        parcel.writeInt(this.f16124i);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: y */
    public /* synthetic */ Format mo20091y() {
        return C5120a.m20388b(this);
    }
}
