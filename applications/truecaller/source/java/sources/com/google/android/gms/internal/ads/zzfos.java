package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfos.class */
public final class zzfos<E> extends zzfoc<E> {
    public Object[] zzd;
    private int zze;

    public zzfos() {
        super(4);
    }

    public zzfos(int i) {
        super(i);
        this.zzd = new Object[zzfot.zzl(i)];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzfoc, com.google.android.gms.internal.ads.zzfod
    public final /* bridge */ /* synthetic */ zzfod zzc(Object obj) {
        zze((zzfos<E>) obj);
        return this;
    }

    public final zzfos<E> zze(E e) {
        Objects.requireNonNull(e);
        if (this.zzd != null) {
            int zzl = zzfot.zzl(this.zzb);
            int length = this.zzd.length;
            if (zzl <= length) {
                int hashCode = e.hashCode();
                int zza = zzfob.zza(hashCode);
                while (true) {
                    int i = zza & (length - 1);
                    Object[] objArr = this.zzd;
                    Object obj = objArr[i];
                    if (obj != null) {
                        if (obj.equals(e)) {
                            break;
                        }
                        zza = i + 1;
                    } else {
                        objArr[i] = e;
                        this.zze += hashCode;
                        super.zza(e);
                        break;
                    }
                }
                return this;
            }
        }
        this.zzd = null;
        super.zza(e);
        return this;
    }

    public final zzfos<E> zzf(Iterable<? extends E> iterable) {
        if (this.zzd != null) {
            for (E e : iterable) {
                zze((zzfos<E>) e);
            }
        } else {
            super.zzb(iterable);
        }
        return this;
    }

    public final zzfot<E> zzg() {
        zzfqd zzfqdVar;
        zzfot<E> zzp;
        boolean zzq;
        int i = this.zzb;
        if (i != 0) {
            if (i == 1) {
                Object obj = this.zza[0];
                obj.getClass();
                return new zzfqi(obj);
            }
            if (this.zzd == null || zzfot.zzl(i) != this.zzd.length) {
                zzp = zzfot.zzp(this.zzb, this.zza);
                zzfqdVar = zzp;
                this.zzb = zzfqdVar.size();
            } else {
                zzq = zzfot.zzq(this.zzb, this.zza.length);
                Object[] copyOf = zzq ? Arrays.copyOf(this.zza, this.zzb) : this.zza;
                int i2 = this.zze;
                Object[] objArr = this.zzd;
                zzfqdVar = new zzfqd(copyOf, i2, objArr, objArr.length - 1, this.zzb);
            }
            this.zzc = true;
            this.zzd = null;
            return zzfqdVar;
        }
        return zzfqd.zza;
    }
}
