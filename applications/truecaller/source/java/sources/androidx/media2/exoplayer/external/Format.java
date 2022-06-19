package androidx.media2.exoplayer.external;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.video.ColorInfo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p1727n3.p1874y.p1876b.p1877a.p1881p0.C27163e;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Format.class */
public final class Format implements Parcelable {
    public static final Parcelable.Creator<Format> CREATOR = new C0234a();

    /* renamed from: A */
    public final String f948A;

    /* renamed from: B */
    public final int f949B;

    /* renamed from: C */
    public final Class<? extends C27163e> f950C;

    /* renamed from: D */
    public int f951D;

    /* renamed from: a */
    public final String f952a;

    /* renamed from: b */
    public final String f953b;

    /* renamed from: c */
    public final int f954c;

    /* renamed from: d */
    public final int f955d;

    /* renamed from: e */
    public final int f956e;

    /* renamed from: f */
    public final String f957f;

    /* renamed from: g */
    public final Metadata f958g;

    /* renamed from: h */
    public final String f959h;

    /* renamed from: i */
    public final String f960i;

    /* renamed from: j */
    public final int f961j;

    /* renamed from: k */
    public final List<byte[]> f962k;

    /* renamed from: l */
    public final DrmInitData f963l;

    /* renamed from: m */
    public final long f964m;

    /* renamed from: n */
    public final int f965n;

    /* renamed from: o */
    public final int f966o;

    /* renamed from: p */
    public final float f967p;

    /* renamed from: q */
    public final int f968q;

    /* renamed from: r */
    public final float f969r;

    /* renamed from: s */
    public final int f970s;

    /* renamed from: t */
    public final byte[] f971t;

    /* renamed from: u */
    public final ColorInfo f972u;

    /* renamed from: v */
    public final int f973v;

    /* renamed from: w */
    public final int f974w;

    /* renamed from: x */
    public final int f975x;

    /* renamed from: y */
    public final int f976y;

    /* renamed from: z */
    public final int f977z;

    /* renamed from: androidx.media2.exoplayer.external.Format$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Format$a.class */
    public class C0234a implements Parcelable.Creator<Format> {
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
        this.f952a = parcel.readString();
        this.f953b = parcel.readString();
        this.f954c = parcel.readInt();
        this.f955d = parcel.readInt();
        this.f956e = parcel.readInt();
        this.f957f = parcel.readString();
        this.f958g = (Metadata) parcel.readParcelable(Metadata.class.getClassLoader());
        this.f959h = parcel.readString();
        this.f960i = parcel.readString();
        this.f961j = parcel.readInt();
        int readInt = parcel.readInt();
        this.f962k = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f962k.add(parcel.createByteArray());
        }
        this.f963l = (DrmInitData) parcel.readParcelable(DrmInitData.class.getClassLoader());
        this.f964m = parcel.readLong();
        this.f965n = parcel.readInt();
        this.f966o = parcel.readInt();
        this.f967p = parcel.readFloat();
        this.f968q = parcel.readInt();
        this.f969r = parcel.readFloat();
        int i2 = C27445x.f77229a;
        this.f971t = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.f970s = parcel.readInt();
        this.f972u = (ColorInfo) parcel.readParcelable(ColorInfo.class.getClassLoader());
        this.f973v = parcel.readInt();
        this.f974w = parcel.readInt();
        this.f975x = parcel.readInt();
        this.f976y = parcel.readInt();
        this.f977z = parcel.readInt();
        this.f948A = parcel.readString();
        this.f949B = parcel.readInt();
        this.f950C = null;
    }

    public Format(String str, String str2, int i, int i2, int i3, String str3, Metadata metadata, String str4, String str5, int i4, List<byte[]> list, DrmInitData drmInitData, long j, int i5, int i6, float f, int i7, float f2, byte[] bArr, int i8, ColorInfo colorInfo, int i9, int i10, int i11, int i12, int i13, String str6, int i14, Class<? extends C27163e> cls) {
        this.f952a = str;
        this.f953b = str2;
        this.f954c = i;
        this.f955d = i2;
        this.f956e = i3;
        this.f957f = str3;
        this.f958g = metadata;
        this.f959h = str4;
        this.f960i = str5;
        this.f961j = i4;
        this.f962k = list == null ? Collections.emptyList() : list;
        this.f963l = drmInitData;
        this.f964m = j;
        this.f965n = i5;
        this.f966o = i6;
        this.f967p = f;
        this.f968q = i7 == -1 ? 0 : i7;
        this.f969r = f2 == -1.0f ? 1.0f : f2;
        this.f971t = bArr;
        this.f970s = i8;
        this.f972u = colorInfo;
        this.f973v = i9;
        this.f974w = i10;
        this.f975x = i11;
        this.f976y = i12 == -1 ? 0 : i12;
        this.f977z = i13 == -1 ? 0 : i13;
        this.f948A = C27445x.m264w(str6);
        this.f949B = i14;
        this.f950C = cls;
    }

    /* renamed from: g */
    public static Format m42845g(String str, String str2, String str3, String str4, String str5, Metadata metadata, int i, int i2, int i3, List<byte[]> list, int i4, int i5, String str6) {
        return new Format(str, str2, i4, i5, i, str5, metadata, str3, str4, -1, null, null, RecyclerView.FOREVER_NS, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i2, i3, -1, -1, -1, str6, -1, null);
    }

    /* renamed from: h */
    public static Format m42844h(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, int i6, int i7, List<byte[]> list, DrmInitData drmInitData, int i8, String str4, Metadata metadata) {
        return new Format(str, null, i8, 0, i, str3, metadata, null, str2, i2, list, drmInitData, RecyclerView.FOREVER_NS, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, i6, i7, str4, -1, null);
    }

    /* renamed from: i */
    public static Format m42843i(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, List<byte[]> list, DrmInitData drmInitData, int i6, String str4) {
        return m42844h(str, str2, str3, i, i2, i3, i4, i5, -1, -1, list, drmInitData, i6, str4, null);
    }

    /* renamed from: k */
    public static Format m42842k(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, DrmInitData drmInitData, int i5, String str4) {
        return m42843i(str, str2, null, i, i2, i3, i4, -1, list, drmInitData, i5, str4);
    }

    /* renamed from: l */
    public static Format m42841l(String str, String str2, String str3, int i, int i2, List<byte[]> list, String str4, DrmInitData drmInitData) {
        return new Format(str, null, i2, 0, i, null, null, null, str2, -1, list, drmInitData, RecyclerView.FOREVER_NS, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, -1, null);
    }

    /* renamed from: m */
    public static Format m42840m(String str, String str2, long j) {
        return new Format(str, null, 0, 0, -1, null, null, null, str2, -1, null, null, j, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1, null);
    }

    /* renamed from: n */
    public static Format m42839n(String str, String str2, String str3, int i, DrmInitData drmInitData) {
        return new Format(str, null, 0, 0, i, null, null, null, str2, -1, null, null, RecyclerView.FOREVER_NS, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1, null);
    }

    /* renamed from: o */
    public static Format m42838o(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6, int i4) {
        return new Format(str, str2, i2, i3, i, str5, null, str3, str4, -1, null, null, RecyclerView.FOREVER_NS, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str6, i4, null);
    }

    /* renamed from: p */
    public static Format m42837p(String str, String str2, int i, String str3, DrmInitData drmInitData) {
        return m42836r(str, str2, null, -1, i, str3, -1, drmInitData, RecyclerView.FOREVER_NS, Collections.emptyList());
    }

    /* renamed from: r */
    public static Format m42836r(String str, String str2, String str3, int i, int i2, String str4, int i3, DrmInitData drmInitData, long j, List<byte[]> list) {
        return new Format(str, null, i2, 0, i, str3, null, null, str2, -1, list, drmInitData, j, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, i3, null);
    }

    /* renamed from: s */
    public static Format m42835s(String str, String str2, String str3, String str4, String str5, Metadata metadata, int i, int i2, int i3, float f, List<byte[]> list, int i4, int i5) {
        return new Format(str, str2, i4, i5, i, str5, metadata, str3, str4, -1, null, null, RecyclerView.FOREVER_NS, i2, i3, f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1, null);
    }

    /* renamed from: t */
    public static Format m42834t(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, DrmInitData drmInitData) {
        return m42833v(str, str2, str3, i, i2, i3, i4, f, list, i5, f2, null, -1, null, null);
    }

    /* renamed from: v */
    public static Format m42833v(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, ColorInfo colorInfo, DrmInitData drmInitData) {
        return new Format(str, null, 0, 0, i, str3, null, null, str2, i2, list, drmInitData, RecyclerView.FOREVER_NS, i3, i4, f, i5, f2, bArr, i6, colorInfo, -1, -1, -1, -1, -1, null, -1, null);
    }

    /* renamed from: a */
    public Format m42851a(DrmInitData drmInitData, Metadata metadata) {
        return (drmInitData == this.f963l && metadata == this.f958g) ? this : new Format(this.f952a, this.f953b, this.f954c, this.f955d, this.f956e, this.f957f, metadata, this.f959h, this.f960i, this.f961j, this.f962k, drmInitData, this.f964m, this.f965n, this.f966o, this.f967p, this.f968q, this.f969r, this.f971t, this.f970s, this.f972u, this.f973v, this.f974w, this.f975x, this.f976y, this.f977z, this.f948A, this.f949B, this.f950C);
    }

    /* renamed from: b */
    public Format m42850b(float f) {
        return new Format(this.f952a, this.f953b, this.f954c, this.f955d, this.f956e, this.f957f, this.f958g, this.f959h, this.f960i, this.f961j, this.f962k, this.f963l, this.f964m, this.f965n, this.f966o, f, this.f968q, this.f969r, this.f971t, this.f970s, this.f972u, this.f973v, this.f974w, this.f975x, this.f976y, this.f977z, this.f948A, this.f949B, this.f950C);
    }

    /* renamed from: c */
    public Format m42849c(int i, int i2) {
        return new Format(this.f952a, this.f953b, this.f954c, this.f955d, this.f956e, this.f957f, this.f958g, this.f959h, this.f960i, this.f961j, this.f962k, this.f963l, this.f964m, this.f965n, this.f966o, this.f967p, this.f968q, this.f969r, this.f971t, this.f970s, this.f972u, this.f973v, this.f974w, this.f975x, i, i2, this.f948A, this.f949B, this.f950C);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x007c, code lost:
        if (p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x.m290D(r42).length == 1) goto L24;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.media2.exoplayer.external.Format m42848d(androidx.media2.exoplayer.external.Format r34) {
        /*
            Method dump skipped, instructions count: 637
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.Format.m42848d(androidx.media2.exoplayer.external.Format):androidx.media2.exoplayer.external.Format");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public Format m42847e(int i) {
        return new Format(this.f952a, this.f953b, this.f954c, this.f955d, this.f956e, this.f957f, this.f958g, this.f959h, this.f960i, i, this.f962k, this.f963l, this.f964m, this.f965n, this.f966o, this.f967p, this.f968q, this.f969r, this.f971t, this.f970s, this.f972u, this.f973v, this.f974w, this.f975x, this.f976y, this.f977z, this.f948A, this.f949B, this.f950C);
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
        int i2 = this.f951D;
        if (i2 != 0 && (i = format.f951D) != 0 && i2 != i) {
            return false;
        }
        if (this.f954c != format.f954c || this.f955d != format.f955d || this.f956e != format.f956e || this.f961j != format.f961j || this.f964m != format.f964m || this.f965n != format.f965n || this.f966o != format.f966o || this.f968q != format.f968q || this.f970s != format.f970s || this.f973v != format.f973v || this.f974w != format.f974w || this.f975x != format.f975x || this.f976y != format.f976y || this.f977z != format.f977z || this.f949B != format.f949B || Float.compare(this.f967p, format.f967p) != 0 || Float.compare(this.f969r, format.f969r) != 0 || !C27445x.m286a(this.f950C, format.f950C) || !C27445x.m286a(this.f952a, format.f952a) || !C27445x.m286a(this.f953b, format.f953b) || !C27445x.m286a(this.f957f, format.f957f) || !C27445x.m286a(this.f959h, format.f959h) || !C27445x.m286a(this.f960i, format.f960i) || !C27445x.m286a(this.f948A, format.f948A) || !Arrays.equals(this.f971t, format.f971t) || !C27445x.m286a(this.f958g, format.f958g) || !C27445x.m286a(this.f972u, format.f972u) || !C27445x.m286a(this.f963l, format.f963l) || !m42831x(format)) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public Format m42846f(long j) {
        return new Format(this.f952a, this.f953b, this.f954c, this.f955d, this.f956e, this.f957f, this.f958g, this.f959h, this.f960i, this.f961j, this.f962k, this.f963l, j, this.f965n, this.f966o, this.f967p, this.f968q, this.f969r, this.f971t, this.f970s, this.f972u, this.f973v, this.f974w, this.f975x, this.f976y, this.f977z, this.f948A, this.f949B, this.f950C);
    }

    public int hashCode() {
        if (this.f951D == 0) {
            String str = this.f952a;
            int i = 0;
            int hashCode = str == null ? 0 : str.hashCode();
            String str2 = this.f953b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            int i2 = this.f954c;
            int i3 = this.f955d;
            int i4 = this.f956e;
            String str3 = this.f957f;
            int hashCode3 = str3 == null ? 0 : str3.hashCode();
            Metadata metadata = this.f958g;
            int hashCode4 = metadata == null ? 0 : metadata.hashCode();
            String str4 = this.f959h;
            int hashCode5 = str4 == null ? 0 : str4.hashCode();
            String str5 = this.f960i;
            int hashCode6 = str5 == null ? 0 : str5.hashCode();
            int i5 = this.f961j;
            int i6 = (int) this.f964m;
            int i7 = this.f965n;
            int i8 = this.f966o;
            int floatToIntBits = Float.floatToIntBits(this.f967p);
            int i9 = this.f968q;
            int floatToIntBits2 = Float.floatToIntBits(this.f969r);
            int i10 = this.f970s;
            int i11 = this.f973v;
            int i12 = this.f974w;
            int i13 = this.f975x;
            int i14 = this.f976y;
            int i15 = this.f977z;
            String str6 = this.f948A;
            int hashCode7 = str6 == null ? 0 : str6.hashCode();
            int i16 = this.f949B;
            Class<? extends C27163e> cls = this.f950C;
            if (cls != null) {
                i = cls.hashCode();
            }
            this.f951D = ((((((((((((((((((floatToIntBits2 + ((((floatToIntBits + ((((((((((((((((((((((((((527 + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31)) * 31) + i9) * 31)) * 31) + i10) * 31) + i11) * 31) + i12) * 31) + i13) * 31) + i14) * 31) + i15) * 31) + hashCode7) * 31) + i16) * 31) + i;
        }
        return this.f951D;
    }

    public String toString() {
        String str = this.f952a;
        String str2 = this.f953b;
        String str3 = this.f959h;
        String str4 = this.f960i;
        String str5 = this.f957f;
        int i = this.f956e;
        String str6 = this.f948A;
        int i2 = this.f965n;
        int i3 = this.f966o;
        float f = this.f967p;
        int i4 = this.f973v;
        int i5 = this.f974w;
        StringBuilder m8736A = C22128a.m8736A(C22128a.m8623f2(str6, C22128a.m8623f2(str5, C22128a.m8623f2(str4, C22128a.m8623f2(str3, C22128a.m8623f2(str2, C22128a.m8623f2(str, 104)))))), "Format(", str, ", ", str2);
        C22128a.m8666T0(m8736A, ", ", str3, ", ", str4);
        m8736A.append(", ");
        m8736A.append(str5);
        m8736A.append(", ");
        m8736A.append(i);
        m8736A.append(", ");
        m8736A.append(str6);
        m8736A.append(", [");
        m8736A.append(i2);
        m8736A.append(", ");
        m8736A.append(i3);
        m8736A.append(", ");
        m8736A.append(f);
        m8736A.append("], [");
        m8736A.append(i4);
        m8736A.append(", ");
        m8736A.append(i5);
        m8736A.append("])");
        return m8736A.toString();
    }

    /* renamed from: w */
    public int m42832w() {
        int i = this.f965n;
        int i2 = -1;
        if (i != -1) {
            int i3 = this.f966o;
            i2 = i3 == -1 ? -1 : i * i3;
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f952a);
        parcel.writeString(this.f953b);
        parcel.writeInt(this.f954c);
        parcel.writeInt(this.f955d);
        parcel.writeInt(this.f956e);
        parcel.writeString(this.f957f);
        parcel.writeParcelable(this.f958g, 0);
        parcel.writeString(this.f959h);
        parcel.writeString(this.f960i);
        parcel.writeInt(this.f961j);
        int size = this.f962k.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.f962k.get(i2));
        }
        parcel.writeParcelable(this.f963l, 0);
        parcel.writeLong(this.f964m);
        parcel.writeInt(this.f965n);
        parcel.writeInt(this.f966o);
        parcel.writeFloat(this.f967p);
        parcel.writeInt(this.f968q);
        parcel.writeFloat(this.f969r);
        int i3 = 0;
        if (this.f971t != null) {
            i3 = 1;
        }
        int i4 = C27445x.f77229a;
        parcel.writeInt(i3);
        byte[] bArr = this.f971t;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.f970s);
        parcel.writeParcelable(this.f972u, i);
        parcel.writeInt(this.f973v);
        parcel.writeInt(this.f974w);
        parcel.writeInt(this.f975x);
        parcel.writeInt(this.f976y);
        parcel.writeInt(this.f977z);
        parcel.writeString(this.f948A);
        parcel.writeInt(this.f949B);
    }

    /* renamed from: x */
    public boolean m42831x(Format format) {
        if (this.f962k.size() != format.f962k.size()) {
            return false;
        }
        for (int i = 0; i < this.f962k.size(); i++) {
            if (!Arrays.equals(this.f962k.get(i), format.f962k.get(i))) {
                return false;
            }
        }
        return true;
    }
}
