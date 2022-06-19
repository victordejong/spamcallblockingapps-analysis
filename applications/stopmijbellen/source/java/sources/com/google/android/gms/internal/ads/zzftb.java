package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzftb.class */
public final class zzftb<E> extends zzfsl<E> {
    @CheckForNull
    public Object[] zzd;
    private int zze;

    public zzftb() {
        super(4);
    }

    public zzftb(int i) {
        super(i);
        this.zzd = new Object[zzftc.zzh(i)];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzfsl, com.google.android.gms.internal.ads.zzfsm
    public final /* bridge */ /* synthetic */ zzfsm zzb(Object obj) {
        zze((zzftb<E>) obj);
        return this;
    }

    public final zzftb<E> zze(E e) {
        Objects.requireNonNull(e);
        if (this.zzd != null) {
            int zzh = zzftc.zzh(this.zzb);
            int length = this.zzd.length;
            if (zzh <= length) {
                int hashCode = e.hashCode();
                int zza = zzfsk.zza(hashCode);
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

    public final zzftb<E> zzf(Iterable<? extends E> iterable) {
        if (this.zzd != null) {
            for (E e : iterable) {
                zze((zzftb<E>) e);
            }
        } else {
            super.zzc(iterable);
        }
        return this;
    }

    public final zzftc<E> zzg() {
        zzfum zzfumVar;
        zzftc<E> zzp;
        boolean zzq;
        int i = this.zzb;
        if (i != 0) {
            if (i == 1) {
                Object obj = this.zza[0];
                Objects.requireNonNull(obj);
                return new zzfur(obj);
            }
            if (this.zzd == null || zzftc.zzh(i) != this.zzd.length) {
                zzp = zzftc.zzp(this.zzb, this.zza);
                zzfumVar = zzp;
                this.zzb = zzfumVar.size();
            } else {
                zzq = zzftc.zzq(this.zzb, this.zza.length);
                Object[] copyOf = zzq ? Arrays.copyOf(this.zza, this.zzb) : this.zza;
                int i2 = this.zze;
                Object[] objArr = this.zzd;
                zzfumVar = new zzfum(copyOf, i2, objArr, objArr.length - 1, this.zzb);
            }
            this.zzc = true;
            this.zzd = null;
            return zzfumVar;
        }
        return zzfum.zza;
    }
}
