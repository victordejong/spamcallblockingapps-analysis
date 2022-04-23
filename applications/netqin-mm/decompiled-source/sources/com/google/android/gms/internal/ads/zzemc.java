package com.google.android.gms.internal.ads;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import java.nio.charset.Charset;
import p131c.p161d.p170b.p224d.p252g.p253a.c90;
import p131c.p161d.p170b.p224d.p252g.p253a.d90;
import p131c.p161d.p170b.p224d.p252g.p253a.e90;
import p131c.p161d.p170b.p224d.p252g.p253a.g90;
import p131c.p161d.p170b.p224d.p252g.p253a.h70;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzemc.class */
public final class zzemc extends zzeip {
    public static final int[] zzimo = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT};
    public final int zzimp;
    public final zzeip zzimq;
    public final zzeip zzimr;
    public final int zzims;
    public final int zzimt;

    public zzemc(zzeip zzeipVar, zzeip zzeipVar2) {
        this.zzimq = zzeipVar;
        this.zzimr = zzeipVar2;
        int size = zzeipVar.size();
        this.zzims = size;
        this.zzimp = size + zzeipVar2.size();
        this.zzimt = Math.max(zzeipVar.zzbej(), zzeipVar2.zzbej()) + 1;
    }

    public /* synthetic */ zzemc(zzeip zzeipVar, zzeip zzeipVar2, c90 c90Var) {
        this(zzeipVar, zzeipVar2);
    }

    public static zzeip zza(zzeip zzeipVar, zzeip zzeipVar2) {
        if (zzeipVar2.size() == 0) {
            return zzeipVar;
        }
        if (zzeipVar.size() == 0) {
            return zzeipVar2;
        }
        int size = zzeipVar.size() + zzeipVar2.size();
        if (size < 128) {
            return zzb(zzeipVar, zzeipVar2);
        }
        if (zzeipVar instanceof zzemc) {
            zzemc zzemcVar = (zzemc) zzeipVar;
            if (zzemcVar.zzimr.size() + zzeipVar2.size() < 128) {
                return new zzemc(zzemcVar.zzimq, zzb(zzemcVar.zzimr, zzeipVar2));
            } else if (zzemcVar.zzimq.zzbej() > zzemcVar.zzimr.zzbej() && zzemcVar.zzbej() > zzeipVar2.zzbej()) {
                return new zzemc(zzemcVar.zzimq, new zzemc(zzemcVar.zzimr, zzeipVar2));
            }
        }
        return size >= zzhm(Math.max(zzeipVar.zzbej(), zzeipVar2.zzbej()) + 1) ? new zzemc(zzeipVar, zzeipVar2) : e90.m27050a(new e90(null), zzeipVar, zzeipVar2);
    }

    public static zzeip zzb(zzeip zzeipVar, zzeip zzeipVar2) {
        int size = zzeipVar.size();
        int size2 = zzeipVar2.size();
        byte[] bArr = new byte[size + size2];
        zzeipVar.zza(bArr, 0, 0, size);
        zzeipVar2.zza(bArr, 0, size, size2);
        return zzeip.zzv(bArr);
    }

    public static int zzhm(int i) {
        int[] iArr = zzimo;
        return i >= iArr.length ? MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT : iArr[i];
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzeip)) {
            return false;
        }
        zzeip zzeipVar = (zzeip) obj;
        if (this.zzimp != zzeipVar.size()) {
            return false;
        }
        if (this.zzimp == 0) {
            return true;
        }
        int zzbel = zzbel();
        int zzbel2 = zzeipVar.zzbel();
        if (zzbel != 0 && zzbel2 != 0 && zzbel != zzbel2) {
            return false;
        }
        d90 d90Var = new d90(this, null);
        zzeiw next = d90Var.next();
        d90 d90Var2 = new d90(zzeipVar, null);
        zzeiw next2 = d90Var2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int size = next.size() - i;
            int size2 = next2.size() - i2;
            int min = Math.min(size, size2);
            if (!(i == 0 ? next.zza(next2, i2, min) : next2.zza(next, i, min))) {
                return false;
            }
            i3 += min;
            int i4 = this.zzimp;
            if (i3 < i4) {
                if (min == size) {
                    i = 0;
                    next = d90Var.next();
                } else {
                    i += min;
                    next = next;
                }
                if (min == size2) {
                    next2 = d90Var2.next();
                    i2 = 0;
                } else {
                    i2 += min;
                }
            } else if (i3 == i4) {
                return true;
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final int size() {
        return this.zzimp;
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final String zza(Charset charset) {
        return new String(toByteArray(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final void zza(zzeim zzeimVar) throws IOException {
        this.zzimq.zza(zzeimVar);
        this.zzimr.zza(zzeimVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final void zzb(byte[] bArr, int i, int i2, int i3) {
        int i4 = this.zzims;
        if (i + i3 <= i4) {
            this.zzimq.zzb(bArr, i, i2, i3);
        } else if (i >= i4) {
            this.zzimr.zzb(bArr, i - i4, i2, i3);
        } else {
            int i5 = i4 - i;
            this.zzimq.zzb(bArr, i, i2, i5);
            this.zzimr.zzb(bArr, 0, i2 + i5, i3 - i5);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    /* renamed from: zzbee */
    public final zzeiu iterator() {
        return new c90(this);
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final boolean zzbeg() {
        int zzg = this.zzimq.zzg(0, 0, this.zzims);
        zzeip zzeipVar = this.zzimr;
        return zzeipVar.zzg(zzg, 0, zzeipVar.size()) == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final zzeja zzbeh() {
        return new h70(new g90(this));
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final int zzbej() {
        return this.zzimt;
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final boolean zzbek() {
        return this.zzimp >= zzhm(this.zzimt);
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final byte zzfu(int i) {
        zzeip.zzaa(i, this.zzimp);
        return zzfv(i);
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final byte zzfv(int i) {
        int i2 = this.zzims;
        return i < i2 ? this.zzimq.zzfv(i) : this.zzimr.zzfv(i - i2);
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final int zzg(int i, int i2, int i3) {
        int i4 = this.zzims;
        if (i2 + i3 <= i4) {
            return this.zzimq.zzg(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.zzimr.zzg(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.zzimr.zzg(this.zzimq.zzg(i, i2, i5), 0, i3 - i5);
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final int zzh(int i, int i2, int i3) {
        int i4 = this.zzims;
        if (i2 + i3 <= i4) {
            return this.zzimq.zzh(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.zzimr.zzh(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.zzimr.zzh(this.zzimq.zzh(i, i2, i5), 0, i3 - i5);
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    public final zzeip zzz(int i, int i2) {
        int zzi = zzeip.zzi(i, i2, this.zzimp);
        if (zzi == 0) {
            return zzeip.zzier;
        }
        if (zzi == this.zzimp) {
            return this;
        }
        int i3 = this.zzims;
        if (i2 <= i3) {
            return this.zzimq.zzz(i, i2);
        }
        if (i >= i3) {
            return this.zzimr.zzz(i - i3, i2 - i3);
        }
        zzeip zzeipVar = this.zzimq;
        return new zzemc(zzeipVar.zzz(i, zzeipVar.size()), this.zzimr.zzz(0, i2 - this.zzims));
    }
}
