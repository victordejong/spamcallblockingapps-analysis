package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfqc.class */
public final class zzfqc<K, V> extends zzfon<K, V> {

    /* renamed from: g */
    static final zzfon<Object, Object> f34090g = new zzfqc(null, new Object[0], 0);

    /* renamed from: h */
    private final transient Object f34091h;

    /* renamed from: i */
    final transient Object[] f34092i;

    /* renamed from: j */
    private final transient int f34093j;

    private zzfqc(Object obj, Object[] objArr, int i) {
        this.f34091h = obj;
        this.f34092i = objArr;
        this.f34093j = i;
    }

    /* renamed from: a */
    private static IllegalArgumentException m7860a(Object obj, Object obj2, Object[] objArr, int i) {
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(obj2);
        String valueOf3 = String.valueOf(objArr[i]);
        String valueOf4 = String.valueOf(objArr[i ^ 1]);
        StringBuilder sb = new StringBuilder(valueOf.length() + 39 + valueOf2.length() + valueOf3.length() + valueOf4.length());
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

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> zzfqc<K, V> zzh(int i, Object[] objArr) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (i == 0) {
            return (zzfqc) f34090g;
        }
        byte[] bArr = null;
        int i8 = 0;
        if (i == 1) {
            Object obj = objArr[0];
            obj.getClass();
            Object obj2 = objArr[1];
            obj2.getClass();
            gw2.m14795a(obj, obj2);
            return new zzfqc<>(null, objArr, 1);
        }
        xu2.m9051f(i, objArr.length >> 1, "index");
        int zzl = zzfot.zzl(i);
        if (i == 1) {
            Object obj3 = objArr[0];
            obj3.getClass();
            Object obj4 = objArr[1];
            obj4.getClass();
            gw2.m14795a(obj3, obj4);
        } else {
            int i9 = zzl - 1;
            if (zzl <= 128) {
                byte[] bArr2 = new byte[zzl];
                Arrays.fill(bArr2, (byte) -1);
                while (true) {
                    bArr = bArr2;
                    if (i8 >= i) {
                        break;
                    }
                    i6 = i8 + i8;
                    Object obj5 = objArr[i6];
                    obj5.getClass();
                    Object obj6 = objArr[i6 ^ 1];
                    obj6.getClass();
                    gw2.m14795a(obj5, obj6);
                    int m9030a = xw2.m9030a(obj5.hashCode());
                    while (true) {
                        i7 = m9030a & i9;
                        int i10 = bArr2[i7] & 255;
                        if (i10 == 255) {
                            break;
                        } else if (obj5.equals(objArr[i10])) {
                            throw m7860a(obj5, obj6, objArr, i10);
                        } else {
                            m9030a = i7 + 1;
                        }
                    }
                    bArr2[i7] = (byte) i6;
                    i8++;
                }
            } else if (zzl <= 32768) {
                short[] sArr = new short[zzl];
                Arrays.fill(sArr, (short) -1);
                int i11 = 0;
                while (true) {
                    bArr = sArr;
                    if (i11 >= i) {
                        break;
                    }
                    i4 = i11 + i11;
                    Object obj7 = objArr[i4];
                    obj7.getClass();
                    Object obj8 = objArr[i4 ^ 1];
                    obj8.getClass();
                    gw2.m14795a(obj7, obj8);
                    int m9030a2 = xw2.m9030a(obj7.hashCode());
                    while (true) {
                        i5 = m9030a2 & i9;
                        char c = (char) sArr[i5];
                        if (c == 65535) {
                            break;
                        } else if (obj7.equals(objArr[c])) {
                            throw m7860a(obj7, obj8, objArr, c);
                        } else {
                            m9030a2 = i5 + 1;
                        }
                    }
                    sArr[i5] = (short) i4;
                    i11++;
                }
            } else {
                int[] iArr = new int[zzl];
                Arrays.fill(iArr, -1);
                int i12 = 0;
                while (true) {
                    bArr = iArr;
                    if (i12 >= i) {
                        break;
                    }
                    i2 = i12 + i12;
                    Object obj9 = objArr[i2];
                    obj9.getClass();
                    Object obj10 = objArr[i2 ^ 1];
                    obj10.getClass();
                    gw2.m14795a(obj9, obj10);
                    int m9030a3 = xw2.m9030a(obj9.hashCode());
                    while (true) {
                        i3 = m9030a3 & i9;
                        char c2 = iArr[i3];
                        if (c2 == -1) {
                            break;
                        } else if (obj9.equals(objArr[c2])) {
                            throw m7860a(obj9, obj10, objArr, c2);
                        } else {
                            m9030a3 = i3 + 1;
                        }
                    }
                    iArr[i3] = i2;
                    i12++;
                }
            }
        }
        return new zzfqc<>(bArr, objArr, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0126 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0128  */
    @Override // com.google.android.gms.internal.ads.zzfon, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get(java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfqc.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public final int size() {
        return this.f34093j;
    }

    @Override // com.google.android.gms.internal.ads.zzfon
    final zzfot<Map.Entry<K, V>> zzd() {
        return new zzfpz(this, this.f34092i, 0, this.f34093j);
    }

    @Override // com.google.android.gms.internal.ads.zzfon
    final zzfot<K> zze() {
        return new zzfqa(this, new zzfqb(this.f34092i, 0, this.f34093j));
    }

    @Override // com.google.android.gms.internal.ads.zzfon
    final zzfoe<V> zzg() {
        return new zzfqb(this.f34092i, 1, this.f34093j);
    }
}
