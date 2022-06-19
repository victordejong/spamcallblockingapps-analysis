package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaFormat;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dlf.class */
public final class dlf implements Parcelable {
    public static final Parcelable.Creator<dlf> CREATOR = new dle();

    /* renamed from: A */
    private int f14632A;

    /* renamed from: a */
    public final int f14633a;

    /* renamed from: b */
    public final String f14634b;

    /* renamed from: c */
    public final String f14635c;

    /* renamed from: d */
    public final int f14636d;

    /* renamed from: e */
    public final List<byte[]> f14637e;

    /* renamed from: f */
    public final dmw f14638f;

    /* renamed from: g */
    public final int f14639g;

    /* renamed from: h */
    public final int f14640h;

    /* renamed from: i */
    public final float f14641i;

    /* renamed from: j */
    public final int f14642j;

    /* renamed from: k */
    public final float f14643k;

    /* renamed from: l */
    public final int f14644l;

    /* renamed from: m */
    public final int f14645m;

    /* renamed from: n */
    public final int f14646n;

    /* renamed from: o */
    public final long f14647o;

    /* renamed from: p */
    public final int f14648p;

    /* renamed from: q */
    public final String f14649q;

    /* renamed from: r */
    private final String f14650r;

    /* renamed from: s */
    private final dpi f14651s;

    /* renamed from: t */
    private final String f14652t;

    /* renamed from: u */
    private final int f14653u;

    /* renamed from: v */
    private final byte[] f14654v;

    /* renamed from: w */
    private final dss f14655w;

    /* renamed from: x */
    private final int f14656x;

    /* renamed from: y */
    private final int f14657y;

    /* renamed from: z */
    private final int f14658z;

    public dlf(Parcel parcel) {
        this.f14650r = parcel.readString();
        this.f14652t = parcel.readString();
        this.f14635c = parcel.readString();
        this.f14634b = parcel.readString();
        this.f14633a = parcel.readInt();
        this.f14636d = parcel.readInt();
        this.f14639g = parcel.readInt();
        this.f14640h = parcel.readInt();
        this.f14641i = parcel.readFloat();
        this.f14642j = parcel.readInt();
        this.f14643k = parcel.readFloat();
        this.f14654v = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.f14653u = parcel.readInt();
        this.f14655w = (dss) parcel.readParcelable(dss.class.getClassLoader());
        this.f14644l = parcel.readInt();
        this.f14645m = parcel.readInt();
        this.f14646n = parcel.readInt();
        this.f14656x = parcel.readInt();
        this.f14657y = parcel.readInt();
        this.f14648p = parcel.readInt();
        this.f14649q = parcel.readString();
        this.f14658z = parcel.readInt();
        this.f14647o = parcel.readLong();
        int readInt = parcel.readInt();
        this.f14637e = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f14637e.add(parcel.createByteArray());
        }
        this.f14638f = (dmw) parcel.readParcelable(dmw.class.getClassLoader());
        this.f14651s = (dpi) parcel.readParcelable(dpi.class.getClassLoader());
    }

    private dlf(String str, String str2, String str3, String str4, int i, int i2, int i3, int i4, float f, int i5, float f2, byte[] bArr, int i6, dss dssVar, int i7, int i8, int i9, int i10, int i11, int i12, String str5, int i13, long j, List<byte[]> list, dmw dmwVar, dpi dpiVar) {
        this.f14650r = str;
        this.f14652t = str2;
        this.f14635c = str3;
        this.f14634b = str4;
        this.f14633a = i;
        this.f14636d = i2;
        this.f14639g = i3;
        this.f14640h = i4;
        this.f14641i = f;
        this.f14642j = i5;
        this.f14643k = f2;
        this.f14654v = bArr;
        this.f14653u = i6;
        this.f14655w = dssVar;
        this.f14644l = i7;
        this.f14645m = i8;
        this.f14646n = i9;
        this.f14656x = i10;
        this.f14657y = i11;
        this.f14648p = i12;
        this.f14649q = str5;
        this.f14658z = i13;
        this.f14647o = j;
        this.f14637e = list == null ? Collections.emptyList() : list;
        this.f14638f = dmwVar;
        this.f14651s = dpiVar;
    }

    /* renamed from: a */
    public static dlf m9232a(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, dss dssVar, dmw dmwVar) {
        return new dlf(str, null, str2, null, -1, i2, i3, i4, -1.0f, i5, f2, bArr, i6, dssVar, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, list, dmwVar, null);
    }

    /* renamed from: a */
    public static dlf m9231a(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, List<byte[]> list, dmw dmwVar, int i6, String str4) {
        return new dlf(str, null, str2, null, -1, i2, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, -1, -1, i6, str4, -1, Long.MAX_VALUE, list, dmwVar, null);
    }

    /* renamed from: a */
    public static dlf m9230a(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, dmw dmwVar, int i5, String str4) {
        return m9231a(str, str2, null, -1, -1, i3, i4, -1, null, dmwVar, 0, str4);
    }

    /* renamed from: a */
    public static dlf m9229a(String str, String str2, String str3, int i, int i2, String str4, int i3, dmw dmwVar, long j, List<byte[]> list) {
        return new dlf(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i2, str4, -1, j, list, dmwVar, null);
    }

    /* renamed from: a */
    public static dlf m9228a(String str, String str2, String str3, int i, int i2, String str4, dmw dmwVar) {
        return m9229a(str, str2, null, -1, i2, str4, -1, dmwVar, Long.MAX_VALUE, Collections.emptyList());
    }

    /* renamed from: a */
    public static dlf m9227a(String str, String str2, String str3, int i, dmw dmwVar) {
        return new dlf(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, null, null, null);
    }

    /* renamed from: a */
    public static dlf m9226a(String str, String str2, String str3, int i, List<byte[]> list, String str4, dmw dmwVar) {
        return new dlf(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, str4, -1, Long.MAX_VALUE, list, dmwVar, null);
    }

    @TargetApi(16)
    /* renamed from: a */
    private static void m9234a(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    /* renamed from: a */
    public final int m9238a() {
        int i = -1;
        if (this.f14639g != -1) {
            i = this.f14640h == -1 ? -1 : this.f14639g * this.f14640h;
        }
        return i;
    }

    /* renamed from: a */
    public final dlf m9237a(int i) {
        return new dlf(this.f14650r, this.f14652t, this.f14635c, this.f14634b, this.f14633a, i, this.f14639g, this.f14640h, this.f14641i, this.f14642j, this.f14643k, this.f14654v, this.f14653u, this.f14655w, this.f14644l, this.f14645m, this.f14646n, this.f14656x, this.f14657y, this.f14648p, this.f14649q, this.f14658z, this.f14647o, this.f14637e, this.f14638f, this.f14651s);
    }

    /* renamed from: a */
    public final dlf m9236a(int i, int i2) {
        return new dlf(this.f14650r, this.f14652t, this.f14635c, this.f14634b, this.f14633a, this.f14636d, this.f14639g, this.f14640h, this.f14641i, this.f14642j, this.f14643k, this.f14654v, this.f14653u, this.f14655w, this.f14644l, this.f14645m, this.f14646n, i, i2, this.f14648p, this.f14649q, this.f14658z, this.f14647o, this.f14637e, this.f14638f, this.f14651s);
    }

    /* renamed from: a */
    public final dlf m9235a(long j) {
        return new dlf(this.f14650r, this.f14652t, this.f14635c, this.f14634b, this.f14633a, this.f14636d, this.f14639g, this.f14640h, this.f14641i, this.f14642j, this.f14643k, this.f14654v, this.f14653u, this.f14655w, this.f14644l, this.f14645m, this.f14646n, this.f14656x, this.f14657y, this.f14648p, this.f14649q, this.f14658z, j, this.f14637e, this.f14638f, this.f14651s);
    }

    /* renamed from: a */
    public final dlf m9233a(dpi dpiVar) {
        return new dlf(this.f14650r, this.f14652t, this.f14635c, this.f14634b, this.f14633a, this.f14636d, this.f14639g, this.f14640h, this.f14641i, this.f14642j, this.f14643k, this.f14654v, this.f14653u, this.f14655w, this.f14644l, this.f14645m, this.f14646n, this.f14656x, this.f14657y, this.f14648p, this.f14649q, this.f14658z, this.f14647o, this.f14637e, this.f14638f, dpiVar);
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(16)
    /* renamed from: b */
    public final MediaFormat m9225b() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", this.f14635c);
        String str = this.f14649q;
        if (str != null) {
            mediaFormat.setString("language", str);
        }
        m9234a(mediaFormat, "max-input-size", this.f14636d);
        m9234a(mediaFormat, "width", this.f14639g);
        m9234a(mediaFormat, "height", this.f14640h);
        float f = this.f14641i;
        if (f != -1.0f) {
            mediaFormat.setFloat("frame-rate", f);
        }
        m9234a(mediaFormat, "rotation-degrees", this.f14642j);
        m9234a(mediaFormat, "channel-count", this.f14644l);
        m9234a(mediaFormat, "sample-rate", this.f14645m);
        m9234a(mediaFormat, "encoder-delay", this.f14656x);
        m9234a(mediaFormat, "encoder-padding", this.f14657y);
        for (int i = 0; i < this.f14637e.size(); i++) {
            mediaFormat.setByteBuffer(new StringBuilder(15).append("csd-").append(i).toString(), ByteBuffer.wrap(this.f14637e.get(i)));
        }
        dss dssVar = this.f14655w;
        if (dssVar != null) {
            m9234a(mediaFormat, "color-transfer", dssVar.f15593c);
            m9234a(mediaFormat, "color-standard", dssVar.f15591a);
            m9234a(mediaFormat, "color-range", dssVar.f15592b);
            byte[] bArr = dssVar.f15594d;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        return mediaFormat;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else {
            z = false;
            if (obj != null) {
                z = false;
                if (getClass() == obj.getClass()) {
                    dlf dlfVar = (dlf) obj;
                    z = false;
                    if (this.f14633a == dlfVar.f14633a) {
                        z = false;
                        if (this.f14636d == dlfVar.f14636d) {
                            z = false;
                            if (this.f14639g == dlfVar.f14639g) {
                                z = false;
                                if (this.f14640h == dlfVar.f14640h) {
                                    z = false;
                                    if (this.f14641i == dlfVar.f14641i) {
                                        z = false;
                                        if (this.f14642j == dlfVar.f14642j) {
                                            z = false;
                                            if (this.f14643k == dlfVar.f14643k) {
                                                z = false;
                                                if (this.f14653u == dlfVar.f14653u) {
                                                    z = false;
                                                    if (this.f14644l == dlfVar.f14644l) {
                                                        z = false;
                                                        if (this.f14645m == dlfVar.f14645m) {
                                                            z = false;
                                                            if (this.f14646n == dlfVar.f14646n) {
                                                                z = false;
                                                                if (this.f14656x == dlfVar.f14656x) {
                                                                    z = false;
                                                                    if (this.f14657y == dlfVar.f14657y) {
                                                                        z = false;
                                                                        if (this.f14647o == dlfVar.f14647o) {
                                                                            z = false;
                                                                            if (this.f14648p == dlfVar.f14648p) {
                                                                                z = false;
                                                                                if (dsn.m8704a(this.f14650r, dlfVar.f14650r)) {
                                                                                    z = false;
                                                                                    if (dsn.m8704a(this.f14649q, dlfVar.f14649q)) {
                                                                                        z = false;
                                                                                        if (this.f14658z == dlfVar.f14658z) {
                                                                                            z = false;
                                                                                            if (dsn.m8704a(this.f14652t, dlfVar.f14652t)) {
                                                                                                z = false;
                                                                                                if (dsn.m8704a(this.f14635c, dlfVar.f14635c)) {
                                                                                                    z = false;
                                                                                                    if (dsn.m8704a(this.f14634b, dlfVar.f14634b)) {
                                                                                                        z = false;
                                                                                                        if (dsn.m8704a(this.f14638f, dlfVar.f14638f)) {
                                                                                                            z = false;
                                                                                                            if (dsn.m8704a(this.f14651s, dlfVar.f14651s)) {
                                                                                                                z = false;
                                                                                                                if (dsn.m8704a(this.f14655w, dlfVar.f14655w)) {
                                                                                                                    z = false;
                                                                                                                    if (Arrays.equals(this.f14654v, dlfVar.f14654v)) {
                                                                                                                        z = false;
                                                                                                                        if (this.f14637e.size() == dlfVar.f14637e.size()) {
                                                                                                                            int i = 0;
                                                                                                                            while (true) {
                                                                                                                                if (i >= this.f14637e.size()) {
                                                                                                                                    z = true;
                                                                                                                                    break;
                                                                                                                                }
                                                                                                                                z = false;
                                                                                                                                if (!Arrays.equals(this.f14637e.get(i), dlfVar.f14637e.get(i))) {
                                                                                                                                    break;
                                                                                                                                }
                                                                                                                                i++;
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        int i = 0;
        if (this.f14632A == 0) {
            int hashCode = this.f14650r == null ? 0 : this.f14650r.hashCode();
            int hashCode2 = this.f14652t == null ? 0 : this.f14652t.hashCode();
            int hashCode3 = this.f14635c == null ? 0 : this.f14635c.hashCode();
            int hashCode4 = this.f14634b == null ? 0 : this.f14634b.hashCode();
            int i2 = this.f14633a;
            int i3 = this.f14639g;
            int i4 = this.f14640h;
            int i5 = this.f14644l;
            int i6 = this.f14645m;
            int hashCode5 = this.f14649q == null ? 0 : this.f14649q.hashCode();
            int i7 = this.f14658z;
            int hashCode6 = this.f14638f == null ? 0 : this.f14638f.hashCode();
            if (this.f14651s != null) {
                i = this.f14651s.hashCode();
            }
            this.f14632A = ((hashCode6 + ((((hashCode5 + ((((((((((((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + 527) * 31)) * 31)) * 31)) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31)) * 31) + i7) * 31)) * 31) + i;
        }
        return this.f14632A;
    }

    public final String toString() {
        String str = this.f14650r;
        String str2 = this.f14652t;
        String str3 = this.f14635c;
        int i = this.f14633a;
        String str4 = this.f14649q;
        int i2 = this.f14639g;
        int i3 = this.f14640h;
        float f = this.f14641i;
        int i4 = this.f14644l;
        return new StringBuilder(String.valueOf(str).length() + 100 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length()).append("Format(").append(str).append(", ").append(str2).append(", ").append(str3).append(", ").append(i).append(", ").append(str4).append(", [").append(i2).append(", ").append(i3).append(", ").append(f).append("], [").append(i4).append(", ").append(this.f14645m).append("])").toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f14650r);
        parcel.writeString(this.f14652t);
        parcel.writeString(this.f14635c);
        parcel.writeString(this.f14634b);
        parcel.writeInt(this.f14633a);
        parcel.writeInt(this.f14636d);
        parcel.writeInt(this.f14639g);
        parcel.writeInt(this.f14640h);
        parcel.writeFloat(this.f14641i);
        parcel.writeInt(this.f14642j);
        parcel.writeFloat(this.f14643k);
        parcel.writeInt(this.f14654v != null ? 1 : 0);
        if (this.f14654v != null) {
            parcel.writeByteArray(this.f14654v);
        }
        parcel.writeInt(this.f14653u);
        parcel.writeParcelable(this.f14655w, i);
        parcel.writeInt(this.f14644l);
        parcel.writeInt(this.f14645m);
        parcel.writeInt(this.f14646n);
        parcel.writeInt(this.f14656x);
        parcel.writeInt(this.f14657y);
        parcel.writeInt(this.f14648p);
        parcel.writeString(this.f14649q);
        parcel.writeInt(this.f14658z);
        parcel.writeLong(this.f14647o);
        int size = this.f14637e.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.f14637e.get(i2));
        }
        parcel.writeParcelable(this.f14638f, 0);
        parcel.writeParcelable(this.f14651s, 0);
    }
}
