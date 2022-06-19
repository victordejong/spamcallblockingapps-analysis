package com.google.android.gms.internal.mlkit_translate;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Arrays;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzz.class */
public final class zzz<K, V> extends zzu<K, V> {
    public static final zzu<Object, Object> zza = new zzz(null, new Object[0], 0);
    private final transient Object zzb;
    private final transient Object[] zzc;
    private final transient int zzd;

    private zzz(Object obj, Object[] objArr, int i) {
        this.zzb = obj;
        this.zzc = objArr;
        this.zzd = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> zzz<K, V> zza(int i, Object[] objArr) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (i == 0) {
            return (zzz) zza;
        }
        byte[] bArr = null;
        int i8 = 0;
        if (i == 1) {
            zzj.zza(objArr[0], objArr[1]);
            return new zzz<>(null, objArr, 1);
        }
        zzi.zzb(i, objArr.length >> 1);
        int zza2 = zzw.zza(i);
        if (i == 1) {
            zzj.zza(objArr[0], objArr[1]);
        } else {
            int i9 = zza2 - 1;
            if (zza2 <= 128) {
                byte[] bArr2 = new byte[zza2];
                Arrays.fill(bArr2, (byte) -1);
                while (true) {
                    bArr = bArr2;
                    if (i8 >= i) {
                        break;
                    }
                    i6 = i8 * 2;
                    Object obj = objArr[i6];
                    Object obj2 = objArr[i6 ^ 1];
                    zzj.zza(obj, obj2);
                    int zza3 = zzm.zza(obj.hashCode());
                    while (true) {
                        i7 = zza3 & i9;
                        int i10 = bArr2[i7] & 255;
                        if (i10 == 255) {
                            break;
                        } else if (objArr[i10].equals(obj)) {
                            throw zza(obj, obj2, objArr, i10);
                        } else {
                            zza3 = i7 + 1;
                        }
                    }
                    bArr2[i7] = (byte) i6;
                    i8++;
                }
            } else if (zza2 <= 32768) {
                short[] sArr = new short[zza2];
                Arrays.fill(sArr, (short) -1);
                int i11 = 0;
                while (true) {
                    bArr = sArr;
                    if (i11 >= i) {
                        break;
                    }
                    i4 = i11 * 2;
                    Object obj3 = objArr[i4];
                    Object obj4 = objArr[i4 ^ 1];
                    zzj.zza(obj3, obj4);
                    int zza4 = zzm.zza(obj3.hashCode());
                    while (true) {
                        i5 = zza4 & i9;
                        int i12 = sArr[i5] & 65535;
                        if (i12 == 65535) {
                            break;
                        } else if (objArr[i12].equals(obj3)) {
                            throw zza(obj3, obj4, objArr, i12);
                        } else {
                            zza4 = i5 + 1;
                        }
                    }
                    sArr[i5] = (short) i4;
                    i11++;
                }
            } else {
                int[] iArr = new int[zza2];
                Arrays.fill(iArr, -1);
                int i13 = 0;
                while (true) {
                    bArr = iArr;
                    if (i13 >= i) {
                        break;
                    }
                    i2 = i13 * 2;
                    Object obj5 = objArr[i2];
                    Object obj6 = objArr[i2 ^ 1];
                    zzj.zza(obj5, obj6);
                    int zza5 = zzm.zza(obj5.hashCode());
                    while (true) {
                        i3 = zza5 & i9;
                        char c = iArr[i3];
                        if (c == -1) {
                            break;
                        } else if (objArr[c].equals(obj5)) {
                            throw zza(obj5, obj6, objArr, c);
                        } else {
                            zza5 = i3 + 1;
                        }
                    }
                    iArr[i3] = i2;
                    i13++;
                }
            }
        }
        return new zzz<>(bArr, objArr, i);
    }

    private static IllegalArgumentException zza(Object obj, Object obj2, Object[] objArr, int i) {
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(obj2);
        String valueOf3 = String.valueOf(objArr[i]);
        String valueOf4 = String.valueOf(objArr[i ^ 1]);
        int length = valueOf.length();
        int length2 = valueOf2.length();
        return new IllegalArgumentException(C22128a.m8606k(C22128a.m8736A(valueOf4.length() + valueOf3.length() + length2 + length + 39, "Multiple entries with same key: ", valueOf, ContainerUtils.KEY_VALUE_DELIMITER, valueOf2), " and ", valueOf3, ContainerUtils.KEY_VALUE_DELIMITER, valueOf4));
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzu, java.util.Map
    public final V get(Object obj) {
        Object obj2 = this.zzb;
        Object[] objArr = this.zzc;
        int i = this.zzd;
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
                int zza2 = zzm.zza(obj.hashCode());
                while (true) {
                    int i2 = zza2 & (length - 1);
                    int i3 = bArr[i2] & 255;
                    if (i3 == 255) {
                        return null;
                    }
                    if (objArr[i3].equals(obj)) {
                        return (V) objArr[i3 ^ 1];
                    }
                    zza2 = i2 + 1;
                }
            } else if (obj2 instanceof short[]) {
                short[] sArr = (short[]) obj2;
                int length2 = sArr.length;
                int zza3 = zzm.zza(obj.hashCode());
                while (true) {
                    int i4 = zza3 & (length2 - 1);
                    int i5 = sArr[i4] & 65535;
                    if (i5 == 65535) {
                        return null;
                    }
                    if (objArr[i5].equals(obj)) {
                        return (V) objArr[i5 ^ 1];
                    }
                    zza3 = i4 + 1;
                }
            } else {
                int[] iArr = (int[]) obj2;
                int length3 = iArr.length;
                int zza4 = zzm.zza(obj.hashCode());
                while (true) {
                    int i6 = zza4 & (length3 - 1);
                    int i7 = iArr[i6];
                    if (i7 == -1) {
                        return null;
                    }
                    if (objArr[i7].equals(obj)) {
                        return (V) objArr[i7 ^ 1];
                    }
                    zza4 = i6 + 1;
                }
            }
        }
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzu
    public final zzw<Map.Entry<K, V>> zzb() {
        return new zzac(this, this.zzc, 0, this.zzd);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzu
    public final zzw<K> zzc() {
        return new zzae(this, new zzad(this.zzc, 0, this.zzd));
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzu
    public final zzl<V> zzd() {
        return new zzad(this.zzc, 1, this.zzd);
    }
}
