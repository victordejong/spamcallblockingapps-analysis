package com.google.android.gms.internal.ads;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.Arrays;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxq.class */
public final class zzdxq<K, V> extends zzdxh<K, V> {
    private static final zzdxh<Object, Object> zzhyf = new zzdxq(null, new Object[0], 0);
    private final transient int size;
    private final transient Object zzhyg;
    private final transient Object[] zzhyh;

    private zzdxq(Object obj, Object[] objArr, int i) {
        this.zzhyg = obj;
        this.zzhyh = objArr;
        this.size = i;
    }

    private static IllegalArgumentException zza(Object obj, Object obj2, Object[] objArr, int i) {
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(obj2);
        String valueOf3 = String.valueOf(objArr[i]);
        String valueOf4 = String.valueOf(objArr[i ^ 1]);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 39 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length());
        sb.append("Multiple entries with same key: ");
        sb.append(valueOf);
        sb.append(SimpleComparison.EQUAL_TO_OPERATION);
        sb.append(valueOf2);
        sb.append(" and ");
        sb.append(valueOf3);
        sb.append(SimpleComparison.EQUAL_TO_OPERATION);
        sb.append(valueOf4);
        return new IllegalArgumentException(sb.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> zzdxq<K, V> zzc(int i, Object[] objArr) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (i == 0) {
            return (zzdxq) zzhyf;
        }
        byte[] bArr = null;
        int i8 = 0;
        if (i == 1) {
            zzdwx.zzb(objArr[0], objArr[1]);
            return new zzdxq<>(null, objArr, 1);
        }
        zzdwl.zzu(i, objArr.length >> 1);
        int zzer = zzdxg.zzer(i);
        if (i == 1) {
            zzdwx.zzb(objArr[0], objArr[1]);
        } else {
            int i9 = zzer - 1;
            if (zzer <= 128) {
                byte[] bArr2 = new byte[zzer];
                Arrays.fill(bArr2, (byte) -1);
                while (true) {
                    bArr = bArr2;
                    if (i8 >= i) {
                        break;
                    }
                    i6 = i8 * 2;
                    Object obj = objArr[i6];
                    Object obj2 = objArr[i6 ^ 1];
                    zzdwx.zzb(obj, obj2);
                    int zzep = zzdwz.zzep(obj.hashCode());
                    while (true) {
                        i7 = zzep & i9;
                        int i10 = bArr2[i7] & 255;
                        if (i10 == 255) {
                            break;
                        } else if (objArr[i10].equals(obj)) {
                            throw zza(obj, obj2, objArr, i10);
                        } else {
                            zzep = i7 + 1;
                        }
                    }
                    bArr2[i7] = (byte) i6;
                    i8++;
                }
            } else if (zzer <= 32768) {
                short[] sArr = new short[zzer];
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
                    zzdwx.zzb(obj3, obj4);
                    int zzep2 = zzdwz.zzep(obj3.hashCode());
                    while (true) {
                        i5 = zzep2 & i9;
                        int i12 = sArr[i5] & 65535;
                        if (i12 == 65535) {
                            break;
                        } else if (objArr[i12].equals(obj3)) {
                            throw zza(obj3, obj4, objArr, i12);
                        } else {
                            zzep2 = i5 + 1;
                        }
                    }
                    sArr[i5] = (short) i4;
                    i11++;
                }
            } else {
                int[] iArr = new int[zzer];
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
                    zzdwx.zzb(obj5, obj6);
                    int zzep3 = zzdwz.zzep(obj5.hashCode());
                    while (true) {
                        i3 = zzep3 & i9;
                        char c = iArr[i3];
                        if (c == -1) {
                            break;
                        } else if (objArr[c].equals(obj5)) {
                            throw zza(obj5, obj6, objArr, c);
                        } else {
                            zzep3 = i3 + 1;
                        }
                    }
                    iArr[i3] = i2;
                    i13++;
                }
            }
        }
        return new zzdxq<>(bArr, objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.zzdxh, java.util.Map
    @NullableDecl
    public final V get(@NullableDecl Object obj) {
        Object obj2 = this.zzhyg;
        Object[] objArr = this.zzhyh;
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
                int zzep = zzdwz.zzep(obj.hashCode());
                while (true) {
                    int i2 = zzep & (length - 1);
                    int i3 = bArr[i2] & 255;
                    if (i3 == 255) {
                        return null;
                    }
                    if (objArr[i3].equals(obj)) {
                        return (V) objArr[i3 ^ 1];
                    }
                    zzep = i2 + 1;
                }
            } else if (obj2 instanceof short[]) {
                short[] sArr = (short[]) obj2;
                int length2 = sArr.length;
                int zzep2 = zzdwz.zzep(obj.hashCode());
                while (true) {
                    int i4 = zzep2 & (length2 - 1);
                    int i5 = sArr[i4] & 65535;
                    if (i5 == 65535) {
                        return null;
                    }
                    if (objArr[i5].equals(obj)) {
                        return (V) objArr[i5 ^ 1];
                    }
                    zzep2 = i4 + 1;
                }
            } else {
                int[] iArr = (int[]) obj2;
                int length3 = iArr.length;
                int zzep3 = zzdwz.zzep(obj.hashCode());
                while (true) {
                    int i6 = zzep3 & (length3 - 1);
                    int i7 = iArr[i6];
                    if (i7 == -1) {
                        return null;
                    }
                    if (objArr[i7].equals(obj)) {
                        return (V) objArr[i7 ^ 1];
                    }
                    zzep3 = i6 + 1;
                }
            }
        }
    }

    @Override // java.util.Map
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdxh
    final zzdxg<Map.Entry<K, V>> zzazp() {
        return new zzdxt(this, this.zzhyh, 0, this.size);
    }

    @Override // com.google.android.gms.internal.ads.zzdxh
    final zzdxg<K> zzazq() {
        return new zzdxv(this, new zzdxu(this.zzhyh, 0, this.size));
    }

    @Override // com.google.android.gms.internal.ads.zzdxh
    final zzdwy<V> zzazr() {
        return new zzdxu(this.zzhyh, 1, this.size);
    }
}
