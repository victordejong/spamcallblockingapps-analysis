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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzanm.class */
public final class zzanm implements Parcelable {
    public static final Parcelable.Creator<zzanm> CREATOR = new C6917rb();

    /* renamed from: A */
    public final int f33546A;

    /* renamed from: B */
    public final String f33547B;

    /* renamed from: C */
    public final int f33548C;

    /* renamed from: D */
    private int f33549D;

    /* renamed from: d */
    public final String f33550d;

    /* renamed from: e */
    public final int f33551e;

    /* renamed from: f */
    public final String f33552f;

    /* renamed from: g */
    public final zzaru f33553g;

    /* renamed from: h */
    public final String f33554h;

    /* renamed from: i */
    public final String f33555i;

    /* renamed from: j */
    public final int f33556j;

    /* renamed from: k */
    public final List<byte[]> f33557k;

    /* renamed from: l */
    public final zzapk f33558l;

    /* renamed from: m */
    public final int f33559m;

    /* renamed from: n */
    public final int f33560n;

    /* renamed from: o */
    public final float f33561o;

    /* renamed from: p */
    public final int f33562p;

    /* renamed from: q */
    public final float f33563q;

    /* renamed from: r */
    public final int f33564r;

    /* renamed from: s */
    public final byte[] f33565s;

    /* renamed from: t */
    public final zzavh f33566t;

    /* renamed from: u */
    public final int f33567u;

    /* renamed from: v */
    public final int f33568v;

    /* renamed from: w */
    public final int f33569w;

    /* renamed from: x */
    public final int f33570x;

    /* renamed from: y */
    public final int f33571y;

    /* renamed from: z */
    public final long f33572z;

    public zzanm(Parcel parcel) {
        this.f33550d = parcel.readString();
        this.f33554h = parcel.readString();
        this.f33555i = parcel.readString();
        this.f33552f = parcel.readString();
        this.f33551e = parcel.readInt();
        this.f33556j = parcel.readInt();
        this.f33559m = parcel.readInt();
        this.f33560n = parcel.readInt();
        this.f33561o = parcel.readFloat();
        this.f33562p = parcel.readInt();
        this.f33563q = parcel.readFloat();
        this.f33565s = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.f33564r = parcel.readInt();
        this.f33566t = (zzavh) parcel.readParcelable(zzavh.class.getClassLoader());
        this.f33567u = parcel.readInt();
        this.f33568v = parcel.readInt();
        this.f33569w = parcel.readInt();
        this.f33570x = parcel.readInt();
        this.f33571y = parcel.readInt();
        this.f33546A = parcel.readInt();
        this.f33547B = parcel.readString();
        this.f33548C = parcel.readInt();
        this.f33572z = parcel.readLong();
        int readInt = parcel.readInt();
        this.f33557k = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f33557k.add(parcel.createByteArray());
        }
        this.f33558l = (zzapk) parcel.readParcelable(zzapk.class.getClassLoader());
        this.f33553g = (zzaru) parcel.readParcelable(zzaru.class.getClassLoader());
    }

    public zzanm(String str, String str2, String str3, String str4, int i, int i2, int i3, int i4, float f, int i5, float f2, byte[] bArr, int i6, zzavh zzavhVar, int i7, int i8, int i9, int i10, int i11, int i12, String str5, int i13, long j, List<byte[]> list, zzapk zzapkVar, zzaru zzaruVar) {
        this.f33550d = str;
        this.f33554h = str2;
        this.f33555i = str3;
        this.f33552f = str4;
        this.f33551e = i;
        this.f33556j = i2;
        this.f33559m = i3;
        this.f33560n = i4;
        this.f33561o = f;
        this.f33562p = i5;
        this.f33563q = f2;
        this.f33565s = bArr;
        this.f33564r = i6;
        this.f33566t = zzavhVar;
        this.f33567u = i7;
        this.f33568v = i8;
        this.f33569w = i9;
        this.f33570x = i10;
        this.f33571y = i11;
        this.f33546A = i12;
        this.f33547B = str5;
        this.f33548C = i13;
        this.f33572z = j;
        this.f33557k = list == null ? Collections.emptyList() : list;
        this.f33558l = zzapkVar;
        this.f33553g = zzaruVar;
    }

    /* renamed from: a */
    public static zzanm m8112a(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, zzavh zzavhVar, zzapk zzapkVar) {
        return new zzanm(str, null, str2, null, -1, i2, i3, i4, -1.0f, i5, f2, bArr, i6, zzavhVar, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, list, zzapkVar, null);
    }

    /* renamed from: b */
    public static zzanm m8111b(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, zzapk zzapkVar, int i5, String str4) {
        return m8110c(str, str2, null, -1, -1, i3, i4, -1, -1, -1, null, zzapkVar, 0, str4, null);
    }

    /* renamed from: c */
    public static zzanm m8110c(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, int i6, int i7, List<byte[]> list, zzapk zzapkVar, int i8, String str4, zzaru zzaruVar) {
        return new zzanm(str, null, str2, null, -1, i2, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, -1, -1, i8, str4, -1, Long.MAX_VALUE, list, zzapkVar, null);
    }

    /* renamed from: d */
    public static zzanm m8109d(String str, String str2, String str3, int i, int i2, String str4, int i3, zzapk zzapkVar, long j, List<byte[]> list) {
        return new zzanm(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i2, str4, -1, j, list, zzapkVar, null);
    }

    /* renamed from: e */
    public static zzanm m8108e(String str, String str2, String str3, int i, List<byte[]> list, String str4, zzapk zzapkVar) {
        return new zzanm(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, str4, -1, Long.MAX_VALUE, list, zzapkVar, null);
    }

    /* renamed from: f */
    public static zzanm m8107f(String str, String str2, String str3, int i, zzapk zzapkVar) {
        return new zzanm(str, null, "application/x-camera-motion", null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, null, zzapkVar, null);
    }

    @TargetApi(16)
    /* renamed from: m */
    private static void m8100m(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzanm.class != obj.getClass()) {
            return false;
        }
        zzanm zzanmVar = (zzanm) obj;
        if (this.f33551e != zzanmVar.f33551e || this.f33556j != zzanmVar.f33556j || this.f33559m != zzanmVar.f33559m || this.f33560n != zzanmVar.f33560n || this.f33561o != zzanmVar.f33561o || this.f33562p != zzanmVar.f33562p || this.f33563q != zzanmVar.f33563q || this.f33564r != zzanmVar.f33564r || this.f33567u != zzanmVar.f33567u || this.f33568v != zzanmVar.f33568v || this.f33569w != zzanmVar.f33569w || this.f33570x != zzanmVar.f33570x || this.f33571y != zzanmVar.f33571y || this.f33572z != zzanmVar.f33572z || this.f33546A != zzanmVar.f33546A || !C6961si.m11021a(this.f33550d, zzanmVar.f33550d) || !C6961si.m11021a(this.f33547B, zzanmVar.f33547B) || this.f33548C != zzanmVar.f33548C || !C6961si.m11021a(this.f33554h, zzanmVar.f33554h) || !C6961si.m11021a(this.f33555i, zzanmVar.f33555i) || !C6961si.m11021a(this.f33552f, zzanmVar.f33552f) || !C6961si.m11021a(this.f33558l, zzanmVar.f33558l) || !C6961si.m11021a(this.f33553g, zzanmVar.f33553g) || !C6961si.m11021a(this.f33566t, zzanmVar.f33566t) || !Arrays.equals(this.f33565s, zzanmVar.f33565s) || this.f33557k.size() != zzanmVar.f33557k.size()) {
            return false;
        }
        for (int i = 0; i < this.f33557k.size(); i++) {
            if (!Arrays.equals(this.f33557k.get(i), zzanmVar.f33557k.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final zzanm m8106g(int i) {
        return new zzanm(this.f33550d, this.f33554h, this.f33555i, this.f33552f, this.f33551e, i, this.f33559m, this.f33560n, this.f33561o, this.f33562p, this.f33563q, this.f33565s, this.f33564r, this.f33566t, this.f33567u, this.f33568v, this.f33569w, this.f33570x, this.f33571y, this.f33546A, this.f33547B, this.f33548C, this.f33572z, this.f33557k, this.f33558l, this.f33553g);
    }

    /* renamed from: h */
    public final zzanm m8105h(int i, int i2) {
        return new zzanm(this.f33550d, this.f33554h, this.f33555i, this.f33552f, this.f33551e, this.f33556j, this.f33559m, this.f33560n, this.f33561o, this.f33562p, this.f33563q, this.f33565s, this.f33564r, this.f33566t, this.f33567u, this.f33568v, this.f33569w, i, i2, this.f33546A, this.f33547B, this.f33548C, this.f33572z, this.f33557k, this.f33558l, this.f33553g);
    }

    public final int hashCode() {
        int i = this.f33549D;
        int i2 = i;
        if (i == 0) {
            String str = this.f33550d;
            int i3 = 0;
            int hashCode = str == null ? 0 : str.hashCode();
            String str2 = this.f33554h;
            int hashCode2 = str2 == null ? 0 : str2.hashCode();
            String str3 = this.f33555i;
            int hashCode3 = str3 == null ? 0 : str3.hashCode();
            String str4 = this.f33552f;
            int hashCode4 = str4 == null ? 0 : str4.hashCode();
            int i4 = this.f33551e;
            int i5 = this.f33559m;
            int i6 = this.f33560n;
            int i7 = this.f33567u;
            int i8 = this.f33568v;
            String str5 = this.f33547B;
            int hashCode5 = str5 == null ? 0 : str5.hashCode();
            int i9 = this.f33548C;
            zzapk zzapkVar = this.f33558l;
            int hashCode6 = zzapkVar == null ? 0 : zzapkVar.hashCode();
            zzaru zzaruVar = this.f33553g;
            if (zzaruVar != null) {
                i3 = zzaruVar.hashCode();
            }
            i2 = ((((((((((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + hashCode5) * 31) + i9) * 31) + hashCode6) * 31) + i3;
            this.f33549D = i2;
        }
        return i2;
    }

    /* renamed from: i */
    public final zzanm m8104i(zzapk zzapkVar) {
        return new zzanm(this.f33550d, this.f33554h, this.f33555i, this.f33552f, this.f33551e, this.f33556j, this.f33559m, this.f33560n, this.f33561o, this.f33562p, this.f33563q, this.f33565s, this.f33564r, this.f33566t, this.f33567u, this.f33568v, this.f33569w, this.f33570x, this.f33571y, this.f33546A, this.f33547B, this.f33548C, this.f33572z, this.f33557k, zzapkVar, this.f33553g);
    }

    /* renamed from: j */
    public final zzanm m8103j(zzaru zzaruVar) {
        return new zzanm(this.f33550d, this.f33554h, this.f33555i, this.f33552f, this.f33551e, this.f33556j, this.f33559m, this.f33560n, this.f33561o, this.f33562p, this.f33563q, this.f33565s, this.f33564r, this.f33566t, this.f33567u, this.f33568v, this.f33569w, this.f33570x, this.f33571y, this.f33546A, this.f33547B, this.f33548C, this.f33572z, this.f33557k, this.f33558l, zzaruVar);
    }

    /* renamed from: k */
    public final int m8102k() {
        int i;
        int i2 = this.f33559m;
        if (i2 == -1 || (i = this.f33560n) == -1) {
            return -1;
        }
        return i2 * i;
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(16)
    /* renamed from: l */
    public final MediaFormat m8101l() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", this.f33555i);
        String str = this.f33547B;
        if (str != null) {
            mediaFormat.setString("language", str);
        }
        m8100m(mediaFormat, "max-input-size", this.f33556j);
        m8100m(mediaFormat, "width", this.f33559m);
        m8100m(mediaFormat, "height", this.f33560n);
        float f = this.f33561o;
        if (f != -1.0f) {
            mediaFormat.setFloat("frame-rate", f);
        }
        m8100m(mediaFormat, "rotation-degrees", this.f33562p);
        m8100m(mediaFormat, "channel-count", this.f33567u);
        m8100m(mediaFormat, "sample-rate", this.f33568v);
        m8100m(mediaFormat, "encoder-delay", this.f33570x);
        m8100m(mediaFormat, "encoder-padding", this.f33571y);
        for (int i = 0; i < this.f33557k.size(); i++) {
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i);
            mediaFormat.setByteBuffer(sb.toString(), ByteBuffer.wrap(this.f33557k.get(i)));
        }
        zzavh zzavhVar = this.f33566t;
        if (zzavhVar != null) {
            m8100m(mediaFormat, "color-transfer", zzavhVar.f33594f);
            m8100m(mediaFormat, "color-standard", zzavhVar.f33592d);
            m8100m(mediaFormat, "color-range", zzavhVar.f33593e);
            byte[] bArr = zzavhVar.f33595g;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        return mediaFormat;
    }

    public final String toString() {
        String str = this.f33550d;
        String str2 = this.f33554h;
        String str3 = this.f33555i;
        int i = this.f33551e;
        String str4 = this.f33547B;
        int i2 = this.f33559m;
        int i3 = this.f33560n;
        float f = this.f33561o;
        int i4 = this.f33567u;
        int i5 = this.f33568v;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 100 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("Format(");
        sb.append(str);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(i);
        sb.append(", ");
        sb.append(str4);
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
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33550d);
        parcel.writeString(this.f33554h);
        parcel.writeString(this.f33555i);
        parcel.writeString(this.f33552f);
        parcel.writeInt(this.f33551e);
        parcel.writeInt(this.f33556j);
        parcel.writeInt(this.f33559m);
        parcel.writeInt(this.f33560n);
        parcel.writeFloat(this.f33561o);
        parcel.writeInt(this.f33562p);
        parcel.writeFloat(this.f33563q);
        parcel.writeInt(this.f33565s != null ? 1 : 0);
        byte[] bArr = this.f33565s;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.f33564r);
        parcel.writeParcelable(this.f33566t, i);
        parcel.writeInt(this.f33567u);
        parcel.writeInt(this.f33568v);
        parcel.writeInt(this.f33569w);
        parcel.writeInt(this.f33570x);
        parcel.writeInt(this.f33571y);
        parcel.writeInt(this.f33546A);
        parcel.writeString(this.f33547B);
        parcel.writeInt(this.f33548C);
        parcel.writeLong(this.f33572z);
        int size = this.f33557k.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.f33557k.get(i2));
        }
        parcel.writeParcelable(this.f33558l, 0);
        parcel.writeParcelable(this.f33553g, 0);
    }
}
