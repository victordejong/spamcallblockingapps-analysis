package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaws.class */
public final class zzaws {
    private final int zza;
    private final int zzb;
    private final int zzc;
    private final boolean zzd;
    private final zzaxh zze;
    private final zzaxp zzf;
    private int zzn;
    private final Object zzg = new Object();
    private final ArrayList<String> zzh = new ArrayList<>();
    private final ArrayList<String> zzi = new ArrayList<>();
    private final ArrayList<zzaxd> zzj = new ArrayList<>();
    private int zzk = 0;
    private int zzl = 0;
    private int zzm = 0;
    private String zzo = "";
    private String zzp = "";
    private String zzq = "";

    public zzaws(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = z;
        this.zze = new zzaxh(i4);
        this.zzf = new zzaxp(i5, i6, i7);
    }

    private final void zzp(String str, boolean z, float f, float f2, float f3, float f4) {
        if (str == null || str.length() < this.zzc) {
            return;
        }
        synchronized (this.zzg) {
            this.zzh.add(str);
            this.zzk += str.length();
            if (z) {
                this.zzi.add(str);
                this.zzj.add(new zzaxd(f, f2, f3, f4, this.zzi.size() - 1));
            }
        }
    }

    private static final String zzq(ArrayList<String> arrayList, int i) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            sb.append(arrayList.get(i2));
            sb.append(' ');
            i2++;
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String sb2 = sb.toString();
        return sb2.length() < 100 ? sb2 : sb2.substring(0, 100);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzaws)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((zzaws) obj).zzo;
        return str != null && str.equals(this.zzo);
    }

    public final int hashCode() {
        return this.zzo.hashCode();
    }

    public final String toString() {
        int i = this.zzl;
        int i2 = this.zzn;
        int i3 = this.zzk;
        String zzq = zzq(this.zzh, 100);
        String zzq2 = zzq(this.zzi, 100);
        String str = this.zzo;
        String str2 = this.zzp;
        String str3 = this.zzq;
        StringBuilder sb = new StringBuilder(String.valueOf(zzq).length() + 165 + String.valueOf(zzq2).length() + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append("ActivityContent fetchId: ");
        sb.append(i);
        sb.append(" score:");
        sb.append(i2);
        sb.append(" total_length:");
        sb.append(i3);
        sb.append("\n text: ");
        sb.append(zzq);
        C22128a.m8666T0(sb, "\n viewableText", zzq2, "\n signture: ", str);
        return C22128a.m8606k(sb, "\n viewableSignture: ", str2, "\n viewableSignatureForVertical: ", str3);
    }

    public final boolean zza() {
        boolean z;
        synchronized (this.zzg) {
            z = this.zzm == 0;
        }
        return z;
    }

    public final String zzb() {
        return this.zzo;
    }

    public final String zzc() {
        return this.zzp;
    }

    public final String zzd() {
        return this.zzq;
    }

    public final void zze() {
        synchronized (this.zzg) {
            this.zzn -= 100;
        }
    }

    public final void zzf() {
        synchronized (this.zzg) {
            this.zzm--;
        }
    }

    public final void zzg() {
        synchronized (this.zzg) {
            this.zzm++;
        }
    }

    public final void zzh(String str, boolean z, float f, float f2, float f3, float f4) {
        zzp(str, z, f, f2, f3, f4);
        synchronized (this.zzg) {
            if (this.zzm < 0) {
                zzcgt.zzd("ActivityContent: negative number of WebViews.");
            }
            zzk();
        }
    }

    public final void zzi(String str, boolean z, float f, float f2, float f3, float f4) {
        zzp(str, z, f, f2, f3, f4);
    }

    public final void zzj() {
        synchronized (this.zzg) {
            int zzl = zzl(this.zzk, this.zzl);
            if (zzl > this.zzn) {
                this.zzn = zzl;
            }
        }
    }

    public final void zzk() {
        synchronized (this.zzg) {
            int zzl = zzl(this.zzk, this.zzl);
            if (zzl > this.zzn) {
                this.zzn = zzl;
                if (!zzt.zzg().zzp().zzd()) {
                    this.zzo = this.zze.zza(this.zzh);
                    this.zzp = this.zze.zza(this.zzi);
                }
                if (!zzt.zzg().zzp().zzh()) {
                    this.zzq = this.zzf.zza(this.zzi, this.zzj);
                }
            }
        }
    }

    @VisibleForTesting
    public final int zzl(int i, int i2) {
        if (this.zzd) {
            return this.zzb;
        }
        return (i2 * this.zzb) + (i * this.zza);
    }

    public final int zzm() {
        return this.zzn;
    }

    public final void zzn(int i) {
        this.zzl = i;
    }

    @VisibleForTesting
    public final int zzo() {
        return this.zzk;
    }
}
