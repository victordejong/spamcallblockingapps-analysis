package com.google.android.gms.internal.ads;

import android.media.MediaFormat;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzanm.class */
public final class zzanm implements Parcelable {
    public static final Parcelable.Creator<zzanm> CREATOR = new zzanl();
    private int zzA;
    public final String zza;
    public final int zzb;
    public final String zzc;
    public final zzaru zzd;
    public final String zze;
    public final String zzf;
    public final int zzg;
    public final List<byte[]> zzh;
    public final zzapk zzi;
    public final int zzj;
    public final int zzk;
    public final float zzl;
    public final int zzm;
    public final float zzn;
    public final int zzo;
    public final byte[] zzp;
    public final zzavh zzq;
    public final int zzr;
    public final int zzs;
    public final int zzt;
    public final int zzu;
    public final int zzv;
    public final long zzw;
    public final int zzx;
    public final String zzy;
    public final int zzz;

    public zzanm(Parcel parcel) {
        this.zza = parcel.readString();
        this.zze = parcel.readString();
        this.zzf = parcel.readString();
        this.zzc = parcel.readString();
        this.zzb = parcel.readInt();
        this.zzg = parcel.readInt();
        this.zzj = parcel.readInt();
        this.zzk = parcel.readInt();
        this.zzl = parcel.readFloat();
        this.zzm = parcel.readInt();
        this.zzn = parcel.readFloat();
        this.zzp = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.zzo = parcel.readInt();
        this.zzq = (zzavh) parcel.readParcelable(zzavh.class.getClassLoader());
        this.zzr = parcel.readInt();
        this.zzs = parcel.readInt();
        this.zzt = parcel.readInt();
        this.zzu = parcel.readInt();
        this.zzv = parcel.readInt();
        this.zzx = parcel.readInt();
        this.zzy = parcel.readString();
        this.zzz = parcel.readInt();
        this.zzw = parcel.readLong();
        int readInt = parcel.readInt();
        this.zzh = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.zzh.add(parcel.createByteArray());
        }
        this.zzi = (zzapk) parcel.readParcelable(zzapk.class.getClassLoader());
        this.zzd = (zzaru) parcel.readParcelable(zzaru.class.getClassLoader());
    }

    public zzanm(String str, String str2, String str3, String str4, int i, int i2, int i3, int i4, float f, int i5, float f2, byte[] bArr, int i6, zzavh zzavhVar, int i7, int i8, int i9, int i10, int i11, int i12, String str5, int i13, long j, List<byte[]> list, zzapk zzapkVar, zzaru zzaruVar) {
        this.zza = str;
        this.zze = str2;
        this.zzf = str3;
        this.zzc = str4;
        this.zzb = i;
        this.zzg = i2;
        this.zzj = i3;
        this.zzk = i4;
        this.zzl = f;
        this.zzm = i5;
        this.zzn = f2;
        this.zzp = bArr;
        this.zzo = i6;
        this.zzq = zzavhVar;
        this.zzr = i7;
        this.zzs = i8;
        this.zzt = i9;
        this.zzu = i10;
        this.zzv = i11;
        this.zzx = i12;
        this.zzy = str5;
        this.zzz = i13;
        this.zzw = j;
        this.zzh = list == null ? Collections.emptyList() : list;
        this.zzi = zzapkVar;
        this.zzd = zzaruVar;
    }

    public static zzanm zza(String str, String str2, String str3, int i, int i2, int i3, int i4, float f, List<byte[]> list, int i5, float f2, byte[] bArr, int i6, zzavh zzavhVar, zzapk zzapkVar) {
        return new zzanm(str, null, str2, null, -1, i2, i3, i4, -1.0f, i5, f2, bArr, i6, zzavhVar, -1, -1, -1, -1, -1, 0, null, -1, RecyclerView.FOREVER_NS, list, zzapkVar, null);
    }

    public static zzanm zzb(String str, String str2, String str3, int i, int i2, int i3, int i4, List<byte[]> list, zzapk zzapkVar, int i5, String str4) {
        return zzc(str, str2, null, -1, -1, i3, i4, -1, -1, -1, null, zzapkVar, 0, str4, null);
    }

    public static zzanm zzc(String str, String str2, String str3, int i, int i2, int i3, int i4, int i5, int i6, int i7, List<byte[]> list, zzapk zzapkVar, int i8, String str4, zzaru zzaruVar) {
        return new zzanm(str, null, str2, null, -1, i2, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, i5, -1, -1, i8, str4, -1, RecyclerView.FOREVER_NS, list, zzapkVar, null);
    }

    public static zzanm zzd(String str, String str2, String str3, int i, int i2, String str4, int i3, zzapk zzapkVar, long j, List<byte[]> list) {
        return new zzanm(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i2, str4, -1, j, list, zzapkVar, null);
    }

    public static zzanm zze(String str, String str2, String str3, int i, List<byte[]> list, String str4, zzapk zzapkVar) {
        return new zzanm(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, str4, -1, RecyclerView.FOREVER_NS, list, zzapkVar, null);
    }

    public static zzanm zzf(String str, String str2, String str3, int i, zzapk zzapkVar) {
        return new zzanm(str, null, "application/x-camera-motion", null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, RecyclerView.FOREVER_NS, null, zzapkVar, null);
    }

    private static void zzm(MediaFormat mediaFormat, String str, int i) {
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
        if (this.zzb != zzanmVar.zzb || this.zzg != zzanmVar.zzg || this.zzj != zzanmVar.zzj || this.zzk != zzanmVar.zzk || this.zzl != zzanmVar.zzl || this.zzm != zzanmVar.zzm || this.zzn != zzanmVar.zzn || this.zzo != zzanmVar.zzo || this.zzr != zzanmVar.zzr || this.zzs != zzanmVar.zzs || this.zzt != zzanmVar.zzt || this.zzu != zzanmVar.zzu || this.zzv != zzanmVar.zzv || this.zzw != zzanmVar.zzw || this.zzx != zzanmVar.zzx || !zzave.zza(this.zza, zzanmVar.zza) || !zzave.zza(this.zzy, zzanmVar.zzy) || this.zzz != zzanmVar.zzz || !zzave.zza(this.zze, zzanmVar.zze) || !zzave.zza(this.zzf, zzanmVar.zzf) || !zzave.zza(this.zzc, zzanmVar.zzc) || !zzave.zza(this.zzi, zzanmVar.zzi) || !zzave.zza(this.zzd, zzanmVar.zzd) || !zzave.zza(this.zzq, zzanmVar.zzq) || !Arrays.equals(this.zzp, zzanmVar.zzp) || this.zzh.size() != zzanmVar.zzh.size()) {
            return false;
        }
        for (int i = 0; i < this.zzh.size(); i++) {
            if (!Arrays.equals(this.zzh.get(i), zzanmVar.zzh.get(i))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = this.zzA;
        int i2 = i;
        if (i == 0) {
            String str = this.zza;
            int i3 = 0;
            int hashCode = str == null ? 0 : str.hashCode();
            String str2 = this.zze;
            int hashCode2 = str2 == null ? 0 : str2.hashCode();
            String str3 = this.zzf;
            int hashCode3 = str3 == null ? 0 : str3.hashCode();
            String str4 = this.zzc;
            int hashCode4 = str4 == null ? 0 : str4.hashCode();
            int i4 = this.zzb;
            int i5 = this.zzj;
            int i6 = this.zzk;
            int i7 = this.zzr;
            int i8 = this.zzs;
            String str5 = this.zzy;
            int hashCode5 = str5 == null ? 0 : str5.hashCode();
            int i9 = this.zzz;
            zzapk zzapkVar = this.zzi;
            int hashCode6 = zzapkVar == null ? 0 : zzapkVar.hashCode();
            zzaru zzaruVar = this.zzd;
            if (zzaruVar != null) {
                i3 = zzaruVar.hashCode();
            }
            i2 = ((((((((((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + hashCode5) * 31) + i9) * 31) + hashCode6) * 31) + i3;
            this.zzA = i2;
        }
        return i2;
    }

    public final String toString() {
        String str = this.zza;
        String str2 = this.zze;
        String str3 = this.zzf;
        int i = this.zzb;
        String str4 = this.zzy;
        int i2 = this.zzj;
        int i3 = this.zzk;
        float f = this.zzl;
        int i4 = this.zzr;
        int i5 = this.zzs;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 100 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        C22128a.m8666T0(sb, "Format(", str, ", ", str2);
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
        parcel.writeString(this.zza);
        parcel.writeString(this.zze);
        parcel.writeString(this.zzf);
        parcel.writeString(this.zzc);
        parcel.writeInt(this.zzb);
        parcel.writeInt(this.zzg);
        parcel.writeInt(this.zzj);
        parcel.writeInt(this.zzk);
        parcel.writeFloat(this.zzl);
        parcel.writeInt(this.zzm);
        parcel.writeFloat(this.zzn);
        parcel.writeInt(this.zzp != null ? 1 : 0);
        byte[] bArr = this.zzp;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.zzo);
        parcel.writeParcelable(this.zzq, i);
        parcel.writeInt(this.zzr);
        parcel.writeInt(this.zzs);
        parcel.writeInt(this.zzt);
        parcel.writeInt(this.zzu);
        parcel.writeInt(this.zzv);
        parcel.writeInt(this.zzx);
        parcel.writeString(this.zzy);
        parcel.writeInt(this.zzz);
        parcel.writeLong(this.zzw);
        int size = this.zzh.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeByteArray(this.zzh.get(i2));
        }
        parcel.writeParcelable(this.zzi, 0);
        parcel.writeParcelable(this.zzd, 0);
    }

    public final zzanm zzg(int i) {
        return new zzanm(this.zza, this.zze, this.zzf, this.zzc, this.zzb, i, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzp, this.zzo, this.zzq, this.zzr, this.zzs, this.zzt, this.zzu, this.zzv, this.zzx, this.zzy, this.zzz, this.zzw, this.zzh, this.zzi, this.zzd);
    }

    public final zzanm zzh(int i, int i2) {
        return new zzanm(this.zza, this.zze, this.zzf, this.zzc, this.zzb, this.zzg, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzp, this.zzo, this.zzq, this.zzr, this.zzs, this.zzt, i, i2, this.zzx, this.zzy, this.zzz, this.zzw, this.zzh, this.zzi, this.zzd);
    }

    public final zzanm zzi(zzapk zzapkVar) {
        return new zzanm(this.zza, this.zze, this.zzf, this.zzc, this.zzb, this.zzg, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzp, this.zzo, this.zzq, this.zzr, this.zzs, this.zzt, this.zzu, this.zzv, this.zzx, this.zzy, this.zzz, this.zzw, this.zzh, zzapkVar, this.zzd);
    }

    public final zzanm zzj(zzaru zzaruVar) {
        return new zzanm(this.zza, this.zze, this.zzf, this.zzc, this.zzb, this.zzg, this.zzj, this.zzk, this.zzl, this.zzm, this.zzn, this.zzp, this.zzo, this.zzq, this.zzr, this.zzs, this.zzt, this.zzu, this.zzv, this.zzx, this.zzy, this.zzz, this.zzw, this.zzh, this.zzi, zzaruVar);
    }

    public final int zzk() {
        int i;
        int i2 = this.zzj;
        if (i2 == -1 || (i = this.zzk) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public final MediaFormat zzl() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", this.zzf);
        String str = this.zzy;
        if (str != null) {
            mediaFormat.setString("language", str);
        }
        zzm(mediaFormat, "max-input-size", this.zzg);
        zzm(mediaFormat, "width", this.zzj);
        zzm(mediaFormat, "height", this.zzk);
        float f = this.zzl;
        if (f != -1.0f) {
            mediaFormat.setFloat("frame-rate", f);
        }
        zzm(mediaFormat, "rotation-degrees", this.zzm);
        zzm(mediaFormat, "channel-count", this.zzr);
        zzm(mediaFormat, "sample-rate", this.zzs);
        zzm(mediaFormat, "encoder-delay", this.zzu);
        zzm(mediaFormat, "encoder-padding", this.zzv);
        for (int i = 0; i < this.zzh.size(); i++) {
            mediaFormat.setByteBuffer(C22128a.m8690L1(15, "csd-", i), ByteBuffer.wrap(this.zzh.get(i)));
        }
        zzavh zzavhVar = this.zzq;
        if (zzavhVar != null) {
            zzm(mediaFormat, "color-transfer", zzavhVar.zzc);
            zzm(mediaFormat, "color-standard", zzavhVar.zza);
            zzm(mediaFormat, "color-range", zzavhVar.zzb);
            byte[] bArr = zzavhVar.zzd;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        return mediaFormat;
    }
}
