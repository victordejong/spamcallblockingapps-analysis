package com.google.android.exoplayer2;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.drm.AbstractC5043m;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.video.ColorInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/Format.class */
public final class Format implements Parcelable {
    public static final Parcelable.Creator<Format> CREATOR = new C4796a();

    /* renamed from: A */
    public final int f14446A;

    /* renamed from: B */
    public final int f14447B;

    /* renamed from: C */
    public final int f14448C;

    /* renamed from: D */
    public final String f14449D;

    /* renamed from: E */
    public final int f14450E;

    /* renamed from: F */
    public final Class<? extends AbstractC5043m> f14451F;

    /* renamed from: G */
    private int f14452G;

    /* renamed from: d */
    public final String f14453d;

    /* renamed from: e */
    public final String f14454e;

    /* renamed from: f */
    public final int f14455f;

    /* renamed from: g */
    public final int f14456g;

    /* renamed from: h */
    public final int f14457h;

    /* renamed from: i */
    public final String f14458i;

    /* renamed from: j */
    public final Metadata f14459j;

    /* renamed from: k */
    public final String f14460k;

    /* renamed from: l */
    public final String f14461l;

    /* renamed from: m */
    public final int f14462m;

    /* renamed from: n */
    public final List<byte[]> f14463n;

    /* renamed from: o */
    public final DrmInitData f14464o;

    /* renamed from: p */
    public final long f14465p;

    /* renamed from: q */
    public final int f14466q;

    /* renamed from: r */
    public final int f14467r;

    /* renamed from: s */
    public final float f14468s;

    /* renamed from: t */
    public final int f14469t;

    /* renamed from: u */
    public final float f14470u;

    /* renamed from: v */
    public final int f14471v;

    /* renamed from: w */
    public final byte[] f14472w;

    /* renamed from: x */
    public final ColorInfo f14473x;

    /* renamed from: y */
    public final int f14474y;

    /* renamed from: z */
    public final int f14475z;

    /* renamed from: com.google.android.exoplayer2.Format$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/Format$a.class */
    static final class C4796a implements Parcelable.Creator<Format> {
        C4796a() {
        }

        /* renamed from: a */
        public Format createFromParcel(Parcel parcel) {
            return new Format(parcel);
        }

        /* renamed from: b */
        public Format[] newArray(int i) {
            return new Format[i];
        }
    }

    Format(Parcel parcel) {
        this.f14453d = parcel.readString();
        this.f14454e = parcel.readString();
        this.f14455f = parcel.readInt();
        this.f14456g = parcel.readInt();
        this.f14457h = parcel.readInt();
        this.f14458i = parcel.readString();
        this.f14459j = (Metadata) parcel.readParcelable(Metadata.class.getClassLoader());
        this.f14460k = parcel.readString();
        this.f14461l = parcel.readString();
        this.f14462m = parcel.readInt();
        int readInt = parcel.readInt();
        this.f14463n = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f14463n.add(parcel.createByteArray());
        }
        this.f14464o = (DrmInitData) parcel.readParcelable(DrmInitData.class.getClassLoader());
        this.f14465p = parcel.readLong();
        this.f14466q = parcel.readInt();
        this.f14467r = parcel.readInt();
        this.f14468s = parcel.readFloat();
        this.f14469t = parcel.readInt();
        this.f14470u = parcel.readFloat();
        this.f14472w = C5515h0.m18828i0(parcel) ? parcel.createByteArray() : null;
        this.f14471v = parcel.readInt();
        this.f14473x = (ColorInfo) parcel.readParcelable(ColorInfo.class.getClassLoader());
        this.f14474y = parcel.readInt();
        this.f14475z = parcel.readInt();
        this.f14446A = parcel.readInt();
        this.f14447B = parcel.readInt();
        this.f14448C = parcel.readInt();
        this.f14449D = parcel.readString();
        this.f14450E = parcel.readInt();
        this.f14451F = null;
    }

    Format(String str, String str2, int i, int i2, int i3, String str3, Metadata metadata, String str4, String str5, int i4, List<byte[]> list, DrmInitData drmInitData, long j, int i5, int i6, float f, int i7, float f2, byte[] bArr, int i8, ColorInfo colorInfo, int i9, int i10, int i11, int i12, int i13, String str6, int i14, Class<? extends AbstractC5043m> cls) {
        this.f14453d = str;
        this.f14454e = str2;
        this.f14455f = i;
        this.f14456g = i2;
        this.f14457h = i3;
        this.f14458i = str3;
        this.f14459j = metadata;
        this.f14460k = str4;
        this.f14461l = str5;
        this.f14462m = i4;
        this.f14463n = list == null ? Collections.emptyList() : list;
        this.f14464o = drmInitData;
        this.f14465p = j;
        this.f14466q = i5;
        this.f14467r = i6;
        this.f14468s = f;
        this.f14469t = i7 == -1 ? 0 : i7;
        this.f14470u = f2 == -1.0f ? 1.0f : f2;
        this.f14472w = bArr;
        this.f14471v = i8;
        this.f14473x = colorInfo;
        this.f14474y = i9;
        this.f14475z = i10;
        this.f14446A = i11;
        this.f14447B = i12 == -1 ? 0 : i12;
        this.f14448C = i13 == -1 ? 0 : i13;
        this.f14449D = C5515h0.m18840c0(str6);
        this.f14450E = i14;
        this.f14451F = cls;
    }

    /* renamed from: A */
    public static Format m21761A(String str, String str2, String str3, int i, int i2, String str4, int i3, DrmInitData drmInitData, long j, List<byte[]> list) {
        return new Format(str, null, i2, 0, i, str3, null, null, str2, -1, list, drmInitData, j, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, i3, null);
    }

    /* renamed from: B */
    public static Format m21760B(String str, String str2, String str3, int i, int i2, String str4, DrmInitData drmInitData, long j) {
        return m21761A(str, str2, str3, i, i2, str4, -1, drmInitData, j, Collections.emptyList());
    }

    /* renamed from: C */
    public static Format m21759C(String str, String str2, String str3, String str4, String str5, Metadata metadata, int i, int i2, int i3, float f, List<byte[]> list, int i4, int i5) {
        return new Format(str, str2, i4, i5, i, str5, metadata, str3, str4, -1, list, null, Long.MAX_VALUE, i2, i3, f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1, null);
    }

    /* renamed from: D */
    public static Format m21758D(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, DrmInitData drmInitData) {
        return m21757E(str, str2, str3, i, i2, i3, i4, f, list, i5, f2, null, -1, null, drmInitData);
    }

    /* renamed from: E */
    public static Format m21757E(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, ColorInfo colorInfo, DrmInitData drmInitData) {
        return new Format(str, null, 0, 0, i, str3, null, null, str2, i2, list, drmInitData, Long.MAX_VALUE, i3, i4, f, i5, f2, bArr, i6, colorInfo, -1, -1, -1, -1, -1, null, -1, null);
    }

    /* renamed from: l */
    public static Format m21743l(String str, String str2, String str3, String str4, String str5, Metadata metadata, int i, int i2, int i3, List<byte[]> list, int i4, int i5, String str6) {
        return new Format(str, str2, i4, i5, i, str5, metadata, str3, str4, -1, list, null, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i2, i3, -1, -1, -1, str6, -1, null);
    }

    /* renamed from: m */
    public static Format m21742m(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, int i6, int i7, List<byte[]> list, DrmInitData drmInitData, int i8, String str4, Metadata metadata) {
        return new Format(str, null, i8, 0, i, str3, metadata, null, str2, i2, list, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, i6, i7, str4, -1, null);
    }

    /* renamed from: n */
    public static Format m21741n(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, List<byte[]> list, DrmInitData drmInitData, int i6, String str4) {
        return m21742m(str, str2, str3, i, i2, i3, i4, i5, -1, -1, list, drmInitData, i6, str4, null);
    }

    /* renamed from: o */
    public static Format m21740o(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, DrmInitData drmInitData, int i5, String str4) {
        return m21741n(str, str2, str3, i, i2, i3, i4, -1, list, drmInitData, i5, str4);
    }

    /* renamed from: r */
    public static Format m21739r(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6) {
        return new Format(str, str2, i2, i3, i, str5, null, str3, str4, -1, null, null, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str6, -1, null);
    }

    /* renamed from: s */
    public static Format m21738s(String str, String str2, String str3, int i, int i2, List<byte[]> list, String str4, DrmInitData drmInitData) {
        return new Format(str, null, i2, 0, i, str3, null, null, str2, -1, list, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, -1, null);
    }

    /* renamed from: t */
    public static Format m21737t(String str, String str2, long j) {
        return new Format(str, null, 0, 0, -1, null, null, null, str2, -1, null, null, j, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1, null);
    }

    /* renamed from: u */
    public static Format m21736u(String str, String str2, String str3, int i, DrmInitData drmInitData) {
        return new Format(str, null, 0, 0, i, str3, null, null, str2, -1, null, drmInitData, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1, null);
    }

    /* renamed from: v */
    public static Format m21735v(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6) {
        return m21734w(str, str2, str3, str4, str5, i, i2, i3, str6, -1);
    }

    /* renamed from: w */
    public static Format m21734w(String str, String str2, String str3, String str4, String str5, int i, int i2, int i3, String str6, int i4) {
        return new Format(str, str2, i2, i3, i, str5, null, str3, str4, -1, null, null, Long.MAX_VALUE, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str6, i4, null);
    }

    /* renamed from: x */
    public static Format m21733x(String str, String str2, int i, String str3) {
        return m21732z(str, str2, i, str3, null);
    }

    /* renamed from: z */
    public static Format m21732z(String str, String str2, int i, String str3, DrmInitData drmInitData) {
        return m21761A(str, str2, null, -1, i, str3, -1, drmInitData, Long.MAX_VALUE, Collections.emptyList());
    }

    /* renamed from: F */
    public int m21756F() {
        int i = this.f14466q;
        int i2 = -1;
        if (i != -1) {
            int i3 = this.f14467r;
            i2 = i3 == -1 ? -1 : i * i3;
        }
        return i2;
    }

    /* renamed from: G */
    public boolean m21755G(Format format) {
        if (this.f14463n.size() != format.f14463n.size()) {
            return false;
        }
        for (int i = 0; i < this.f14463n.size(); i++) {
            if (!Arrays.equals(this.f14463n.get(i), format.f14463n.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public Format m21754a(DrmInitData drmInitData, Metadata metadata) {
        return (drmInitData == this.f14464o && metadata == this.f14459j) ? this : new Format(this.f14453d, this.f14454e, this.f14455f, this.f14456g, this.f14457h, this.f14458i, metadata, this.f14460k, this.f14461l, this.f14462m, this.f14463n, drmInitData, this.f14465p, this.f14466q, this.f14467r, this.f14468s, this.f14469t, this.f14470u, this.f14472w, this.f14471v, this.f14473x, this.f14474y, this.f14475z, this.f14446A, this.f14447B, this.f14448C, this.f14449D, this.f14450E, this.f14451F);
    }

    /* renamed from: b */
    public Format m21753b(int i) {
        return new Format(this.f14453d, this.f14454e, this.f14455f, this.f14456g, i, this.f14458i, this.f14459j, this.f14460k, this.f14461l, this.f14462m, this.f14463n, this.f14464o, this.f14465p, this.f14466q, this.f14467r, this.f14468s, this.f14469t, this.f14470u, this.f14472w, this.f14471v, this.f14473x, this.f14474y, this.f14475z, this.f14446A, this.f14447B, this.f14448C, this.f14449D, this.f14450E, this.f14451F);
    }

    /* renamed from: c */
    public Format m21752c(String str, String str2, String str3, String str4, Metadata metadata, int i, int i2, int i3, int i4, int i5, String str5) {
        Metadata metadata2 = this.f14459j;
        if (metadata2 != null) {
            metadata = metadata2.m20394b(metadata);
        }
        return new Format(str, str2, i5, this.f14456g, i, str4, metadata, this.f14460k, str3, this.f14462m, this.f14463n, this.f14464o, this.f14465p, i2, i3, this.f14468s, this.f14469t, this.f14470u, this.f14472w, this.f14471v, this.f14473x, i4, this.f14475z, this.f14446A, this.f14447B, this.f14448C, str5, this.f14450E, this.f14451F);
    }

    /* renamed from: d */
    public Format m21751d(DrmInitData drmInitData) {
        return m21754a(drmInitData, this.f14459j);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public Format m21750e(Class<? extends AbstractC5043m> cls) {
        return new Format(this.f14453d, this.f14454e, this.f14455f, this.f14456g, this.f14457h, this.f14458i, this.f14459j, this.f14460k, this.f14461l, this.f14462m, this.f14463n, this.f14464o, this.f14465p, this.f14466q, this.f14467r, this.f14468s, this.f14469t, this.f14470u, this.f14472w, this.f14471v, this.f14473x, this.f14474y, this.f14475z, this.f14446A, this.f14447B, this.f14448C, this.f14449D, this.f14450E, cls);
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
        int i2 = this.f14452G;
        if (i2 != 0 && (i = format.f14452G) != 0 && i2 != i) {
            return false;
        }
        if (this.f14455f != format.f14455f || this.f14456g != format.f14456g || this.f14457h != format.f14457h || this.f14462m != format.f14462m || this.f14465p != format.f14465p || this.f14466q != format.f14466q || this.f14467r != format.f14467r || this.f14469t != format.f14469t || this.f14471v != format.f14471v || this.f14474y != format.f14474y || this.f14475z != format.f14475z || this.f14446A != format.f14446A || this.f14447B != format.f14447B || this.f14448C != format.f14448C || this.f14450E != format.f14450E || Float.compare(this.f14468s, format.f14468s) != 0 || Float.compare(this.f14470u, format.f14470u) != 0 || !C5515h0.m18843b(this.f14451F, format.f14451F) || !C5515h0.m18843b(this.f14453d, format.f14453d) || !C5515h0.m18843b(this.f14454e, format.f14454e) || !C5515h0.m18843b(this.f14458i, format.f14458i) || !C5515h0.m18843b(this.f14460k, format.f14460k) || !C5515h0.m18843b(this.f14461l, format.f14461l) || !C5515h0.m18843b(this.f14449D, format.f14449D) || !Arrays.equals(this.f14472w, format.f14472w) || !C5515h0.m18843b(this.f14459j, format.f14459j) || !C5515h0.m18843b(this.f14473x, format.f14473x) || !C5515h0.m18843b(this.f14464o, format.f14464o) || !m21755G(format)) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public Format m21749f(float f) {
        return new Format(this.f14453d, this.f14454e, this.f14455f, this.f14456g, this.f14457h, this.f14458i, this.f14459j, this.f14460k, this.f14461l, this.f14462m, this.f14463n, this.f14464o, this.f14465p, this.f14466q, this.f14467r, f, this.f14469t, this.f14470u, this.f14472w, this.f14471v, this.f14473x, this.f14474y, this.f14475z, this.f14446A, this.f14447B, this.f14448C, this.f14449D, this.f14450E, this.f14451F);
    }

    /* renamed from: g */
    public Format m21748g(int i, int i2) {
        return new Format(this.f14453d, this.f14454e, this.f14455f, this.f14456g, this.f14457h, this.f14458i, this.f14459j, this.f14460k, this.f14461l, this.f14462m, this.f14463n, this.f14464o, this.f14465p, this.f14466q, this.f14467r, this.f14468s, this.f14469t, this.f14470u, this.f14472w, this.f14471v, this.f14473x, this.f14474y, this.f14475z, this.f14446A, i, i2, this.f14449D, this.f14450E, this.f14451F);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x007c, code lost:
        if (com.google.android.exoplayer2.util.C5515h0.m18814p0(r39).length == 1) goto L24;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.Format m21747h(com.google.android.exoplayer2.Format r34) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.Format.m21747h(com.google.android.exoplayer2.Format):com.google.android.exoplayer2.Format");
    }

    public int hashCode() {
        if (this.f14452G == 0) {
            String str = this.f14453d;
            int i = 0;
            int hashCode = str == null ? 0 : str.hashCode();
            String str2 = this.f14454e;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            int i2 = this.f14455f;
            int i3 = this.f14456g;
            int i4 = this.f14457h;
            String str3 = this.f14458i;
            int hashCode3 = str3 == null ? 0 : str3.hashCode();
            Metadata metadata = this.f14459j;
            int hashCode4 = metadata == null ? 0 : metadata.hashCode();
            String str4 = this.f14460k;
            int hashCode5 = str4 == null ? 0 : str4.hashCode();
            String str5 = this.f14461l;
            int hashCode6 = str5 == null ? 0 : str5.hashCode();
            int i5 = this.f14462m;
            int i6 = (int) this.f14465p;
            int i7 = this.f14466q;
            int i8 = this.f14467r;
            int floatToIntBits = Float.floatToIntBits(this.f14468s);
            int i9 = this.f14469t;
            int floatToIntBits2 = Float.floatToIntBits(this.f14470u);
            int i10 = this.f14471v;
            int i11 = this.f14474y;
            int i12 = this.f14475z;
            int i13 = this.f14446A;
            int i14 = this.f14447B;
            int i15 = this.f14448C;
            String str6 = this.f14449D;
            int hashCode7 = str6 == null ? 0 : str6.hashCode();
            int i16 = this.f14450E;
            Class<? extends AbstractC5043m> cls = this.f14451F;
            if (cls != null) {
                i = cls.hashCode();
            }
            this.f14452G = ((((((((((((((((((((((((((((((((((((((((((((((((527 + hashCode) * 31) + hashCode2) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + floatToIntBits) * 31) + i9) * 31) + floatToIntBits2) * 31) + i10) * 31) + i11) * 31) + i12) * 31) + i13) * 31) + i14) * 31) + i15) * 31) + hashCode7) * 31) + i16) * 31) + i;
        }
        return this.f14452G;
    }

    /* renamed from: i */
    public Format m21746i(int i) {
        return new Format(this.f14453d, this.f14454e, this.f14455f, this.f14456g, this.f14457h, this.f14458i, this.f14459j, this.f14460k, this.f14461l, i, this.f14463n, this.f14464o, this.f14465p, this.f14466q, this.f14467r, this.f14468s, this.f14469t, this.f14470u, this.f14472w, this.f14471v, this.f14473x, this.f14474y, this.f14475z, this.f14446A, this.f14447B, this.f14448C, this.f14449D, this.f14450E, this.f14451F);
    }

    /* renamed from: j */
    public Format m21745j(Metadata metadata) {
        return m21754a(this.f14464o, metadata);
    }

    /* renamed from: k */
    public Format m21744k(long j) {
        return new Format(this.f14453d, this.f14454e, this.f14455f, this.f14456g, this.f14457h, this.f14458i, this.f14459j, this.f14460k, this.f14461l, this.f14462m, this.f14463n, this.f14464o, j, this.f14466q, this.f14467r, this.f14468s, this.f14469t, this.f14470u, this.f14472w, this.f14471v, this.f14473x, this.f14474y, this.f14475z, this.f14446A, this.f14447B, this.f14448C, this.f14449D, this.f14450E, this.f14451F);
    }

    public String toString() {
        return "Format(" + this.f14453d + ", " + this.f14454e + ", " + this.f14460k + ", " + this.f14461l + ", " + this.f14458i + ", " + this.f14457h + ", " + this.f14449D + ", [" + this.f14466q + ", " + this.f14467r + ", " + this.f14468s + "], [" + this.f14474y + ", " + this.f14475z + "])";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f14453d);
        parcel.writeString(this.f14454e);
        parcel.writeInt(this.f14455f);
        parcel.writeInt(this.f14456g);
        parcel.writeInt(this.f14457h);
        parcel.writeString(this.f14458i);
        boolean z = false;
        parcel.writeParcelable(this.f14459j, 0);
        parcel.writeString(this.f14460k);
        parcel.writeString(this.f14461l);
        parcel.writeInt(this.f14462m);
        int size = this.f14463n.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.f14463n.get(i2));
        }
        parcel.writeParcelable(this.f14464o, 0);
        parcel.writeLong(this.f14465p);
        parcel.writeInt(this.f14466q);
        parcel.writeInt(this.f14467r);
        parcel.writeFloat(this.f14468s);
        parcel.writeInt(this.f14469t);
        parcel.writeFloat(this.f14470u);
        if (this.f14472w != null) {
            z = true;
        }
        C5515h0.m18798x0(parcel, z);
        byte[] bArr = this.f14472w;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.f14471v);
        parcel.writeParcelable(this.f14473x, i);
        parcel.writeInt(this.f14474y);
        parcel.writeInt(this.f14475z);
        parcel.writeInt(this.f14446A);
        parcel.writeInt(this.f14447B);
        parcel.writeInt(this.f14448C);
        parcel.writeString(this.f14449D);
        parcel.writeInt(this.f14450E);
    }
}
