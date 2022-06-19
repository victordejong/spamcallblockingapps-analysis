package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrj.class */
public final class zzrj {
    private int score;
    private final int zzbsi;
    private final int zzbsj;
    private final int zzbsk;
    private final boolean zzbsl;
    private final zzru zzbsm;
    private final zzsf zzbsn;
    private final Object lock = new Object();
    private ArrayList<String> zzbso = new ArrayList<>();
    private ArrayList<String> zzbsp = new ArrayList<>();
    private ArrayList<zzrs> zzbsq = new ArrayList<>();
    private int zzbsr = 0;
    private int zzbss = 0;
    private int zzbst = 0;
    private String zzbsu = "";
    private String zzbsv = "";
    private String zzbsw = "";

    public zzrj(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.zzbsi = i;
        this.zzbsj = i2;
        this.zzbsk = i3;
        this.zzbsl = z;
        this.zzbsm = new zzru(i4);
        this.zzbsn = new zzsf(i5, i6, i7);
    }

    private static String zza(ArrayList<String> arrayList, int i) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        ArrayList<String> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            i2++;
            sb.append(arrayList2.get(i2));
            sb.append(' ');
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String sb2 = sb.toString();
        return sb2.length() < 100 ? sb2 : sb2.substring(0, 100);
    }

    private final void zzc(String str, boolean z, float f, float f2, float f3, float f4) {
        if (str == null || str.length() < this.zzbsk) {
            return;
        }
        synchronized (this.lock) {
            this.zzbso.add(str);
            this.zzbsr += str.length();
            if (z) {
                this.zzbsp.add(str);
                this.zzbsq.add(new zzrs(f, f2, f3, f4, this.zzbsp.size() - 1));
            }
        }
    }

    private final int zzh(int i, int i2) {
        return this.zzbsl ? this.zzbsj : (i * this.zzbsi) + (i2 * this.zzbsj);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzrj)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((zzrj) obj).zzbsu;
        return str != null && str.equals(this.zzbsu);
    }

    public final int getScore() {
        return this.score;
    }

    public final int hashCode() {
        return this.zzbsu.hashCode();
    }

    public final String toString() {
        int i = this.zzbss;
        int i2 = this.score;
        int i3 = this.zzbsr;
        String zza = zza(this.zzbso, 100);
        String zza2 = zza(this.zzbsp, 100);
        String str = this.zzbsu;
        String str2 = this.zzbsv;
        String str3 = this.zzbsw;
        StringBuilder sb = new StringBuilder(String.valueOf(zza).length() + 165 + String.valueOf(zza2).length() + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append("ActivityContent fetchId: ");
        sb.append(i);
        sb.append(" score:");
        sb.append(i2);
        sb.append(" total_length:");
        sb.append(i3);
        sb.append("\n text: ");
        sb.append(zza);
        sb.append("\n viewableText");
        sb.append(zza2);
        sb.append("\n signture: ");
        sb.append(str);
        sb.append("\n viewableSignture: ");
        sb.append(str2);
        sb.append("\n viewableSignatureForVertical: ");
        sb.append(str3);
        return sb.toString();
    }

    public final void zza(String str, boolean z, float f, float f2, float f3, float f4) {
        zzc(str, z, f, f2, f3, f4);
        synchronized (this.lock) {
            if (this.zzbst < 0) {
                zzd.zzdy("ActivityContent: negative number of WebViews.");
            }
            zzmg();
        }
    }

    public final void zzb(String str, boolean z, float f, float f2, float f3, float f4) {
        zzc(str, z, f, f2, f3, f4);
    }

    public final void zzbt(int i) {
        this.zzbss = i;
    }

    public final boolean zzly() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzbst == 0;
        }
        return z;
    }

    public final String zzlz() {
        return this.zzbsu;
    }

    public final String zzma() {
        return this.zzbsv;
    }

    public final String zzmb() {
        return this.zzbsw;
    }

    public final void zzmc() {
        synchronized (this.lock) {
            this.score -= 100;
        }
    }

    public final void zzmd() {
        synchronized (this.lock) {
            this.zzbst--;
        }
    }

    public final void zzme() {
        synchronized (this.lock) {
            this.zzbst++;
        }
    }

    public final void zzmf() {
        synchronized (this.lock) {
            int zzh = zzh(this.zzbsr, this.zzbss);
            if (zzh > this.score) {
                this.score = zzh;
            }
        }
    }

    public final void zzmg() {
        synchronized (this.lock) {
            int zzh = zzh(this.zzbsr, this.zzbss);
            if (zzh > this.score) {
                this.score = zzh;
                if (!zzr.zzkv().zzxs().zzyi()) {
                    this.zzbsu = this.zzbsm.zza(this.zzbso);
                    this.zzbsv = this.zzbsm.zza(this.zzbsp);
                }
                if (!zzr.zzkv().zzxs().zzyk()) {
                    this.zzbsw = this.zzbsn.zza(this.zzbsp, this.zzbsq);
                }
            }
        }
    }

    public final int zzmh() {
        return this.zzbsr;
    }
}
