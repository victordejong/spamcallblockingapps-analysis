package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgmn.class */
public final class zzgmn extends zzgjf {
    public static final int[] zza = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Api.BaseClientBuilder.API_PRIORITY_OTHER};
    private final int zzc;
    private final zzgjf zzd;
    private final zzgjf zze;
    private final int zzf;
    private final int zzg;

    /* JADX INFO: Access modifiers changed from: private */
    public zzgmn(zzgjf zzgjfVar, zzgjf zzgjfVar2) {
        this.zzd = zzgjfVar;
        this.zze = zzgjfVar2;
        int zzd = zzgjfVar.zzd();
        this.zzf = zzd;
        this.zzc = zzgjfVar2.zzd() + zzd;
        this.zzg = Math.max(zzgjfVar.zzf(), zzgjfVar2.zzf()) + 1;
    }

    public static zzgjf zzG(zzgjf zzgjfVar, zzgjf zzgjfVar2) {
        if (zzgjfVar2.zzd() == 0) {
            return zzgjfVar;
        }
        if (zzgjfVar.zzd() == 0) {
            return zzgjfVar2;
        }
        int zzd = zzgjfVar2.zzd() + zzgjfVar.zzd();
        if (zzd < 128) {
            return zzH(zzgjfVar, zzgjfVar2);
        }
        if (zzgjfVar instanceof zzgmn) {
            zzgmn zzgmnVar = (zzgmn) zzgjfVar;
            if (zzgjfVar2.zzd() + zzgmnVar.zze.zzd() < 128) {
                return new zzgmn(zzgmnVar.zzd, zzH(zzgmnVar.zze, zzgjfVar2));
            } else if (zzgmnVar.zzd.zzf() > zzgmnVar.zze.zzf() && zzgmnVar.zzg > zzgjfVar2.zzf()) {
                return new zzgmn(zzgmnVar.zzd, new zzgmn(zzgmnVar.zze, zzgjfVar2));
            }
        }
        return zzd >= zzc(Math.max(zzgjfVar.zzf(), zzgjfVar2.zzf()) + 1) ? new zzgmn(zzgjfVar, zzgjfVar2) : zzgmj.zza(new zzgmj(null), zzgjfVar, zzgjfVar2);
    }

    private static zzgjf zzH(zzgjf zzgjfVar, zzgjf zzgjfVar2) {
        int zzd = zzgjfVar.zzd();
        int zzd2 = zzgjfVar2.zzd();
        byte[] bArr = new byte[zzd + zzd2];
        zzgjfVar.zzC(bArr, 0, 0, zzd);
        zzgjfVar2.zzC(bArr, 0, zzd, zzd2);
        return new zzgjb(bArr);
    }

    public static int zzc(int i) {
        int[] iArr = zza;
        int length = iArr.length;
        return i >= 47 ? Api.BaseClientBuilder.API_PRIORITY_OTHER : iArr[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgjf)) {
            return false;
        }
        zzgjf zzgjfVar = (zzgjf) obj;
        if (this.zzc != zzgjfVar.zzd()) {
            return false;
        }
        if (this.zzc == 0) {
            return true;
        }
        int zzr = zzr();
        int zzr2 = zzgjfVar.zzr();
        if (zzr != 0 && zzr2 != 0 && zzr != zzr2) {
            return false;
        }
        zzgml zzgmlVar = new zzgml(this, null);
        zzgja next = zzgmlVar.next();
        zzgml zzgmlVar2 = new zzgml(zzgjfVar, null);
        zzgja next2 = zzgmlVar2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int zzd = next.zzd() - i;
            int zzd2 = next2.zzd() - i2;
            int min = Math.min(zzd, zzd2);
            if (!(i == 0 ? next.zzg(next2, i2, min) : next2.zzg(next, i, min))) {
                z = false;
                break;
            }
            i3 += min;
            int i4 = this.zzc;
            if (i3 < i4) {
                if (min == zzd) {
                    next = zzgmlVar.next();
                    i = 0;
                } else {
                    i += min;
                }
                if (min == zzd2) {
                    next2 = zzgmlVar2.next();
                    i2 = 0;
                } else {
                    i2 += min;
                }
            } else if (i3 != i4) {
                throw new IllegalStateException();
            } else {
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzgjf, java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return new zzgmh(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final byte zza(int i) {
        zzgjf.zzB(i, this.zzc);
        return zzb(i);
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final byte zzb(int i) {
        int i2 = this.zzf;
        return i < i2 ? this.zzd.zzb(i) : this.zze.zzb(i - i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final void zze(byte[] bArr, int i, int i2, int i3) {
        int i4 = this.zzf;
        if (i + i3 <= i4) {
            this.zzd.zze(bArr, i, i2, i3);
        } else if (i >= i4) {
            this.zze.zze(bArr, i - i4, i2, i3);
        } else {
            int i5 = i4 - i;
            this.zzd.zze(bArr, i, i2, i5);
            this.zze.zze(bArr, 0, i2 + i5, i3 - i5);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final int zzf() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final boolean zzh() {
        return this.zzc >= zzc(this.zzg);
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final int zzi(int i, int i2, int i3) {
        int i4 = this.zzf;
        if (i2 + i3 <= i4) {
            return this.zzd.zzi(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.zze.zzi(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.zze.zzi(this.zzd.zzi(i, i2, i5), 0, i3 - i5);
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final int zzj(int i, int i2, int i3) {
        int i4 = this.zzf;
        if (i2 + i3 <= i4) {
            return this.zzd.zzj(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.zze.zzj(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.zze.zzj(this.zzd.zzj(i, i2, i5), 0, i3 - i5);
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final zzgjf zzk(int i, int i2) {
        int zzq = zzgjf.zzq(i, i2, this.zzc);
        if (zzq == 0) {
            return zzgjf.zzb;
        }
        if (zzq == this.zzc) {
            return this;
        }
        int i3 = this.zzf;
        if (i2 <= i3) {
            return this.zzd.zzk(i, i2);
        }
        if (i >= i3) {
            return this.zze.zzk(i - i3, i2 - i3);
        }
        zzgjf zzgjfVar = this.zzd;
        return new zzgmn(zzgjfVar.zzk(i, zzgjfVar.zzd()), this.zze.zzk(0, i2 - this.zzf));
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final zzgjn zzl() {
        ArrayList arrayList = new ArrayList();
        zzgml zzgmlVar = new zzgml(this, null);
        while (zzgmlVar.hasNext()) {
            arrayList.add(zzgmlVar.next().zzn());
        }
        int i = zzgjn.zzd;
        Iterator it2 = arrayList.iterator();
        boolean z = false;
        int i2 = 0;
        while (it2.hasNext()) {
            ByteBuffer byteBuffer = (ByteBuffer) it2.next();
            i2 += byteBuffer.remaining();
            z = byteBuffer.hasArray() ? z | true : byteBuffer.isDirect() ? z | true : z | true;
        }
        return z ? new zzgjj(arrayList, i2, true, null) : new zzgjl(new zzgky(arrayList), 4096, null);
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final String zzm(Charset charset) {
        return new String(zzE(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final ByteBuffer zzn() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final void zzo(zzgit zzgitVar) throws IOException {
        this.zzd.zzo(zzgitVar);
        this.zze.zzo(zzgitVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final boolean zzp() {
        int zzj = this.zzd.zzj(0, 0, this.zzf);
        zzgjf zzgjfVar = this.zze;
        return zzgjfVar.zzj(zzj, 0, zzgjfVar.zzd()) == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgjf
    public final zzgiz zzs() {
        return new zzgmh(this);
    }
}
