package com.google.android.exoplayer2.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1613i1.C24461a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/icy/IcyHeaders.class */
public final class IcyHeaders implements Metadata.Entry {
    public static final Parcelable.Creator<IcyHeaders> CREATOR = new C1975a();

    /* renamed from: a */
    public final int f4907a;

    /* renamed from: b */
    public final String f4908b;

    /* renamed from: c */
    public final String f4909c;

    /* renamed from: d */
    public final String f4910d;

    /* renamed from: e */
    public final boolean f4911e;

    /* renamed from: f */
    public final int f4912f;

    /* renamed from: com.google.android.exoplayer2.metadata.icy.IcyHeaders$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/icy/IcyHeaders$a.class */
    public static final class C1975a implements Parcelable.Creator<IcyHeaders> {
        @Override // android.os.Parcelable.Creator
        public IcyHeaders createFromParcel(Parcel parcel) {
            return new IcyHeaders(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public IcyHeaders[] newArray(int i) {
            return new IcyHeaders[i];
        }
    }

    public IcyHeaders(int i, String str, String str2, String str3, boolean z, int i2) {
        C26232y.m2310r(i2 == -1 || i2 > 0);
        this.f4907a = i;
        this.f4908b = str;
        this.f4909c = str2;
        this.f4910d = str3;
        this.f4911e = z;
        this.f4912f = i2;
    }

    public IcyHeaders(Parcel parcel) {
        this.f4907a = parcel.readInt();
        this.f4908b = parcel.readString();
        this.f4909c = parcel.readString();
        this.f4910d = parcel.readString();
        int i = C24773d0.f69427a;
        this.f4911e = parcel.readInt() != 0;
        this.f4912f = parcel.readInt();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x012b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.metadata.icy.IcyHeaders m39239a(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r9) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.icy.IcyHeaders.m39239a(java.util.Map):com.google.android.exoplayer2.metadata.icy.IcyHeaders");
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
        if (this.f4907a != icyHeaders.f4907a || !C24773d0.m4623a(this.f4908b, icyHeaders.f4908b) || !C24773d0.m4623a(this.f4909c, icyHeaders.f4909c) || !C24773d0.m4623a(this.f4910d, icyHeaders.f4910d) || this.f4911e != icyHeaders.f4911e || this.f4912f != icyHeaders.f4912f) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f4907a;
        String str = this.f4908b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f4909c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f4910d;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return ((((((((((527 + i) * 31) + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + (this.f4911e ? 1 : 0)) * 31) + this.f4912f;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: j */
    public /* synthetic */ byte[] mo39238j() {
        return C24461a.m5075a(this);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: q */
    public /* synthetic */ Format mo39237q() {
        return C24461a.m5074b(this);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("IcyHeaders: name=\"");
        m8728C.append(this.f4909c);
        m8728C.append("\", genre=\"");
        m8728C.append(this.f4908b);
        m8728C.append("\", bitrate=");
        m8728C.append(this.f4907a);
        m8728C.append(", metadataInterval=");
        m8728C.append(this.f4912f);
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f4907a);
        parcel.writeString(this.f4908b);
        parcel.writeString(this.f4909c);
        parcel.writeString(this.f4910d);
        boolean z = this.f4911e;
        int i2 = C24773d0.f69427a;
        parcel.writeInt(z ? 1 : 0);
        parcel.writeInt(this.f4912f);
    }
}
