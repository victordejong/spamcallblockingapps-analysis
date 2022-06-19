package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxj.class */
public final class zzdxj<E> extends zzdxb<E> {
    private int zzahx;
    @NullableDecl
    private Object[] zzhya;

    public zzdxj() {
        super(4);
    }

    public zzdxj(int i) {
        super(i);
        this.zzhya = new Object[zzdxg.zzer(i)];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzdxa
    public final /* synthetic */ zzdxa zza(Iterator it) {
        zzdwl.checkNotNull(it);
        while (it.hasNext()) {
            zzaa(it.next());
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdxb, com.google.android.gms.internal.ads.zzdxa
    public final /* synthetic */ zzdxa zzaa(Object obj) {
        zzdwl.checkNotNull(obj);
        if (this.zzhya != null) {
            int zzer = zzdxg.zzer(this.size);
            Object[] objArr = this.zzhya;
            if (zzer <= objArr.length) {
                int length = objArr.length;
                int hashCode = obj.hashCode();
                int zzep = zzdwz.zzep(hashCode);
                while (true) {
                    int i = zzep & (length - 1);
                    Object[] objArr2 = this.zzhya;
                    Object obj2 = objArr2[i];
                    if (obj2 != null) {
                        if (obj2.equals(obj)) {
                            break;
                        }
                        zzep = i + 1;
                    } else {
                        objArr2[i] = obj;
                        this.zzahx += hashCode;
                        super.zzaa(obj);
                        break;
                    }
                }
                return this;
            }
        }
        this.zzhya = null;
        super.zzaa(obj);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzdxb
    public final /* synthetic */ zzdxb zzab(Object obj) {
        return (zzdxj) zzaa(obj);
    }

    public final zzdxg<E> zzazs() {
        zzdxx zzdxxVar;
        zzdxg<E> zza;
        boolean zzw;
        int i = this.size;
        if (i != 0) {
            if (i == 1) {
                return zzdxg.zzad(this.zzhxo[0]);
            }
            if (this.zzhya == null || zzdxg.zzer(this.size) != this.zzhya.length) {
                zza = zzdxg.zza(this.size, this.zzhxo);
                zzdxxVar = zza;
                this.size = zzdxxVar.size();
            } else {
                zzw = zzdxg.zzw(this.size, this.zzhxo.length);
                Object[] copyOf = zzw ? Arrays.copyOf(this.zzhxo, this.size) : this.zzhxo;
                int i2 = this.zzahx;
                Object[] objArr = this.zzhya;
                zzdxxVar = new zzdxx(copyOf, i2, objArr, objArr.length - 1, this.size);
            }
            this.zzhxp = true;
            this.zzhya = null;
            return zzdxxVar;
        }
        return zzdxx.zzhyn;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzdxb, com.google.android.gms.internal.ads.zzdxa
    public final /* synthetic */ zzdxa zzg(Iterable iterable) {
        zzdwl.checkNotNull(iterable);
        if (this.zzhya != null) {
            for (Object obj : iterable) {
                zzaa(obj);
            }
        } else {
            super.zzg(iterable);
        }
        return this;
    }
}
