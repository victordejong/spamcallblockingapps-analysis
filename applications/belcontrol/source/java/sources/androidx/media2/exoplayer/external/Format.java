package androidx.media2.exoplayer.external;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.video.ColorInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Format.class */
public final class Format implements Parcelable {
    public static final Parcelable.Creator<Format> CREATOR = new C0149a();

    /* renamed from: A */
    public final int f1106A;

    /* renamed from: B */
    public final int f1107B;

    /* renamed from: C */
    public final String f1108C;

    /* renamed from: D */
    public final int f1109D;

    /* renamed from: E */
    public int f1110E;

    /* renamed from: a */
    public final String f1111a;

    /* renamed from: b */
    public final String f1112b;

    /* renamed from: c */
    public final int f1113c;

    /* renamed from: d */
    public final int f1114d;

    /* renamed from: f */
    public final int f1115f;

    /* renamed from: g */
    public final String f1116g;

    /* renamed from: h */
    public final Metadata f1117h;

    /* renamed from: j */
    public final String f1118j;

    /* renamed from: k */
    public final String f1119k;

    /* renamed from: l */
    public final int f1120l;

    /* renamed from: m */
    public final List<byte[]> f1121m;

    /* renamed from: n */
    public final DrmInitData f1122n;

    /* renamed from: o */
    public final long f1123o;

    /* renamed from: p */
    public final int f1124p;

    /* renamed from: q */
    public final int f1125q;

    /* renamed from: r */
    public final float f1126r;

    /* renamed from: s */
    public final int f1127s;

    /* renamed from: t */
    public final float f1128t;

    /* renamed from: u */
    public final int f1129u;

    /* renamed from: v */
    public final byte[] f1130v;

    /* renamed from: w */
    public final ColorInfo f1131w;

    /* renamed from: x */
    public final int f1132x;

    /* renamed from: y */
    public final int f1133y;

    /* renamed from: z */
    public final int f1134z;

    /* renamed from: androidx.media2.exoplayer.external.Format$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/Format$a.class */
    public class C0149a implements Parcelable.Creator<Format> {
        /* renamed from: a */
        public Format createFromParcel(Parcel parcel) {
            return new Format(parcel);
        }

        /* renamed from: b */
        public Format[] newArray(int i) {
            return new Format[i];
        }
    }

    public Format(Parcel parcel) {
        this.f1111a = parcel.readString();
        this.f1112b = parcel.readString();
        this.f1113c = parcel.readInt();
        this.f1114d = parcel.readInt();
        this.f1115f = parcel.readInt();
        this.f1116g = parcel.readString();
        this.f1117h = (Metadata) parcel.readParcelable(Metadata.class.getClassLoader());
        this.f1118j = parcel.readString();
        this.f1119k = parcel.readString();
        this.f1120l = parcel.readInt();
        int readInt = parcel.readInt();
        this.f1121m = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f1121m.add(parcel.createByteArray());
        }
        this.f1122n = (DrmInitData) parcel.readParcelable(DrmInitData.class.getClassLoader());
        this.f1123o = parcel.readLong();
        this.f1124p = parcel.readInt();
        this.f1125q = parcel.readInt();
        this.f1126r = parcel.readFloat();
        this.f1127s = parcel.readInt();
        this.f1128t = parcel.readFloat();
        this.f1130v = nu.c0(parcel) ? parcel.createByteArray() : null;
        this.f1129u = parcel.readInt();
        this.f1131w = (ColorInfo) parcel.readParcelable(ColorInfo.class.getClassLoader());
        this.f1132x = parcel.readInt();
        this.f1133y = parcel.readInt();
        this.f1134z = parcel.readInt();
        this.f1106A = parcel.readInt();
        this.f1107B = parcel.readInt();
        this.f1108C = parcel.readString();
        this.f1109D = parcel.readInt();
    }

    public Format(String str, String str2, int i, int i2, int i3, String str3, Metadata metadata, String str4, String str5, int i4, List<byte[]> list, DrmInitData drmInitData, long j, int i5, int i6, float f, int i7, float f2, byte[] bArr, int i8, ColorInfo colorInfo, int i9, int i10, int i11, int i12, int i13, String str6, int i14) {
        this.f1111a = str;
        this.f1112b = str2;
        this.f1113c = i;
        this.f1114d = i2;
        this.f1115f = i3;
        this.f1116g = str3;
        this.f1117h = metadata;
        this.f1118j = str4;
        this.f1119k = str5;
        this.f1120l = i4;
        this.f1121m = list == null ? Collections.emptyList() : list;
        this.f1122n = drmInitData;
        this.f1123o = j;
        this.f1124p = i5;
        this.f1125q = i6;
        this.f1126r = f;
        this.f1127s = i7 == -1 ? 0 : i7;
        this.f1128t = f2 == -1.0f ? 1.0f : f2;
        this.f1130v = bArr;
        this.f1129u = i8;
        this.f1131w = colorInfo;
        this.f1132x = i9;
        this.f1133y = i10;
        this.f1134z = i11;
        this.f1106A = i12 == -1 ? 0 : i12;
        this.f1107B = i13 == -1 ? 0 : i13;
        this.f1108C = nu.Y(str6);
        this.f1109D = i14;
    }

    /* renamed from: j */
    public static Format m6481j(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, List<byte[]> list, int i4, int i5, String str6) {
        return new Format(str, str2, i4, i5, i, str5, null, str3, str4, -1, list, null, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i2, i3, -1, -1, -1, str6, -1);
    }

    /* renamed from: k */
    public static Format m6480k(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, int i6, int i7, List<byte[]> list, DrmInitData drmInitData, int i8, String str4, Metadata metadata) {
        return new Format(str, null, i8, 0, i, str3, metadata, null, str2, i2, list, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, i6, i7, str4, -1);
    }

    /* renamed from: l */
    public static Format m6479l(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, List<byte[]> list, DrmInitData drmInitData, int i6, String str4) {
        return m6480k(str, str2, str3, i, i2, i3, i4, i5, -1, -1, list, drmInitData, i6, str4, null);
    }

    /* renamed from: m */
    public static Format m6478m(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, DrmInitData drmInitData, int i5, String str4) {
        return m6479l(str, str2, str3, i, i2, i3, i4, -1, list, drmInitData, i5, str4);
    }

    /* renamed from: n */
    public static Format m6477n(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6) {
        return new Format(str, str2, i2, i3, i, str5, null, str3, str4, -1, null, null, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str6, -1);
    }

    /* renamed from: o */
    public static Format m6476o(String str, String str2, String str3, int i, int i2, List<byte[]> list, String str4, DrmInitData drmInitData) {
        return new Format(str, null, i2, 0, i, str3, null, null, str2, -1, list, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, -1);
    }

    /* renamed from: p */
    public static Format m6475p(String str, String str2, long j) {
        return new Format(str, null, 0, 0, -1, null, null, null, str2, -1, null, null, j, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1);
    }

    /* renamed from: q */
    public static Format m6474q(String str, String str2, String str3, int i, DrmInitData drmInitData) {
        return new Format(str, null, 0, 0, i, str3, null, null, str2, -1, null, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1);
    }

    /* renamed from: r */
    public static Format m6473r(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6) {
        return m6472s(str, str2, str3, str4, str5, i, i2, i3, str6, -1);
    }

    /* renamed from: s */
    public static Format m6472s(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6, int i4) {
        return new Format(str, str2, i2, i3, i, str5, null, str3, str4, -1, null, null, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str6, i4);
    }

    /* renamed from: t */
    public static Format m6471t(String str, String str2, int i, String str3) {
        return m6470u(str, str2, i, str3, null);
    }

    /* renamed from: u */
    public static Format m6470u(String str, String str2, int i, String str3, DrmInitData drmInitData) {
        return m6469v(str, str2, null, -1, i, str3, -1, drmInitData, Long.MAX_VALUE, Collections.emptyList());
    }

    /* renamed from: v */
    public static Format m6469v(String str, String str2, String str3, int i, int i2, String str4, int i3, DrmInitData drmInitData, long j, List<byte[]> list) {
        return new Format(str, null, i2, 0, i, str3, null, null, str2, -1, list, drmInitData, j, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, i3);
    }

    /* renamed from: w */
    public static Format m6468w(String str, String str2, String str3, int i, int i2, String str4, DrmInitData drmInitData, long j) {
        return m6469v(str, str2, str3, i, i2, str4, -1, drmInitData, j, Collections.emptyList());
    }

    /* renamed from: x */
    public static Format m6467x(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, float f, List<byte[]> list, int i4, int i5) {
        return new Format(str, str2, i4, i5, i, str5, null, str3, str4, -1, list, null, Long.MAX_VALUE, i2, i3, f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1);
    }

    /* renamed from: y */
    public static Format m6466y(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, DrmInitData drmInitData) {
        return m6465z(str, str2, str3, i, i2, i3, i4, f, list, i5, f2, null, -1, null, drmInitData);
    }

    /* renamed from: z */
    public static Format m6465z(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, ColorInfo colorInfo, DrmInitData drmInitData) {
        return new Format(str, null, 0, 0, i, str3, null, null, str2, i2, list, drmInitData, Long.MAX_VALUE, i3, i4, f, i5, f2, bArr, i6, colorInfo, -1, -1, -1, -1, -1, null, -1);
    }

    /* renamed from: A */
    public int m6492A() {
        int i = this.f1124p;
        int i2 = -1;
        if (i != -1) {
            int i3 = this.f1125q;
            i2 = i3 == -1 ? -1 : i * i3;
        }
        return i2;
    }

    /* renamed from: B */
    public boolean m6491B(Format format) {
        if (this.f1121m.size() != format.f1121m.size()) {
            return false;
        }
        for (int i = 0; i < this.f1121m.size(); i++) {
            if (!Arrays.equals(this.f1121m.get(i), format.f1121m.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public Format m6490a(int i) {
        return new Format(this.f1111a, this.f1112b, this.f1113c, this.f1114d, i, this.f1116g, this.f1117h, this.f1118j, this.f1119k, this.f1120l, this.f1121m, this.f1122n, this.f1123o, this.f1124p, this.f1125q, this.f1126r, this.f1127s, this.f1128t, this.f1130v, this.f1129u, this.f1131w, this.f1132x, this.f1133y, this.f1134z, this.f1106A, this.f1107B, this.f1108C, this.f1109D);
    }

    /* renamed from: b */
    public Format m6489b(String str, String str2, String str3, String str4, Metadata metadata, int i, int i2, int i3, int i4, int i5, String str5) {
        Metadata metadata2 = this.f1117h;
        if (metadata2 != null) {
            metadata = metadata2.m6445b(metadata);
        }
        return new Format(str, str2, i5, this.f1114d, i, str4, metadata, this.f1118j, str3, this.f1120l, this.f1121m, this.f1122n, this.f1123o, i2, i3, this.f1126r, this.f1127s, this.f1128t, this.f1130v, this.f1129u, this.f1131w, i4, this.f1133y, this.f1134z, this.f1106A, this.f1107B, str5, this.f1109D);
    }

    /* renamed from: c */
    public Format m6488c(DrmInitData drmInitData) {
        return new Format(this.f1111a, this.f1112b, this.f1113c, this.f1114d, this.f1115f, this.f1116g, this.f1117h, this.f1118j, this.f1119k, this.f1120l, this.f1121m, drmInitData, this.f1123o, this.f1124p, this.f1125q, this.f1126r, this.f1127s, this.f1128t, this.f1130v, this.f1129u, this.f1131w, this.f1132x, this.f1133y, this.f1134z, this.f1106A, this.f1107B, this.f1108C, this.f1109D);
    }

    /* renamed from: d */
    public Format m6487d(float f) {
        return new Format(this.f1111a, this.f1112b, this.f1113c, this.f1114d, this.f1115f, this.f1116g, this.f1117h, this.f1118j, this.f1119k, this.f1120l, this.f1121m, this.f1122n, this.f1123o, this.f1124p, this.f1125q, f, this.f1127s, this.f1128t, this.f1130v, this.f1129u, this.f1131w, this.f1132x, this.f1133y, this.f1134z, this.f1106A, this.f1107B, this.f1108C, this.f1109D);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public Format m6486e(int i, int i2) {
        return new Format(this.f1111a, this.f1112b, this.f1113c, this.f1114d, this.f1115f, this.f1116g, this.f1117h, this.f1118j, this.f1119k, this.f1120l, this.f1121m, this.f1122n, this.f1123o, this.f1124p, this.f1125q, this.f1126r, this.f1127s, this.f1128t, this.f1130v, this.f1129u, this.f1131w, this.f1132x, this.f1133y, this.f1134z, i, i2, this.f1108C, this.f1109D);
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
        int i2 = this.f1110E;
        if (i2 != 0 && (i = format.f1110E) != 0 && i2 != i) {
            return false;
        }
        if (this.f1113c != format.f1113c || this.f1114d != format.f1114d || this.f1115f != format.f1115f || this.f1120l != format.f1120l || this.f1123o != format.f1123o || this.f1124p != format.f1124p || this.f1125q != format.f1125q || this.f1127s != format.f1127s || this.f1129u != format.f1129u || this.f1132x != format.f1132x || this.f1133y != format.f1133y || this.f1134z != format.f1134z || this.f1106A != format.f1106A || this.f1107B != format.f1107B || this.f1109D != format.f1109D || Float.compare(this.f1126r, format.f1126r) != 0 || Float.compare(this.f1128t, format.f1128t) != 0 || !nu.b(this.f1111a, format.f1111a) || !nu.b(this.f1112b, format.f1112b) || !nu.b(this.f1116g, format.f1116g) || !nu.b(this.f1118j, format.f1118j) || !nu.b(this.f1119k, format.f1119k) || !nu.b(this.f1108C, format.f1108C) || !Arrays.equals(this.f1130v, format.f1130v) || !nu.b(this.f1117h, format.f1117h) || !nu.b(this.f1131w, format.f1131w) || !nu.b(this.f1122n, format.f1122n) || !m6491B(format)) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public Format m6485f(Format format) {
        String str;
        if (this == format) {
            return this;
        }
        int g = vt.g(this.f1119k);
        String str2 = format.f1111a;
        String str3 = format.f1112b;
        if (str3 == null) {
            str3 = this.f1112b;
        }
        String str4 = this.f1108C;
        if ((g == 3 || g == 1) && (str = format.f1108C) != null) {
            str4 = str;
        }
        int i = this.f1115f;
        int i2 = i;
        if (i == -1) {
            i2 = format.f1115f;
        }
        String str5 = this.f1116g;
        if (str5 == null) {
            String w = nu.w(format.f1116g, g);
            if (nu.j0(w).length == 1) {
                str5 = w;
            }
        }
        Metadata metadata = this.f1117h;
        Metadata m6445b = metadata == null ? format.f1117h : metadata.m6445b(format.f1117h);
        float f = this.f1126r;
        if (f == -1.0f && g == 2) {
            f = format.f1126r;
        }
        return new Format(str2, str3, this.f1113c | format.f1113c, this.f1114d | format.f1114d, i2, str5, m6445b, this.f1118j, this.f1119k, this.f1120l, this.f1121m, DrmInitData.m6459d(format.f1122n, this.f1122n), this.f1123o, this.f1124p, this.f1125q, f, this.f1127s, this.f1128t, this.f1130v, this.f1129u, this.f1131w, this.f1132x, this.f1133y, this.f1134z, this.f1106A, this.f1107B, str4, this.f1109D);
    }

    /* renamed from: g */
    public Format m6484g(int i) {
        return new Format(this.f1111a, this.f1112b, this.f1113c, this.f1114d, this.f1115f, this.f1116g, this.f1117h, this.f1118j, this.f1119k, i, this.f1121m, this.f1122n, this.f1123o, this.f1124p, this.f1125q, this.f1126r, this.f1127s, this.f1128t, this.f1130v, this.f1129u, this.f1131w, this.f1132x, this.f1133y, this.f1134z, this.f1106A, this.f1107B, this.f1108C, this.f1109D);
    }

    /* renamed from: h */
    public Format m6483h(Metadata metadata) {
        return new Format(this.f1111a, this.f1112b, this.f1113c, this.f1114d, this.f1115f, this.f1116g, metadata, this.f1118j, this.f1119k, this.f1120l, this.f1121m, this.f1122n, this.f1123o, this.f1124p, this.f1125q, this.f1126r, this.f1127s, this.f1128t, this.f1130v, this.f1129u, this.f1131w, this.f1132x, this.f1133y, this.f1134z, this.f1106A, this.f1107B, this.f1108C, this.f1109D);
    }

    public int hashCode() {
        if (this.f1110E == 0) {
            String str = this.f1111a;
            int i = 0;
            int hashCode = str == null ? 0 : str.hashCode();
            String str2 = this.f1112b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            int i2 = this.f1113c;
            int i3 = this.f1114d;
            int i4 = this.f1115f;
            String str3 = this.f1116g;
            int hashCode3 = str3 == null ? 0 : str3.hashCode();
            Metadata metadata = this.f1117h;
            int hashCode4 = metadata == null ? 0 : metadata.hashCode();
            String str4 = this.f1118j;
            int hashCode5 = str4 == null ? 0 : str4.hashCode();
            String str5 = this.f1119k;
            int hashCode6 = str5 == null ? 0 : str5.hashCode();
            int i5 = this.f1120l;
            int i6 = (int) this.f1123o;
            int i7 = this.f1124p;
            int i8 = this.f1125q;
            int floatToIntBits = Float.floatToIntBits(this.f1126r);
            int i9 = this.f1127s;
            int floatToIntBits2 = Float.floatToIntBits(this.f1128t);
            int i10 = this.f1129u;
            int i11 = this.f1132x;
            int i12 = this.f1133y;
            int i13 = this.f1134z;
            int i14 = this.f1106A;
            int i15 = this.f1107B;
            String str6 = this.f1108C;
            if (str6 != null) {
                i = str6.hashCode();
            }
            this.f1110E = ((((((((((((((((((((((((((((((((((((((((((((((527 + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + floatToIntBits) * 31) + i9) * 31) + floatToIntBits2) * 31) + i10) * 31) + i11) * 31) + i12) * 31) + i13) * 31) + i14) * 31) + i15) * 31) + i) * 31) + this.f1109D;
        }
        return this.f1110E;
    }

    /* renamed from: i */
    public Format m6482i(long j) {
        return new Format(this.f1111a, this.f1112b, this.f1113c, this.f1114d, this.f1115f, this.f1116g, this.f1117h, this.f1118j, this.f1119k, this.f1120l, this.f1121m, this.f1122n, j, this.f1124p, this.f1125q, this.f1126r, this.f1127s, this.f1128t, this.f1130v, this.f1129u, this.f1131w, this.f1132x, this.f1133y, this.f1134z, this.f1106A, this.f1107B, this.f1108C, this.f1109D);
    }

    public String toString() {
        String str = this.f1111a;
        String str2 = this.f1112b;
        String str3 = this.f1118j;
        String str4 = this.f1119k;
        String str5 = this.f1116g;
        int i = this.f1115f;
        String str6 = this.f1108C;
        int i2 = this.f1124p;
        int i3 = this.f1125q;
        float f = this.f1126r;
        int i4 = this.f1132x;
        int i5 = this.f1133y;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 104 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length());
        sb.append("Format(");
        sb.append(str);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(str4);
        sb.append(", ");
        sb.append(str5);
        sb.append(", ");
        sb.append(i);
        sb.append(", ");
        sb.append(str6);
        sb.append(", [");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(f);
        sb.append("], [");
        sb.append(i4);
        sb.append(", ");
        sb.append(i5);
        sb.append("])");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1111a);
        parcel.writeString(this.f1112b);
        parcel.writeInt(this.f1113c);
        parcel.writeInt(this.f1114d);
        parcel.writeInt(this.f1115f);
        parcel.writeString(this.f1116g);
        boolean z = false;
        parcel.writeParcelable(this.f1117h, 0);
        parcel.writeString(this.f1118j);
        parcel.writeString(this.f1119k);
        parcel.writeInt(this.f1120l);
        int size = this.f1121m.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.f1121m.get(i2));
        }
        parcel.writeParcelable(this.f1122n, 0);
        parcel.writeLong(this.f1123o);
        parcel.writeInt(this.f1124p);
        parcel.writeInt(this.f1125q);
        parcel.writeFloat(this.f1126r);
        parcel.writeInt(this.f1127s);
        parcel.writeFloat(this.f1128t);
        if (this.f1130v != null) {
            z = true;
        }
        nu.o0(parcel, z);
        byte[] bArr = this.f1130v;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.f1129u);
        parcel.writeParcelable(this.f1131w, i);
        parcel.writeInt(this.f1132x);
        parcel.writeInt(this.f1133y);
        parcel.writeInt(this.f1134z);
        parcel.writeInt(this.f1106A);
        parcel.writeInt(this.f1107B);
        parcel.writeString(this.f1108C);
        parcel.writeInt(this.f1109D);
    }
}
