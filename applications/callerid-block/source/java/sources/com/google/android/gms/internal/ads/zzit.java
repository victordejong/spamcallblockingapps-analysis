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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzit.class */
public final class zzit implements Parcelable {
    public static final Parcelable.Creator<zzit> CREATOR = new el2();

    /* renamed from: A */
    public final int f9674A;

    /* renamed from: B */
    private int f9675B;

    /* renamed from: b */
    public final String f9676b;

    /* renamed from: c */
    public final int f9677c;

    /* renamed from: d */
    public final String f9678d;

    /* renamed from: e */
    public final zzmz f9679e;

    /* renamed from: f */
    public final String f9680f;

    /* renamed from: g */
    public final String f9681g;

    /* renamed from: h */
    public final int f9682h;

    /* renamed from: i */
    public final List<byte[]> f9683i;

    /* renamed from: j */
    public final zzkq f9684j;

    /* renamed from: k */
    public final int f9685k;

    /* renamed from: l */
    public final int f9686l;

    /* renamed from: m */
    public final float f9687m;

    /* renamed from: n */
    public final int f9688n;

    /* renamed from: o */
    public final float f9689o;

    /* renamed from: p */
    public final int f9690p;

    /* renamed from: q */
    public final byte[] f9691q;

    /* renamed from: r */
    public final zzqm f9692r;

    /* renamed from: s */
    public final int f9693s;

    /* renamed from: t */
    public final int f9694t;

    /* renamed from: u */
    public final int f9695u;

    /* renamed from: v */
    public final int f9696v;

    /* renamed from: w */
    public final int f9697w;

    /* renamed from: x */
    public final long f9698x;

    /* renamed from: y */
    public final int f9699y;

    /* renamed from: z */
    public final String f9700z;

    public zzit(Parcel parcel) {
        this.f9676b = parcel.readString();
        this.f9680f = parcel.readString();
        this.f9681g = parcel.readString();
        this.f9678d = parcel.readString();
        this.f9677c = parcel.readInt();
        this.f9682h = parcel.readInt();
        this.f9685k = parcel.readInt();
        this.f9686l = parcel.readInt();
        this.f9687m = parcel.readFloat();
        this.f9688n = parcel.readInt();
        this.f9689o = parcel.readFloat();
        this.f9691q = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.f9690p = parcel.readInt();
        this.f9692r = (zzqm) parcel.readParcelable(zzqm.class.getClassLoader());
        this.f9693s = parcel.readInt();
        this.f9694t = parcel.readInt();
        this.f9695u = parcel.readInt();
        this.f9696v = parcel.readInt();
        this.f9697w = parcel.readInt();
        this.f9699y = parcel.readInt();
        this.f9700z = parcel.readString();
        this.f9674A = parcel.readInt();
        this.f9698x = parcel.readLong();
        int readInt = parcel.readInt();
        this.f9683i = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f9683i.add(parcel.createByteArray());
        }
        this.f9684j = (zzkq) parcel.readParcelable(zzkq.class.getClassLoader());
        this.f9679e = (zzmz) parcel.readParcelable(zzmz.class.getClassLoader());
    }

    zzit(String str, String str2, String str3, String str4, int i, int i2, int i3, int i4, float f, int i5, float f2, byte[] bArr, int i6, zzqm zzqmVar, int i7, int i8, int i9, int i10, int i11, int i12, String str5, int i13, long j, List<byte[]> list, zzkq zzkqVar, zzmz zzmzVar) {
        this.f9676b = str;
        this.f9680f = str2;
        this.f9681g = str3;
        this.f9678d = str4;
        this.f9677c = i;
        this.f9682h = i2;
        this.f9685k = i3;
        this.f9686l = i4;
        this.f9687m = f;
        this.f9688n = i5;
        this.f9689o = f2;
        this.f9691q = bArr;
        this.f9690p = i6;
        this.f9692r = zzqmVar;
        this.f9693s = i7;
        this.f9694t = i8;
        this.f9695u = i9;
        this.f9696v = i10;
        this.f9697w = i11;
        this.f9699y = i12;
        this.f9700z = str5;
        this.f9674A = i13;
        this.f9698x = j;
        this.f9683i = list == null ? Collections.emptyList() : list;
        this.f9684j = zzkqVar;
        this.f9679e = zzmzVar;
    }

    /* renamed from: a */
    public static zzit m4488a(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, zzqm zzqmVar, zzkq zzkqVar) {
        return new zzit(str, null, str2, null, -1, i2, i3, i4, -1.0f, i5, f2, bArr, i6, zzqmVar, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, list, zzkqVar, null);
    }

    /* renamed from: b */
    public static zzit m4487b(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, zzkq zzkqVar, int i5, String str4) {
        return m4486c(str, str2, null, -1, -1, i3, i4, -1, -1, -1, null, zzkqVar, 0, str4, null);
    }

    /* renamed from: c */
    public static zzit m4486c(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, int i6, int i7, List<byte[]> list, zzkq zzkqVar, int i8, String str4, zzmz zzmzVar) {
        return new zzit(str, null, str2, null, -1, i2, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, -1, -1, i8, str4, -1, Long.MAX_VALUE, list, zzkqVar, null);
    }

    /* renamed from: d */
    public static zzit m4485d(String str, String str2, String str3, int i, int i2, String str4, int i3, zzkq zzkqVar, long j, List<byte[]> list) {
        return new zzit(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i2, str4, -1, j, list, zzkqVar, null);
    }

    /* renamed from: e */
    public static zzit m4484e(String str, String str2, String str3, int i, List<byte[]> list, String str4, zzkq zzkqVar) {
        return new zzit(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, str4, -1, Long.MAX_VALUE, list, zzkqVar, null);
    }

    /* renamed from: f */
    public static zzit m4483f(String str, String str2, String str3, int i, zzkq zzkqVar) {
        return new zzit(str, null, "application/x-camera-motion", null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, null, zzkqVar, null);
    }

    @TargetApi(16)
    /* renamed from: o */
    private static void m4476o(MediaFormat mediaFormat, String str, int i) {
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
        if (obj == null || zzit.class != obj.getClass()) {
            return false;
        }
        zzit zzitVar = (zzit) obj;
        if (this.f9677c != zzitVar.f9677c || this.f9682h != zzitVar.f9682h || this.f9685k != zzitVar.f9685k || this.f9686l != zzitVar.f9686l || this.f9687m != zzitVar.f9687m || this.f9688n != zzitVar.f9688n || this.f9689o != zzitVar.f9689o || this.f9690p != zzitVar.f9690p || this.f9693s != zzitVar.f9693s || this.f9694t != zzitVar.f9694t || this.f9695u != zzitVar.f9695u || this.f9696v != zzitVar.f9696v || this.f9697w != zzitVar.f9697w || this.f9698x != zzitVar.f9698x || this.f9699y != zzitVar.f9699y || !zr2.m4534a(this.f9676b, zzitVar.f9676b) || !zr2.m4534a(this.f9700z, zzitVar.f9700z) || this.f9674A != zzitVar.f9674A || !zr2.m4534a(this.f9680f, zzitVar.f9680f) || !zr2.m4534a(this.f9681g, zzitVar.f9681g) || !zr2.m4534a(this.f9678d, zzitVar.f9678d) || !zr2.m4534a(this.f9684j, zzitVar.f9684j) || !zr2.m4534a(this.f9679e, zzitVar.f9679e) || !zr2.m4534a(this.f9692r, zzitVar.f9692r) || !Arrays.equals(this.f9691q, zzitVar.f9691q) || this.f9683i.size() != zzitVar.f9683i.size()) {
            return false;
        }
        for (int i = 0; i < this.f9683i.size(); i++) {
            if (!Arrays.equals(this.f9683i.get(i), zzitVar.f9683i.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final zzit m4482g(int i) {
        return new zzit(this.f9676b, this.f9680f, this.f9681g, this.f9678d, this.f9677c, i, this.f9685k, this.f9686l, this.f9687m, this.f9688n, this.f9689o, this.f9691q, this.f9690p, this.f9692r, this.f9693s, this.f9694t, this.f9695u, this.f9696v, this.f9697w, this.f9699y, this.f9700z, this.f9674A, this.f9698x, this.f9683i, this.f9684j, this.f9679e);
    }

    /* renamed from: h */
    public final zzit m4481h(int i, int i2) {
        return new zzit(this.f9676b, this.f9680f, this.f9681g, this.f9678d, this.f9677c, this.f9682h, this.f9685k, this.f9686l, this.f9687m, this.f9688n, this.f9689o, this.f9691q, this.f9690p, this.f9692r, this.f9693s, this.f9694t, this.f9695u, i, i2, this.f9699y, this.f9700z, this.f9674A, this.f9698x, this.f9683i, this.f9684j, this.f9679e);
    }

    public final int hashCode() {
        int i = this.f9675B;
        int i2 = i;
        if (i == 0) {
            String str = this.f9676b;
            int i3 = 0;
            int hashCode = str == null ? 0 : str.hashCode();
            String str2 = this.f9680f;
            int hashCode2 = str2 == null ? 0 : str2.hashCode();
            String str3 = this.f9681g;
            int hashCode3 = str3 == null ? 0 : str3.hashCode();
            String str4 = this.f9678d;
            int hashCode4 = str4 == null ? 0 : str4.hashCode();
            int i4 = this.f9677c;
            int i5 = this.f9685k;
            int i6 = this.f9686l;
            int i7 = this.f9693s;
            int i8 = this.f9694t;
            String str5 = this.f9700z;
            int hashCode5 = str5 == null ? 0 : str5.hashCode();
            int i9 = this.f9674A;
            zzkq zzkqVar = this.f9684j;
            int hashCode6 = zzkqVar == null ? 0 : zzkqVar.hashCode();
            zzmz zzmzVar = this.f9679e;
            if (zzmzVar != null) {
                i3 = zzmzVar.hashCode();
            }
            i2 = ((((((((((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + hashCode5) * 31) + i9) * 31) + hashCode6) * 31) + i3;
            this.f9675B = i2;
        }
        return i2;
    }

    /* renamed from: i */
    public final zzit m4480i(zzkq zzkqVar) {
        return new zzit(this.f9676b, this.f9680f, this.f9681g, this.f9678d, this.f9677c, this.f9682h, this.f9685k, this.f9686l, this.f9687m, this.f9688n, this.f9689o, this.f9691q, this.f9690p, this.f9692r, this.f9693s, this.f9694t, this.f9695u, this.f9696v, this.f9697w, this.f9699y, this.f9700z, this.f9674A, this.f9698x, this.f9683i, zzkqVar, this.f9679e);
    }

    /* renamed from: l */
    public final zzit m4479l(zzmz zzmzVar) {
        return new zzit(this.f9676b, this.f9680f, this.f9681g, this.f9678d, this.f9677c, this.f9682h, this.f9685k, this.f9686l, this.f9687m, this.f9688n, this.f9689o, this.f9691q, this.f9690p, this.f9692r, this.f9693s, this.f9694t, this.f9695u, this.f9696v, this.f9697w, this.f9699y, this.f9700z, this.f9674A, this.f9698x, this.f9683i, this.f9684j, zzmzVar);
    }

    /* renamed from: m */
    public final int m4478m() {
        int i;
        int i2 = this.f9685k;
        if (i2 == -1 || (i = this.f9686l) == -1) {
            return -1;
        }
        return i2 * i;
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(16)
    /* renamed from: n */
    public final MediaFormat m4477n() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", this.f9681g);
        String str = this.f9700z;
        if (str != null) {
            mediaFormat.setString("language", str);
        }
        m4476o(mediaFormat, "max-input-size", this.f9682h);
        m4476o(mediaFormat, "width", this.f9685k);
        m4476o(mediaFormat, "height", this.f9686l);
        float f = this.f9687m;
        if (f != -1.0f) {
            mediaFormat.setFloat("frame-rate", f);
        }
        m4476o(mediaFormat, "rotation-degrees", this.f9688n);
        m4476o(mediaFormat, "channel-count", this.f9693s);
        m4476o(mediaFormat, "sample-rate", this.f9694t);
        m4476o(mediaFormat, "encoder-delay", this.f9696v);
        m4476o(mediaFormat, "encoder-padding", this.f9697w);
        for (int i = 0; i < this.f9683i.size(); i++) {
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i);
            mediaFormat.setByteBuffer(sb.toString(), ByteBuffer.wrap(this.f9683i.get(i)));
        }
        zzqm zzqmVar = this.f9692r;
        if (zzqmVar != null) {
            m4476o(mediaFormat, "color-transfer", zzqmVar.f9712d);
            m4476o(mediaFormat, "color-standard", zzqmVar.f9710b);
            m4476o(mediaFormat, "color-range", zzqmVar.f9711c);
            byte[] bArr = zzqmVar.f9713e;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        return mediaFormat;
    }

    public final String toString() {
        String str = this.f9676b;
        String str2 = this.f9680f;
        String str3 = this.f9681g;
        int i = this.f9677c;
        String str4 = this.f9700z;
        int i2 = this.f9685k;
        int i3 = this.f9686l;
        float f = this.f9687m;
        int i4 = this.f9693s;
        int i5 = this.f9694t;
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
        parcel.writeString(this.f9676b);
        parcel.writeString(this.f9680f);
        parcel.writeString(this.f9681g);
        parcel.writeString(this.f9678d);
        parcel.writeInt(this.f9677c);
        parcel.writeInt(this.f9682h);
        parcel.writeInt(this.f9685k);
        parcel.writeInt(this.f9686l);
        parcel.writeFloat(this.f9687m);
        parcel.writeInt(this.f9688n);
        parcel.writeFloat(this.f9689o);
        parcel.writeInt(this.f9691q != null ? 1 : 0);
        byte[] bArr = this.f9691q;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.f9690p);
        parcel.writeParcelable(this.f9692r, i);
        parcel.writeInt(this.f9693s);
        parcel.writeInt(this.f9694t);
        parcel.writeInt(this.f9695u);
        parcel.writeInt(this.f9696v);
        parcel.writeInt(this.f9697w);
        parcel.writeInt(this.f9699y);
        parcel.writeString(this.f9700z);
        parcel.writeInt(this.f9674A);
        parcel.writeLong(this.f9698x);
        int size = this.f9683i.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.f9683i.get(i2));
        }
        parcel.writeParcelable(this.f9684j, 0);
        parcel.writeParcelable(this.f9679e, 0);
    }
}
