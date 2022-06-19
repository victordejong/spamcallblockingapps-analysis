package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzftc.class */
public abstract class zzftc<E> extends zzfsn<E> implements Set<E> {
    @CheckForNull
    private transient zzfss<E> zza;

    public static int zzh(int i) {
        int max = Math.max(i, 2);
        if (max >= 751619276) {
            zzfqg.zze(max < 1073741824, "collection too large");
            return 1073741824;
        }
        int highestOneBit = Integer.highestOneBit(max - 1);
        do {
            highestOneBit += highestOneBit;
        } while (highestOneBit * 0.7d < max);
        return highestOneBit;
    }

    public static <E> zzftb<E> zzj(int i) {
        return new zzftb<>(i);
    }

    public static <E> zzftc<E> zzl() {
        return zzfum.zza;
    }

    @SafeVarargs
    public static <E> zzftc<E> zzm(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        Object[] objArr = new Object[11];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        System.arraycopy(eArr, 0, objArr, 6, 5);
        return zzp(11, objArr);
    }

    public static <E> zzftc<E> zzp(int i, Object... objArr) {
        if (i != 0) {
            if (i == 1) {
                Object obj = objArr[0];
                Objects.requireNonNull(obj);
                return new zzfur(obj);
            }
            int zzh = zzh(i);
            Object[] objArr2 = new Object[zzh];
            int i2 = zzh - 1;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                Object obj2 = objArr[i5];
                zzfue.zza(obj2, i5);
                int hashCode = obj2.hashCode();
                int zza = zzfsk.zza(hashCode);
                while (true) {
                    int i6 = zza & i2;
                    Object obj3 = objArr2[i6];
                    if (obj3 == null) {
                        objArr[i4] = obj2;
                        objArr2[i6] = obj2;
                        i3 += hashCode;
                        i4++;
                        break;
                    } else if (obj3.equals(obj2)) {
                        break;
                    } else {
                        zza++;
                    }
                }
            }
            Arrays.fill(objArr, i4, i, (Object) null);
            if (i4 == 1) {
                Object obj4 = objArr[0];
                Objects.requireNonNull(obj4);
                return new zzfur(obj4);
            } else if (zzh(i4) < zzh / 2) {
                return zzp(i4, objArr);
            } else {
                Object[] objArr3 = objArr;
                if (zzq(i4, objArr.length)) {
                    objArr3 = Arrays.copyOf(objArr, i4);
                }
                return new zzfum(objArr3, i3, objArr2, i2, i4);
            }
        }
        return zzfum.zza;
    }

    public static boolean zzq(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(@CheckForNull Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzftc) && zzo() && ((zzftc) obj).zzo() && hashCode() != obj.hashCode()) {
            return false;
        }
        if (obj != this) {
            if (obj instanceof Set) {
                Set set = (Set) obj;
                try {
                    if (size() == set.size()) {
                        if (containsAll(set)) {
                            return true;
                        }
                    }
                } catch (ClassCastException | NullPointerException e) {
                }
            }
            z = false;
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzfuq.zza(this);
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public zzfss<E> zzd() {
        zzfss<E> zzfssVar = this.zza;
        zzfss<E> zzfssVar2 = zzfssVar;
        if (zzfssVar == null) {
            zzfssVar2 = zzi();
            this.zza = zzfssVar2;
        }
        return zzfssVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    /* renamed from: zze */
    public abstract zzfuu<E> iterator();

    public zzfss<E> zzi() {
        return zzfss.zzj(toArray());
    }

    public boolean zzo() {
        return false;
    }
}
