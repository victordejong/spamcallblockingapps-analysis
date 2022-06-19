package com.google.android.gms.internal.ads;

import android.media.MediaFormat;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.LongCompanionObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzht.class */
public final class zzht implements Parcelable {
    public static final Parcelable.Creator<zzht> CREATOR = new zzhs();
    public final int height;

    /* renamed from: id */
    private final String f126id;
    public final int width;
    public final int zzaha;
    public final String zzahb;
    private final zzmh zzahc;
    public final String zzahd;
    public final String zzahe;
    public final int zzahf;
    public final List<byte[]> zzahg;
    public final zzjo zzahh;
    public final float zzahi;
    public final int zzahj;
    public final float zzahk;
    private final int zzahl;
    private final byte[] zzahm;
    private final zzpy zzahn;
    public final int zzaho;
    public final int zzahp;
    public final int zzahq;
    private final int zzahr;
    private final int zzahs;
    public final long zzaht;
    public final int zzahu;
    public final String zzahv;
    private final int zzahw;
    private int zzahx;

    public zzht(Parcel parcel) {
        this.f126id = parcel.readString();
        this.zzahd = parcel.readString();
        this.zzahe = parcel.readString();
        this.zzahb = parcel.readString();
        this.zzaha = parcel.readInt();
        this.zzahf = parcel.readInt();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.zzahi = parcel.readFloat();
        this.zzahj = parcel.readInt();
        this.zzahk = parcel.readFloat();
        this.zzahm = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.zzahl = parcel.readInt();
        this.zzahn = (zzpy) parcel.readParcelable(zzpy.class.getClassLoader());
        this.zzaho = parcel.readInt();
        this.zzahp = parcel.readInt();
        this.zzahq = parcel.readInt();
        this.zzahr = parcel.readInt();
        this.zzahs = parcel.readInt();
        this.zzahu = parcel.readInt();
        this.zzahv = parcel.readString();
        this.zzahw = parcel.readInt();
        this.zzaht = parcel.readLong();
        int readInt = parcel.readInt();
        this.zzahg = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.zzahg.add(parcel.createByteArray());
        }
        this.zzahh = (zzjo) parcel.readParcelable(zzjo.class.getClassLoader());
        this.zzahc = (zzmh) parcel.readParcelable(zzmh.class.getClassLoader());
    }

    private zzht(String str, String str2, String str3, String str4, int i, int i2, int i3, int i4, float f, int i5, float f2, byte[] bArr, int i6, zzpy zzpyVar, int i7, int i8, int i9, int i10, int i11, int i12, String str5, int i13, long j, List<byte[]> list, zzjo zzjoVar, zzmh zzmhVar) {
        this.f126id = str;
        this.zzahd = str2;
        this.zzahe = str3;
        this.zzahb = str4;
        this.zzaha = i;
        this.zzahf = i2;
        this.width = i3;
        this.height = i4;
        this.zzahi = f;
        this.zzahj = i5;
        this.zzahk = f2;
        this.zzahm = bArr;
        this.zzahl = i6;
        this.zzahn = zzpyVar;
        this.zzaho = i7;
        this.zzahp = i8;
        this.zzahq = i9;
        this.zzahr = i10;
        this.zzahs = i11;
        this.zzahu = i12;
        this.zzahv = str5;
        this.zzahw = i13;
        this.zzaht = j;
        this.zzahg = list == null ? Collections.emptyList() : list;
        this.zzahh = zzjoVar;
        this.zzahc = zzmhVar;
    }

    public static zzht zza(String str, String str2, long j) {
        return new zzht(null, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, LongCompanionObject.MAX_VALUE, null, null, null);
    }

    public static zzht zza(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, zzpy zzpyVar, zzjo zzjoVar) {
        return new zzht(str, null, str2, null, -1, i2, i3, i4, -1.0f, i5, f2, bArr, i6, zzpyVar, -1, -1, -1, -1, -1, 0, null, -1, LongCompanionObject.MAX_VALUE, list, zzjoVar, null);
    }

    public static zzht zza(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, List<byte[]> list, zzjo zzjoVar, int i6, String str4) {
        return new zzht(str, null, str2, null, -1, i2, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, -1, -1, i6, str4, -1, LongCompanionObject.MAX_VALUE, list, zzjoVar, null);
    }

    public static zzht zza(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, zzjo zzjoVar, int i5, String str4) {
        return zza(str, str2, null, -1, -1, i3, i4, -1, null, zzjoVar, 0, str4);
    }

    public static zzht zza(String str, String str2, String str3, int i, int i2, String str4, int i3, zzjo zzjoVar, long j, List<byte[]> list) {
        return new zzht(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i2, str4, -1, j, list, zzjoVar, null);
    }

    public static zzht zza(String str, String str2, String str3, int i, int i2, String str4, zzjo zzjoVar) {
        return zza(str, str2, null, -1, i2, str4, -1, zzjoVar, LongCompanionObject.MAX_VALUE, Collections.emptyList());
    }

    public static zzht zza(String str, String str2, String str3, int i, zzjo zzjoVar) {
        return new zzht(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, LongCompanionObject.MAX_VALUE, null, zzjoVar, null);
    }

    public static zzht zza(String str, String str2, String str3, int i, List<byte[]> list, String str4, zzjo zzjoVar) {
        return new zzht(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, str4, -1, LongCompanionObject.MAX_VALUE, list, zzjoVar, null);
    }

    private static void zza(MediaFormat mediaFormat, String str, int i) {
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
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzht zzhtVar = (zzht) obj;
        if (this.zzaha != zzhtVar.zzaha || this.zzahf != zzhtVar.zzahf || this.width != zzhtVar.width || this.height != zzhtVar.height || this.zzahi != zzhtVar.zzahi || this.zzahj != zzhtVar.zzahj || this.zzahk != zzhtVar.zzahk || this.zzahl != zzhtVar.zzahl || this.zzaho != zzhtVar.zzaho || this.zzahp != zzhtVar.zzahp || this.zzahq != zzhtVar.zzahq || this.zzahr != zzhtVar.zzahr || this.zzahs != zzhtVar.zzahs || this.zzaht != zzhtVar.zzaht || this.zzahu != zzhtVar.zzahu || !zzpt.zza(this.f126id, zzhtVar.f126id) || !zzpt.zza(this.zzahv, zzhtVar.zzahv) || this.zzahw != zzhtVar.zzahw || !zzpt.zza(this.zzahd, zzhtVar.zzahd) || !zzpt.zza(this.zzahe, zzhtVar.zzahe) || !zzpt.zza(this.zzahb, zzhtVar.zzahb) || !zzpt.zza(this.zzahh, zzhtVar.zzahh) || !zzpt.zza(this.zzahc, zzhtVar.zzahc) || !zzpt.zza(this.zzahn, zzhtVar.zzahn) || !Arrays.equals(this.zzahm, zzhtVar.zzahm) || this.zzahg.size() != zzhtVar.zzahg.size()) {
            return false;
        }
        for (int i = 0; i < this.zzahg.size(); i++) {
            if (!Arrays.equals(this.zzahg.get(i), zzhtVar.zzahg.get(i))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        if (this.zzahx == 0) {
            String str = this.f126id;
            int i = 0;
            int hashCode = str == null ? 0 : str.hashCode();
            String str2 = this.zzahd;
            int hashCode2 = str2 == null ? 0 : str2.hashCode();
            String str3 = this.zzahe;
            int hashCode3 = str3 == null ? 0 : str3.hashCode();
            String str4 = this.zzahb;
            int hashCode4 = str4 == null ? 0 : str4.hashCode();
            int i2 = this.zzaha;
            int i3 = this.width;
            int i4 = this.height;
            int i5 = this.zzaho;
            int i6 = this.zzahp;
            String str5 = this.zzahv;
            int hashCode5 = str5 == null ? 0 : str5.hashCode();
            int i7 = this.zzahw;
            zzjo zzjoVar = this.zzahh;
            int hashCode6 = zzjoVar == null ? 0 : zzjoVar.hashCode();
            zzmh zzmhVar = this.zzahc;
            if (zzmhVar != null) {
                i = zzmhVar.hashCode();
            }
            this.zzahx = ((((((((((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + hashCode5) * 31) + i7) * 31) + hashCode6) * 31) + i;
        }
        return this.zzahx;
    }

    public final String toString() {
        String str = this.f126id;
        String str2 = this.zzahd;
        String str3 = this.zzahe;
        int i = this.zzaha;
        String str4 = this.zzahv;
        int i2 = this.width;
        int i3 = this.height;
        float f = this.zzahi;
        int i4 = this.zzaho;
        int i5 = this.zzahp;
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
        parcel.writeString(this.f126id);
        parcel.writeString(this.zzahd);
        parcel.writeString(this.zzahe);
        parcel.writeString(this.zzahb);
        parcel.writeInt(this.zzaha);
        parcel.writeInt(this.zzahf);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeFloat(this.zzahi);
        parcel.writeInt(this.zzahj);
        parcel.writeFloat(this.zzahk);
        parcel.writeInt(this.zzahm != null ? 1 : 0);
        byte[] bArr = this.zzahm;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.zzahl);
        parcel.writeParcelable(this.zzahn, i);
        parcel.writeInt(this.zzaho);
        parcel.writeInt(this.zzahp);
        parcel.writeInt(this.zzahq);
        parcel.writeInt(this.zzahr);
        parcel.writeInt(this.zzahs);
        parcel.writeInt(this.zzahu);
        parcel.writeString(this.zzahv);
        parcel.writeInt(this.zzahw);
        parcel.writeLong(this.zzaht);
        int size = this.zzahg.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.zzahg.get(i2));
        }
        parcel.writeParcelable(this.zzahh, 0);
        parcel.writeParcelable(this.zzahc, 0);
    }

    public final zzht zza(zzjo zzjoVar) {
        return new zzht(this.f126id, this.zzahd, this.zzahe, this.zzahb, this.zzaha, this.zzahf, this.width, this.height, this.zzahi, this.zzahj, this.zzahk, this.zzahm, this.zzahl, this.zzahn, this.zzaho, this.zzahp, this.zzahq, this.zzahr, this.zzahs, this.zzahu, this.zzahv, this.zzahw, this.zzaht, this.zzahg, zzjoVar, this.zzahc);
    }

    public final zzht zza(zzmh zzmhVar) {
        return new zzht(this.f126id, this.zzahd, this.zzahe, this.zzahb, this.zzaha, this.zzahf, this.width, this.height, this.zzahi, this.zzahj, this.zzahk, this.zzahm, this.zzahl, this.zzahn, this.zzaho, this.zzahp, this.zzahq, this.zzahr, this.zzahs, this.zzahu, this.zzahv, this.zzahw, this.zzaht, this.zzahg, this.zzahh, zzmhVar);
    }

    public final zzht zzb(int i, int i2) {
        return new zzht(this.f126id, this.zzahd, this.zzahe, this.zzahb, this.zzaha, this.zzahf, this.width, this.height, this.zzahi, this.zzahj, this.zzahk, this.zzahm, this.zzahl, this.zzahn, this.zzaho, this.zzahp, this.zzahq, i, i2, this.zzahu, this.zzahv, this.zzahw, this.zzaht, this.zzahg, this.zzahh, this.zzahc);
    }

    public final zzht zzds(long j) {
        return new zzht(this.f126id, this.zzahd, this.zzahe, this.zzahb, this.zzaha, this.zzahf, this.width, this.height, this.zzahi, this.zzahj, this.zzahk, this.zzahm, this.zzahl, this.zzahn, this.zzaho, this.zzahp, this.zzahq, this.zzahr, this.zzahs, this.zzahu, this.zzahv, this.zzahw, j, this.zzahg, this.zzahh, this.zzahc);
    }

    public final int zzez() {
        int i;
        int i2 = this.width;
        if (i2 == -1 || (i = this.height) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public final MediaFormat zzfa() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", this.zzahe);
        String str = this.zzahv;
        if (str != null) {
            mediaFormat.setString(POBConstants.KEY_LANGUAGE, str);
        }
        zza(mediaFormat, "max-input-size", this.zzahf);
        zza(mediaFormat, ViewHierarchyConstants.DIMENSION_WIDTH_KEY, this.width);
        zza(mediaFormat, ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, this.height);
        float f = this.zzahi;
        if (f != -1.0f) {
            mediaFormat.setFloat("frame-rate", f);
        }
        zza(mediaFormat, "rotation-degrees", this.zzahj);
        zza(mediaFormat, "channel-count", this.zzaho);
        zza(mediaFormat, "sample-rate", this.zzahp);
        zza(mediaFormat, "encoder-delay", this.zzahr);
        zza(mediaFormat, "encoder-padding", this.zzahs);
        for (int i = 0; i < this.zzahg.size(); i++) {
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i);
            mediaFormat.setByteBuffer(sb.toString(), ByteBuffer.wrap(this.zzahg.get(i)));
        }
        zzpy zzpyVar = this.zzahn;
        if (zzpyVar != null) {
            zza(mediaFormat, "color-transfer", zzpyVar.zzarw);
            zza(mediaFormat, "color-standard", zzpyVar.zzarv);
            zza(mediaFormat, "color-range", zzpyVar.zzarx);
            byte[] bArr = zzpyVar.zzbkt;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        return mediaFormat;
    }

    public final zzht zzv(int i) {
        return new zzht(this.f126id, this.zzahd, this.zzahe, this.zzahb, this.zzaha, i, this.width, this.height, this.zzahi, this.zzahj, this.zzahk, this.zzahm, this.zzahl, this.zzahn, this.zzaho, this.zzahp, this.zzahq, this.zzahr, this.zzahs, this.zzahu, this.zzahv, this.zzahw, this.zzaht, this.zzahg, this.zzahh, this.zzahc);
    }
}
