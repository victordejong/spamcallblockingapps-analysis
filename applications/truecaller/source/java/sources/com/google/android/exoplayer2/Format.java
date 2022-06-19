package com.google.android.exoplayer2;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.video.ColorInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24282g;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/Format.class */
public final class Format implements Parcelable {
    public static final Parcelable.Creator<Format> CREATOR = new C1962a();

    /* renamed from: A */
    public final String f4835A;

    /* renamed from: B */
    public final int f4836B;

    /* renamed from: C */
    public final Class<? extends AbstractC24282g> f4837C;

    /* renamed from: D */
    public int f4838D;

    /* renamed from: a */
    public final String f4839a;

    /* renamed from: b */
    public final String f4840b;

    /* renamed from: c */
    public final int f4841c;

    /* renamed from: d */
    public final int f4842d;

    /* renamed from: e */
    public final int f4843e;

    /* renamed from: f */
    public final String f4844f;

    /* renamed from: g */
    public final Metadata f4845g;

    /* renamed from: h */
    public final String f4846h;

    /* renamed from: i */
    public final String f4847i;

    /* renamed from: j */
    public final int f4848j;

    /* renamed from: k */
    public final List<byte[]> f4849k;

    /* renamed from: l */
    public final DrmInitData f4850l;

    /* renamed from: m */
    public final long f4851m;

    /* renamed from: n */
    public final int f4852n;

    /* renamed from: o */
    public final int f4853o;

    /* renamed from: p */
    public final float f4854p;

    /* renamed from: q */
    public final int f4855q;

    /* renamed from: r */
    public final float f4856r;

    /* renamed from: s */
    public final int f4857s;

    /* renamed from: t */
    public final byte[] f4858t;

    /* renamed from: u */
    public final ColorInfo f4859u;

    /* renamed from: v */
    public final int f4860v;

    /* renamed from: w */
    public final int f4861w;

    /* renamed from: x */
    public final int f4862x;

    /* renamed from: y */
    public final int f4863y;

    /* renamed from: z */
    public final int f4864z;

    /* renamed from: com.google.android.exoplayer2.Format$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/Format$a.class */
    public static final class C1962a implements Parcelable.Creator<Format> {
        @Override // android.os.Parcelable.Creator
        public Format createFromParcel(Parcel parcel) {
            return new Format(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Format[] newArray(int i) {
            return new Format[i];
        }
    }

    public Format(Parcel parcel) {
        this.f4839a = parcel.readString();
        this.f4840b = parcel.readString();
        this.f4841c = parcel.readInt();
        this.f4842d = parcel.readInt();
        this.f4843e = parcel.readInt();
        this.f4844f = parcel.readString();
        this.f4845g = (Metadata) parcel.readParcelable(Metadata.class.getClassLoader());
        this.f4846h = parcel.readString();
        this.f4847i = parcel.readString();
        this.f4848j = parcel.readInt();
        int readInt = parcel.readInt();
        this.f4849k = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f4849k.add(parcel.createByteArray());
        }
        this.f4850l = (DrmInitData) parcel.readParcelable(DrmInitData.class.getClassLoader());
        this.f4851m = parcel.readLong();
        this.f4852n = parcel.readInt();
        this.f4853o = parcel.readInt();
        this.f4854p = parcel.readFloat();
        this.f4855q = parcel.readInt();
        this.f4856r = parcel.readFloat();
        int i2 = C24773d0.f69427a;
        this.f4858t = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.f4857s = parcel.readInt();
        this.f4859u = (ColorInfo) parcel.readParcelable(ColorInfo.class.getClassLoader());
        this.f4860v = parcel.readInt();
        this.f4861w = parcel.readInt();
        this.f4862x = parcel.readInt();
        this.f4863y = parcel.readInt();
        this.f4864z = parcel.readInt();
        this.f4835A = parcel.readString();
        this.f4836B = parcel.readInt();
        this.f4837C = null;
    }

    public Format(String str, String str2, int i, int i2, int i3, String str3, Metadata metadata, String str4, String str5, int i4, List<byte[]> list, DrmInitData drmInitData, long j, int i5, int i6, float f, int i7, float f2, byte[] bArr, int i8, ColorInfo colorInfo, int i9, int i10, int i11, int i12, int i13, String str6, int i14, Class<? extends AbstractC24282g> cls) {
        this.f4839a = str;
        this.f4840b = str2;
        this.f4841c = i;
        this.f4842d = i2;
        this.f4843e = i3;
        this.f4844f = str3;
        this.f4845g = metadata;
        this.f4846h = str4;
        this.f4847i = str5;
        this.f4848j = i4;
        this.f4849k = list == null ? Collections.emptyList() : list;
        this.f4850l = drmInitData;
        this.f4851m = j;
        this.f4852n = i5;
        this.f4853o = i6;
        this.f4854p = f;
        this.f4855q = i7 == -1 ? 0 : i7;
        this.f4856r = f2 == -1.0f ? 1.0f : f2;
        this.f4858t = bArr;
        this.f4857s = i8;
        this.f4859u = colorInfo;
        this.f4860v = i9;
        this.f4861w = i10;
        this.f4862x = i11;
        this.f4863y = i12 == -1 ? 0 : i12;
        this.f4864z = i13 == -1 ? 0 : i13;
        this.f4835A = C24773d0.m4601w(str6);
        this.f4836B = i14;
        this.f4837C = cls;
    }

    /* renamed from: e */
    public static Format m39255e(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, int i6, int i7, List<byte[]> list, DrmInitData drmInitData, int i8, String str4, Metadata metadata) {
        return new Format(str, null, i8, 0, i, str3, metadata, null, str2, i2, list, drmInitData, RecyclerView.FOREVER_NS, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, i6, i7, str4, -1, null);
    }

    /* renamed from: f */
    public static Format m39254f(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, List<byte[]> list, DrmInitData drmInitData, int i6, String str4) {
        return m39255e(str, str2, str3, i, i2, i3, i4, i5, -1, -1, list, drmInitData, i6, str4, null);
    }

    /* renamed from: g */
    public static Format m39253g(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, DrmInitData drmInitData, int i5, String str4) {
        return m39254f(str, str2, null, i, i2, i3, i4, -1, list, drmInitData, i5, str4);
    }

    /* renamed from: h */
    public static Format m39252h(String str, String str2, String str3, int i, int i2, List<byte[]> list, String str4, DrmInitData drmInitData) {
        return new Format(str, null, i2, 0, i, null, null, null, str2, -1, list, drmInitData, RecyclerView.FOREVER_NS, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, -1, null);
    }

    /* renamed from: i */
    public static Format m39251i(String str, String str2, long j) {
        return new Format(str, null, 0, 0, -1, null, null, null, str2, -1, null, null, j, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1, null);
    }

    /* renamed from: k */
    public static Format m39250k(String str, String str2, String str3, int i, DrmInitData drmInitData) {
        return new Format(str, null, 0, 0, i, null, null, null, str2, -1, null, null, RecyclerView.FOREVER_NS, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1, null);
    }

    /* renamed from: l */
    public static Format m39249l(String str, String str2, int i, String str3, DrmInitData drmInitData) {
        return m39248m(str, str2, null, -1, i, str3, -1, drmInitData, RecyclerView.FOREVER_NS, Collections.emptyList());
    }

    /* renamed from: m */
    public static Format m39248m(String str, String str2, String str3, int i, int i2, String str4, int i3, DrmInitData drmInitData, long j, List<byte[]> list) {
        return new Format(str, null, i2, 0, i, null, null, null, str2, -1, list, drmInitData, j, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, i3, null);
    }

    /* renamed from: n */
    public static Format m39247n(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, DrmInitData drmInitData) {
        return m39246o(str, str2, str3, i, i2, i3, i4, f, list, i5, f2, null, -1, null, null);
    }

    /* renamed from: o */
    public static Format m39246o(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, ColorInfo colorInfo, DrmInitData drmInitData) {
        return new Format(str, null, 0, 0, i, str3, null, null, str2, i2, list, drmInitData, RecyclerView.FOREVER_NS, i3, i4, f, i5, f2, bArr, i6, colorInfo, -1, -1, -1, -1, -1, null, -1, null);
    }

    /* renamed from: a */
    public Format m39259a(DrmInitData drmInitData, Metadata metadata) {
        return (drmInitData == this.f4850l && metadata == this.f4845g) ? this : new Format(this.f4839a, this.f4840b, this.f4841c, this.f4842d, this.f4843e, this.f4844f, metadata, this.f4846h, this.f4847i, this.f4848j, this.f4849k, drmInitData, this.f4851m, this.f4852n, this.f4853o, this.f4854p, this.f4855q, this.f4856r, this.f4858t, this.f4857s, this.f4859u, this.f4860v, this.f4861w, this.f4862x, this.f4863y, this.f4864z, this.f4835A, this.f4836B, this.f4837C);
    }

    /* renamed from: b */
    public Format m39258b(float f) {
        return new Format(this.f4839a, this.f4840b, this.f4841c, this.f4842d, this.f4843e, this.f4844f, this.f4845g, this.f4846h, this.f4847i, this.f4848j, this.f4849k, this.f4850l, this.f4851m, this.f4852n, this.f4853o, f, this.f4855q, this.f4856r, this.f4858t, this.f4857s, this.f4859u, this.f4860v, this.f4861w, this.f4862x, this.f4863y, this.f4864z, this.f4835A, this.f4836B, this.f4837C);
    }

    /* renamed from: c */
    public Format m39257c(int i, int i2) {
        return new Format(this.f4839a, this.f4840b, this.f4841c, this.f4842d, this.f4843e, this.f4844f, this.f4845g, this.f4846h, this.f4847i, this.f4848j, this.f4849k, this.f4850l, this.f4851m, this.f4852n, this.f4853o, this.f4854p, this.f4855q, this.f4856r, this.f4858t, this.f4857s, this.f4859u, this.f4860v, this.f4861w, this.f4862x, i, i2, this.f4835A, this.f4836B, this.f4837C);
    }

    /* renamed from: d */
    public Format m39256d(long j) {
        return new Format(this.f4839a, this.f4840b, this.f4841c, this.f4842d, this.f4843e, this.f4844f, this.f4845g, this.f4846h, this.f4847i, this.f4848j, this.f4849k, this.f4850l, j, this.f4852n, this.f4853o, this.f4854p, this.f4855q, this.f4856r, this.f4858t, this.f4857s, this.f4859u, this.f4860v, this.f4861w, this.f4862x, this.f4863y, this.f4864z, this.f4835A, this.f4836B, this.f4837C);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        int i;
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || Format.class != obj.getClass()) {
            return false;
        }
        Format format = (Format) obj;
        int i2 = this.f4838D;
        if (i2 != 0 && (i = format.f4838D) != 0 && i2 != i) {
            return false;
        }
        if (this.f4841c != format.f4841c || this.f4842d != format.f4842d || this.f4843e != format.f4843e || this.f4848j != format.f4848j || this.f4851m != format.f4851m || this.f4852n != format.f4852n || this.f4853o != format.f4853o || this.f4855q != format.f4855q || this.f4857s != format.f4857s || this.f4860v != format.f4860v || this.f4861w != format.f4861w || this.f4862x != format.f4862x || this.f4863y != format.f4863y || this.f4864z != format.f4864z || this.f4836B != format.f4836B || Float.compare(this.f4854p, format.f4854p) != 0 || Float.compare(this.f4856r, format.f4856r) != 0 || !C24773d0.m4623a(this.f4837C, format.f4837C) || !C24773d0.m4623a(this.f4839a, format.f4839a) || !C24773d0.m4623a(this.f4840b, format.f4840b) || !C24773d0.m4623a(this.f4844f, format.f4844f) || !C24773d0.m4623a(this.f4846h, format.f4846h) || !C24773d0.m4623a(this.f4847i, format.f4847i) || !C24773d0.m4623a(this.f4835A, format.f4835A) || !Arrays.equals(this.f4858t, format.f4858t) || !C24773d0.m4623a(this.f4845g, format.f4845g) || !C24773d0.m4623a(this.f4859u, format.f4859u) || !C24773d0.m4623a(this.f4850l, format.f4850l) || !m39244r(format)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f4838D == 0) {
            String str = this.f4839a;
            int i = 0;
            int hashCode = str == null ? 0 : str.hashCode();
            String str2 = this.f4840b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            int i2 = this.f4841c;
            int i3 = this.f4842d;
            int i4 = this.f4843e;
            String str3 = this.f4844f;
            int hashCode3 = str3 == null ? 0 : str3.hashCode();
            Metadata metadata = this.f4845g;
            int hashCode4 = metadata == null ? 0 : metadata.hashCode();
            String str4 = this.f4846h;
            int hashCode5 = str4 == null ? 0 : str4.hashCode();
            String str5 = this.f4847i;
            int hashCode6 = str5 == null ? 0 : str5.hashCode();
            int i5 = this.f4848j;
            int i6 = (int) this.f4851m;
            int i7 = this.f4852n;
            int i8 = this.f4853o;
            int floatToIntBits = Float.floatToIntBits(this.f4854p);
            int i9 = this.f4855q;
            int floatToIntBits2 = Float.floatToIntBits(this.f4856r);
            int i10 = this.f4857s;
            int i11 = this.f4860v;
            int i12 = this.f4861w;
            int i13 = this.f4862x;
            int i14 = this.f4863y;
            int i15 = this.f4864z;
            String str6 = this.f4835A;
            int hashCode7 = str6 == null ? 0 : str6.hashCode();
            int i16 = this.f4836B;
            Class<? extends AbstractC24282g> cls = this.f4837C;
            if (cls != null) {
                i = cls.hashCode();
            }
            this.f4838D = ((((((((((((((((((floatToIntBits2 + ((((floatToIntBits + ((((((((((((((((((((((((((527 + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31)) * 31) + i9) * 31)) * 31) + i10) * 31) + i11) * 31) + i12) * 31) + i13) * 31) + i14) * 31) + i15) * 31) + hashCode7) * 31) + i16) * 31) + i;
        }
        return this.f4838D;
    }

    /* renamed from: p */
    public int m39245p() {
        int i = this.f4852n;
        int i2 = -1;
        if (i != -1) {
            int i3 = this.f4853o;
            i2 = i3 == -1 ? -1 : i * i3;
        }
        return i2;
    }

    /* renamed from: r */
    public boolean m39244r(Format format) {
        if (this.f4849k.size() != format.f4849k.size()) {
            return false;
        }
        for (int i = 0; i < this.f4849k.size(); i++) {
            if (!Arrays.equals(this.f4849k.get(i), format.f4849k.get(i))) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Format(");
        m8728C.append(this.f4839a);
        m8728C.append(", ");
        m8728C.append(this.f4840b);
        m8728C.append(", ");
        m8728C.append(this.f4846h);
        m8728C.append(", ");
        m8728C.append(this.f4847i);
        m8728C.append(", ");
        m8728C.append(this.f4844f);
        m8728C.append(", ");
        m8728C.append(this.f4843e);
        m8728C.append(", ");
        m8728C.append(this.f4835A);
        m8728C.append(", [");
        m8728C.append(this.f4852n);
        m8728C.append(", ");
        m8728C.append(this.f4853o);
        m8728C.append(", ");
        m8728C.append(this.f4854p);
        m8728C.append("], [");
        m8728C.append(this.f4860v);
        m8728C.append(", ");
        return C22128a.m8697J2(m8728C, this.f4861w, "])");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4839a);
        parcel.writeString(this.f4840b);
        parcel.writeInt(this.f4841c);
        parcel.writeInt(this.f4842d);
        parcel.writeInt(this.f4843e);
        parcel.writeString(this.f4844f);
        parcel.writeParcelable(this.f4845g, 0);
        parcel.writeString(this.f4846h);
        parcel.writeString(this.f4847i);
        parcel.writeInt(this.f4848j);
        int size = this.f4849k.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.f4849k.get(i2));
        }
        parcel.writeParcelable(this.f4850l, 0);
        parcel.writeLong(this.f4851m);
        parcel.writeInt(this.f4852n);
        parcel.writeInt(this.f4853o);
        parcel.writeFloat(this.f4854p);
        parcel.writeInt(this.f4855q);
        parcel.writeFloat(this.f4856r);
        int i3 = 0;
        if (this.f4858t != null) {
            i3 = 1;
        }
        int i4 = C24773d0.f69427a;
        parcel.writeInt(i3);
        byte[] bArr = this.f4858t;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.f4857s);
        parcel.writeParcelable(this.f4859u, i);
        parcel.writeInt(this.f4860v);
        parcel.writeInt(this.f4861w);
        parcel.writeInt(this.f4862x);
        parcel.writeInt(this.f4863y);
        parcel.writeInt(this.f4864z);
        parcel.writeString(this.f4835A);
        parcel.writeInt(this.f4836B);
    }
}
