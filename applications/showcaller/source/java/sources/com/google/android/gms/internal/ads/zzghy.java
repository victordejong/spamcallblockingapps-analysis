package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzghy.class */
public final class zzghy extends zzgex {

    /* renamed from: g */
    static final int[] f34178g = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    private final int zzc;
    private final zzgex zzd;
    private final zzgex zze;
    private final int zzf;
    private final int zzg;

    /* JADX INFO: Access modifiers changed from: private */
    public zzghy(zzgex zzgexVar, zzgex zzgexVar2) {
        this.zzd = zzgexVar;
        this.zze = zzgexVar2;
        int zzc = zzgexVar.zzc();
        this.zzf = zzc;
        this.zzc = zzc + zzgexVar2.zzc();
        this.zzg = Math.max(zzgexVar.zzf(), zzgexVar2.zzf()) + 1;
    }

    /* renamed from: d */
    private static zzgex m7855d(zzgex zzgexVar, zzgex zzgexVar2) {
        int zzc = zzgexVar.zzc();
        int zzc2 = zzgexVar2.zzc();
        byte[] bArr = new byte[zzc + zzc2];
        zzgexVar.zzy(bArr, 0, 0, zzc);
        zzgexVar2.zzy(bArr, 0, zzc, zzc2);
        return new zzget(bArr);
    }

    public static zzgex zzF(zzgex zzgexVar, zzgex zzgexVar2) {
        if (zzgexVar2.zzc() == 0) {
            return zzgexVar;
        }
        if (zzgexVar.zzc() == 0) {
            return zzgexVar2;
        }
        int zzc = zzgexVar.zzc() + zzgexVar2.zzc();
        if (zzc < 128) {
            return m7855d(zzgexVar, zzgexVar2);
        }
        if (zzgexVar instanceof zzghy) {
            zzghy zzghyVar = (zzghy) zzgexVar;
            if (zzghyVar.zze.zzc() + zzgexVar2.zzc() < 128) {
                return new zzghy(zzghyVar.zzd, m7855d(zzghyVar.zze, zzgexVar2));
            } else if (zzghyVar.zzd.zzf() > zzghyVar.zze.zzf() && zzghyVar.zzg > zzgexVar2.zzf()) {
                return new zzghy(zzghyVar.zzd, new zzghy(zzghyVar.zze, zzgexVar2));
            }
        }
        return zzc >= zzG(Math.max(zzgexVar.zzf(), zzgexVar2.zzf()) + 1) ? new zzghy(zzgexVar, zzgexVar2) : zf3.m8402a(new zf3(null), zzgexVar, zzgexVar2);
    }

    public static int zzG(int i) {
        int[] iArr = f34178g;
        int length = iArr.length;
        if (i >= 47) {
            return Integer.MAX_VALUE;
        }
        return iArr[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgex)) {
            return false;
        }
        zzgex zzgexVar = (zzgex) obj;
        if (this.zzc != zzgexVar.zzc()) {
            return false;
        }
        if (this.zzc == 0) {
            return true;
        }
        int zzC = zzC();
        int zzC2 = zzgexVar.zzC();
        if (zzC != 0 && zzC2 != 0 && zzC != zzC2) {
            return false;
        }
        bg3 bg3Var = new bg3(this, null);
        zzges next = bg3Var.next();
        bg3 bg3Var2 = new bg3(zzgexVar, null);
        zzges next2 = bg3Var2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int zzc = next.zzc() - i;
            int zzc2 = next2.zzc() - i2;
            int min = Math.min(zzc, zzc2);
            if (!(i == 0 ? next.zzh(next2, i2, min) : next2.zzh(next, i, min))) {
                z = false;
                break;
            }
            i3 += min;
            int i4 = this.zzc;
            if (i3 < i4) {
                if (min == zzc) {
                    next = bg3Var.next();
                    i = 0;
                } else {
                    i += min;
                }
                if (min == zzc2) {
                    next2 = bg3Var2.next();
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

    @Override // com.google.android.gms.internal.ads.zzgex, java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
        return new yf3(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final byte zza(int i) {
        zzgex.zzD(i, this.zzc);
        return zzb(i);
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final byte zzb(int i) {
        int i2 = this.zzf;
        return i < i2 ? this.zzd.zzb(i) : this.zze.zzb(i - i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgex
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

    @Override // com.google.android.gms.internal.ads.zzgex
    public final int zzf() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean zzg() {
        return this.zzc >= zzG(this.zzg);
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final zzgex zzi(int i, int i2) {
        int zzE = zzgex.zzE(i, i2, this.zzc);
        if (zzE == 0) {
            return zzgex.f34110d;
        }
        if (zzE == this.zzc) {
            return this;
        }
        int i3 = this.zzf;
        if (i2 <= i3) {
            return this.zzd.zzi(i, i2);
        }
        if (i >= i3) {
            return this.zze.zzi(i - i3, i2 - i3);
        }
        zzgex zzgexVar = this.zzd;
        return new zzghy(zzgexVar.zzi(i, zzgexVar.zzc()), this.zze.zzi(0, i2 - this.zzf));
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final ByteBuffer zzj() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final void zzk(zc3 zc3Var) {
        this.zzd.zzk(zc3Var);
        this.zze.zzk(zc3Var);
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    protected final String zzl(Charset charset) {
        return new String(zzz(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final boolean zzm() {
        int zzn = this.zzd.zzn(0, 0, this.zzf);
        zzgex zzgexVar = this.zze;
        return zzgexVar.zzn(zzn, 0, zzgexVar.zzc()) == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final int zzn(int i, int i2, int i3) {
        int i4 = this.zzf;
        if (i2 + i3 <= i4) {
            return this.zzd.zzn(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.zze.zzn(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.zze.zzn(this.zzd.zzn(i, i2, i5), 0, i3 - i5);
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final int zzo(int i, int i2, int i3) {
        int i4 = this.zzf;
        if (i2 + i3 <= i4) {
            return this.zzd.zzo(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.zze.zzo(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.zze.zzo(this.zzd.zzo(i, i2, i5), 0, i3 - i5);
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final md3 zzp() {
        ArrayList<ByteBuffer> arrayList = new ArrayList();
        bg3 bg3Var = new bg3(this, null);
        while (bg3Var.hasNext()) {
            arrayList.add(bg3Var.next().zzj());
        }
        int i = md3.f26548b;
        boolean z = false;
        int i2 = 0;
        for (ByteBuffer byteBuffer : arrayList) {
            i2 += byteBuffer.remaining();
            z = byteBuffer.hasArray() ? z | true : byteBuffer.isDirect() ? z | true : z | true;
        }
        return z ? new C6586id3(arrayList, i2, true, null) : new ld3(new te3(arrayList), 4096, null);
    }

    @Override // com.google.android.gms.internal.ads.zzgex
    public final dd3 zzq() {
        return new yf3(this);
    }
}
