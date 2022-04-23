package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Map;
import p131c.p161d.p170b.p224d.p252g.p258f.C4550n1;
import p131c.p161d.p170b.p224d.p252g.p258f.C4616x1;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfp.class */
public final class zzfp<K, V> extends zzfc<K, V> {
    public static final zzfc<Object, Object> zza = new zzfp(null, new Object[0], 0);
    public final transient Object zzb;
    public final transient Object[] zzc;
    public final transient int zzd;

    public zzfp(Object obj, Object[] objArr, int i) {
        this.zzb = obj;
        this.zzc = objArr;
        this.zzd = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> zzfp<K, V> zza(int i, Object[] objArr) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (i == 0) {
            return (zzfp) zza;
        }
        int[] iArr = null;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        if (i == 1) {
            C4550n1.m25355a(objArr[0], objArr[1]);
            return new zzfp<>(null, objArr, 1);
        }
        zzeb.m9812b(i, objArr.length >> 1);
        int zza2 = zzfg.zza(i);
        if (i == 1) {
            C4550n1.m25355a(objArr[0], objArr[1]);
        } else {
            int i11 = zza2 - 1;
            if (zza2 <= 128) {
                byte[] bArr = new byte[zza2];
                Arrays.fill(bArr, (byte) -1);
                while (true) {
                    iArr = bArr;
                    if (i10 >= i) {
                        break;
                    }
                    i6 = i10 * 2;
                    Object obj = objArr[i6];
                    Object obj2 = objArr[i6 ^ 1];
                    C4550n1.m25355a(obj, obj2);
                    int a = C4616x1.m25175a(obj.hashCode());
                    while (true) {
                        i7 = a & i11;
                        int i12 = bArr[i7] & 255;
                        if (i12 == 255) {
                            break;
                        } else if (!objArr[i12].equals(obj)) {
                            a = i7 + 1;
                        } else {
                            throw zza(obj, obj2, objArr, i12);
                        }
                    }
                    bArr[i7] = (byte) i6;
                    i10++;
                }
            } else if (zza2 <= 32768) {
                short[] sArr = new short[zza2];
                Arrays.fill(sArr, (short) -1);
                while (true) {
                    iArr = sArr;
                    if (i8 >= i) {
                        break;
                    }
                    i4 = i8 * 2;
                    Object obj3 = objArr[i4];
                    Object obj4 = objArr[i4 ^ 1];
                    C4550n1.m25355a(obj3, obj4);
                    int a2 = C4616x1.m25175a(obj3.hashCode());
                    while (true) {
                        i5 = a2 & i11;
                        int i13 = sArr[i5] & 65535;
                        if (i13 == 65535) {
                            break;
                        } else if (!objArr[i13].equals(obj3)) {
                            a2 = i5 + 1;
                        } else {
                            throw zza(obj3, obj4, objArr, i13);
                        }
                    }
                    sArr[i5] = (short) i4;
                    i8++;
                }
            } else {
                int[] iArr2 = new int[zza2];
                Arrays.fill(iArr2, -1);
                while (true) {
                    iArr = iArr2;
                    if (i9 >= i) {
                        break;
                    }
                    i2 = i9 * 2;
                    Object obj5 = objArr[i2];
                    Object obj6 = objArr[i2 ^ 1];
                    C4550n1.m25355a(obj5, obj6);
                    int a3 = C4616x1.m25175a(obj5.hashCode());
                    while (true) {
                        i3 = a3 & i11;
                        int i14 = iArr2[i3];
                        if (i14 == -1) {
                            break;
                        } else if (!objArr[i14].equals(obj5)) {
                            a3 = i3 + 1;
                        } else {
                            throw zza(obj5, obj6, objArr, i14);
                        }
                    }
                    iArr2[i3] = i2;
                    i9++;
                }
            }
        }
        return new zzfp<>(iArr, objArr, i);
    }

    public static IllegalArgumentException zza(Object obj, Object obj2, Object[] objArr, int i) {
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

    @Override // com.google.android.gms.internal.measurement.zzfc, java.util.Map
    public final V get(Object obj) {
        Object obj2 = this.zzb;
        Object[] objArr = this.zzc;
        int i = this.zzd;
        if (obj == null) {
            return null;
        }
        if (i == 1) {
            if (objArr[0].equals(obj)) {
                return (V) objArr[1];
            }
            return null;
        } else if (obj2 == null) {
            return null;
        } else {
            if (obj2 instanceof byte[]) {
                byte[] bArr = (byte[]) obj2;
                int length = bArr.length;
                int a = C4616x1.m25175a(obj.hashCode());
                while (true) {
                    int i2 = a & (length - 1);
                    int i3 = bArr[i2] & 255;
                    if (i3 == 255) {
                        return null;
                    }
                    if (objArr[i3].equals(obj)) {
                        return (V) objArr[i3 ^ 1];
                    }
                    a = i2 + 1;
                }
            } else if (obj2 instanceof short[]) {
                short[] sArr = (short[]) obj2;
                int length2 = sArr.length;
                int a2 = C4616x1.m25175a(obj.hashCode());
                while (true) {
                    int i4 = a2 & (length2 - 1);
                    int i5 = sArr[i4] & 65535;
                    if (i5 == 65535) {
                        return null;
                    }
                    if (objArr[i5].equals(obj)) {
                        return (V) objArr[i5 ^ 1];
                    }
                    a2 = i4 + 1;
                }
            } else {
                int[] iArr = (int[]) obj2;
                int length3 = iArr.length;
                int a3 = C4616x1.m25175a(obj.hashCode());
                while (true) {
                    int i6 = a3 & (length3 - 1);
                    int i7 = iArr[i6];
                    if (i7 == -1) {
                        return null;
                    }
                    if (objArr[i7].equals(obj)) {
                        return (V) objArr[i7 ^ 1];
                    }
                    a3 = i6 + 1;
                }
            }
        }
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzfc
    public final zzfg<Map.Entry<K, V>> zza() {
        return new zzfo(this, this.zzc, 0, this.zzd);
    }

    @Override // com.google.android.gms.internal.measurement.zzfc
    public final zzfg<K> zzb() {
        return new zzfq(this, new zzft(this.zzc, 0, this.zzd));
    }

    @Override // com.google.android.gms.internal.measurement.zzfc
    public final zzey<V> zzc() {
        return new zzft(this.zzc, 1, this.zzd);
    }
}
