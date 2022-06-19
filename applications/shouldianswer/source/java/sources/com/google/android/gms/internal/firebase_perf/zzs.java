package com.google.android.gms.internal.firebase_perf;

import java.util.Arrays;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzs.class */
public final class zzs<K, V> extends zzo<K, V> {
    private static final zzo<Object, Object> zzq = new zzs(null, new Object[0], 0);
    private final transient int size;
    private final transient Object[] zzf;
    private final transient Object zzr;

    private zzs(Object obj, Object[] objArr, int i) {
        this.zzr = obj;
        this.zzf = objArr;
        this.size = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> zzs<K, V> zza(int i, Object[] objArr) {
        byte[] bArr;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (i == 0) {
            return (zzs) zzq;
        }
        if (i == 1) {
            zzi.zza(objArr[0], objArr[1]);
            return new zzs<>(null, objArr, 1);
        }
        zzd.zzb(i, objArr.length >> 1);
        int max = Math.max(i, 2);
        int i8 = 1073741824;
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            while (true) {
                int i9 = highestOneBit << 1;
                i8 = i9;
                if (i9 * 0.7d >= max) {
                    break;
                }
                highestOneBit = i9;
            }
        } else {
            if (!(max < 1073741824)) {
                throw new IllegalArgumentException("collection too large");
            }
        }
        if (i == 1) {
            zzi.zza(objArr[0], objArr[1]);
            bArr = null;
        } else {
            int i10 = i8 - 1;
            if (i8 <= 128) {
                byte[] bArr2 = new byte[i8];
                Arrays.fill(bArr2, (byte) -1);
                int i11 = 0;
                while (true) {
                    bArr = bArr2;
                    if (i11 >= i) {
                        break;
                    }
                    i6 = i11 * 2;
                    Object obj = objArr[i6];
                    Object obj2 = objArr[i6 ^ 1];
                    zzi.zza(obj, obj2);
                    int zza = zzh.zza(obj.hashCode());
                    while (true) {
                        i7 = zza & i10;
                        int i12 = bArr2[i7] & 255;
                        if (i12 == 255) {
                            break;
                        } else if (objArr[i12].equals(obj)) {
                            throw zza(obj, obj2, objArr, i12);
                        } else {
                            zza = i7 + 1;
                        }
                    }
                    bArr2[i7] = (byte) i6;
                    i11++;
                }
            } else if (i8 <= 32768) {
                short[] sArr = new short[i8];
                Arrays.fill(sArr, (short) -1);
                int i13 = 0;
                while (true) {
                    bArr = sArr;
                    if (i13 >= i) {
                        break;
                    }
                    i4 = i13 * 2;
                    Object obj3 = objArr[i4];
                    Object obj4 = objArr[i4 ^ 1];
                    zzi.zza(obj3, obj4);
                    int zza2 = zzh.zza(obj3.hashCode());
                    while (true) {
                        i5 = zza2 & i10;
                        int i14 = sArr[i5] & 65535;
                        if (i14 == 65535) {
                            break;
                        } else if (objArr[i14].equals(obj3)) {
                            throw zza(obj3, obj4, objArr, i14);
                        } else {
                            zza2 = i5 + 1;
                        }
                    }
                    sArr[i5] = (short) i4;
                    i13++;
                }
            } else {
                int[] iArr = new int[i8];
                Arrays.fill(iArr, -1);
                int i15 = 0;
                while (true) {
                    bArr = iArr;
                    if (i15 >= i) {
                        break;
                    }
                    i2 = i15 * 2;
                    Object obj5 = objArr[i2];
                    Object obj6 = objArr[i2 ^ 1];
                    zzi.zza(obj5, obj6);
                    int zza3 = zzh.zza(obj5.hashCode());
                    while (true) {
                        i3 = zza3 & i10;
                        char c = iArr[i3];
                        if (c == -1) {
                            break;
                        } else if (objArr[c].equals(obj5)) {
                            throw zza(obj5, obj6, objArr, c);
                        } else {
                            zza3 = i3 + 1;
                        }
                    }
                    iArr[i3] = i2;
                    i15++;
                }
            }
        }
        return new zzs<>(bArr, objArr, i);
    }

    private static IllegalArgumentException zza(Object obj, Object obj2, Object[] objArr, int i) {
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(obj2);
        String valueOf3 = String.valueOf(objArr[i]);
        String valueOf4 = String.valueOf(objArr[i ^ 1]);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 39 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length());
        sb.append("Multiple entries with same key: ");
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        sb.append(" and ");
        sb.append(valueOf3);
        sb.append("=");
        sb.append(valueOf4);
        return new IllegalArgumentException(sb.toString());
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzo, java.util.Map
    @NullableDecl
    public final V get(@NullableDecl Object obj) {
        Object obj2 = this.zzr;
        Object[] objArr = this.zzf;
        int i = this.size;
        if (obj == null) {
            return null;
        }
        if (i == 1) {
            if (!objArr[0].equals(obj)) {
                return null;
            }
            return (V) objArr[1];
        } else if (obj2 == null) {
            return null;
        } else {
            if (obj2 instanceof byte[]) {
                byte[] bArr = (byte[]) obj2;
                int length = bArr.length;
                int zza = zzh.zza(obj.hashCode());
                while (true) {
                    int i2 = zza & (length - 1);
                    int i3 = bArr[i2] & 255;
                    if (i3 == 255) {
                        return null;
                    }
                    if (objArr[i3].equals(obj)) {
                        return (V) objArr[i3 ^ 1];
                    }
                    zza = i2 + 1;
                }
            } else if (obj2 instanceof short[]) {
                short[] sArr = (short[]) obj2;
                int length2 = sArr.length;
                int zza2 = zzh.zza(obj.hashCode());
                while (true) {
                    int i4 = zza2 & (length2 - 1);
                    int i5 = sArr[i4] & 65535;
                    if (i5 == 65535) {
                        return null;
                    }
                    if (objArr[i5].equals(obj)) {
                        return (V) objArr[i5 ^ 1];
                    }
                    zza2 = i4 + 1;
                }
            } else {
                int[] iArr = (int[]) obj2;
                int length3 = iArr.length;
                int zza3 = zzh.zza(obj.hashCode());
                while (true) {
                    int i6 = zza3 & (length3 - 1);
                    int i7 = iArr[i6];
                    if (i7 == -1) {
                        return null;
                    }
                    if (objArr[i7].equals(obj)) {
                        return (V) objArr[i7 ^ 1];
                    }
                    zza3 = i6 + 1;
                }
            }
        }
    }

    @Override // java.util.Map
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzo
    final zzq<Map.Entry<K, V>> zzh() {
        return new zzr(this, this.zzf, 0, this.size);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzo
    final zzq<K> zzi() {
        return new zzt(this, new zzw(this.zzf, 0, this.size));
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzo
    final zzk<V> zzj() {
        return new zzw(this.zzf, 1, this.size);
    }
}
