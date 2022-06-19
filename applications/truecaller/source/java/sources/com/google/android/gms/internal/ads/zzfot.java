package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfot.class */
public abstract class zzfot<E> extends zzfoe<E> implements Set<E> {
    private transient zzfoj<E> zza;

    public static <E> zzfot<E> zzh() {
        return zzfqd.zza;
    }

    @SafeVarargs
    public static <E> zzfot<E> zzi(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
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

    public static int zzl(int i) {
        int max = Math.max(i, 2);
        if (max >= 751619276) {
            zzflx.zza(max < 1073741824, "collection too large");
            return 1073741824;
        }
        int highestOneBit = Integer.highestOneBit(max - 1);
        do {
            highestOneBit += highestOneBit;
        } while (highestOneBit * 0.7d < max);
        return highestOneBit;
    }

    public static <E> zzfos<E> zzo(int i) {
        return new zzfos<>(i);
    }

    public static <E> zzfot<E> zzp(int i, Object... objArr) {
        if (i != 0) {
            if (i == 1) {
                Object obj = objArr[0];
                obj.getClass();
                return new zzfqi(obj);
            }
            int zzl = zzl(i);
            Object[] objArr2 = new Object[zzl];
            int i2 = zzl - 1;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                Object obj2 = objArr[i5];
                zzfpv.zzb(obj2, i5);
                int hashCode = obj2.hashCode();
                int zza = zzfob.zza(hashCode);
                while (true) {
                    int i6 = zza & i2;
                    Object obj3 = objArr2[i6];
                    if (obj3 == null) {
                        objArr[i3] = obj2;
                        objArr2[i6] = obj2;
                        i4 += hashCode;
                        i3++;
                        break;
                    } else if (obj3.equals(obj2)) {
                        break;
                    } else {
                        zza++;
                    }
                }
            }
            Arrays.fill(objArr, i3, i, (Object) null);
            if (i3 == 1) {
                Object obj4 = objArr[0];
                obj4.getClass();
                return new zzfqi(obj4, i4);
            } else if (zzl(i3) < zzl / 2) {
                return zzp(i3, objArr);
            } else {
                Object[] objArr3 = objArr;
                if (zzq(i3, objArr.length)) {
                    objArr3 = Arrays.copyOf(objArr, i3);
                }
                return new zzfqd(objArr3, i4, objArr2, i2, i3);
            }
        }
        return zzfqd.zza;
    }

    public static boolean zzq(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzfot) && zzm() && ((zzfot) obj).zzm() && hashCode() != obj.hashCode()) {
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
        return zzfqh.zza(this);
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    /* renamed from: zza */
    public abstract zzfql<E> iterator();

    @Override // com.google.android.gms.internal.ads.zzfoe
    public zzfoj<E> zze() {
        zzfoj<E> zzfojVar = this.zza;
        zzfoj<E> zzfojVar2 = zzfojVar;
        if (zzfojVar == null) {
            zzfojVar2 = zzn();
            this.zza = zzfojVar2;
        }
        return zzfojVar2;
    }

    public boolean zzm() {
        return false;
    }

    public zzfoj<E> zzn() {
        return zzfoj.zzr(toArray());
    }
}
