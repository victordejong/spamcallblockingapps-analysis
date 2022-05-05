package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfp.class */
public final class zzfp<K, V> extends zzfc<K, V> {

    /* renamed from: l */
    static final zzfc<Object, Object> f8427l = new zzfp(null, new Object[0], 0);

    /* renamed from: i */
    private final transient Object f8428i;

    /* renamed from: j */
    private final transient Object[] f8429j;

    /* renamed from: k */
    private final transient int f8430k;

    private zzfp(Object obj, Object[] objArr, int i) {
        this.f8428i = obj;
        this.f8429j = objArr;
        this.f8430k = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public static <K, V> zzfp<K, V> m12681f(int i, Object[] objArr) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (i == 0) {
            return (zzfp) f8427l;
        }
        int[] iArr = null;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        if (i == 1) {
            zzen.m12708a(objArr[0], objArr[1]);
            return new zzfp<>(null, objArr, 1);
        }
        zzeb.m12736g(i, objArr.length >> 1);
        int j = zzfg.m12689j(i);
        if (i == 1) {
            zzen.m12708a(objArr[0], objArr[1]);
        } else {
            int i11 = j - 1;
            if (j <= 128) {
                byte[] bArr = new byte[j];
                Arrays.fill(bArr, (byte) -1);
                while (true) {
                    iArr = bArr;
                    if (i10 >= i) {
                        break;
                    }
                    i6 = i10 * 2;
                    Object obj = objArr[i6];
                    Object obj2 = objArr[i6 ^ 1];
                    zzen.m12708a(obj, obj2);
                    int a = zzez.m12698a(obj.hashCode());
                    while (true) {
                        i7 = a & i11;
                        int i12 = bArr[i7] & 255;
                        if (i12 == 255) {
                            break;
                        } else if (!objArr[i12].equals(obj)) {
                            a = i7 + 1;
                        } else {
                            throw m12680g(obj, obj2, objArr, i12);
                        }
                    }
                    bArr[i7] = (byte) i6;
                    i10++;
                }
            } else if (j <= 32768) {
                short[] sArr = new short[j];
                Arrays.fill(sArr, (short) -1);
                while (true) {
                    iArr = sArr;
                    if (i8 >= i) {
                        break;
                    }
                    i4 = i8 * 2;
                    Object obj3 = objArr[i4];
                    Object obj4 = objArr[i4 ^ 1];
                    zzen.m12708a(obj3, obj4);
                    int a2 = zzez.m12698a(obj3.hashCode());
                    while (true) {
                        i5 = a2 & i11;
                        int i13 = sArr[i5] & 65535;
                        if (i13 == 65535) {
                            break;
                        } else if (!objArr[i13].equals(obj3)) {
                            a2 = i5 + 1;
                        } else {
                            throw m12680g(obj3, obj4, objArr, i13);
                        }
                    }
                    sArr[i5] = (short) i4;
                    i8++;
                }
            } else {
                int[] iArr2 = new int[j];
                Arrays.fill(iArr2, -1);
                while (true) {
                    iArr = iArr2;
                    if (i9 >= i) {
                        break;
                    }
                    i2 = i9 * 2;
                    Object obj5 = objArr[i2];
                    Object obj6 = objArr[i2 ^ 1];
                    zzen.m12708a(obj5, obj6);
                    int a3 = zzez.m12698a(obj5.hashCode());
                    while (true) {
                        i3 = a3 & i11;
                        int i14 = iArr2[i3];
                        if (i14 == -1) {
                            break;
                        } else if (!objArr[i14].equals(obj5)) {
                            a3 = i3 + 1;
                        } else {
                            throw m12680g(obj5, obj6, objArr, i14);
                        }
                    }
                    iArr2[i3] = i2;
                    i9++;
                }
            }
        }
        return new zzfp<>(iArr, objArr, i);
    }

    /* renamed from: g */
    private static IllegalArgumentException m12680g(Object obj, Object obj2, Object[] objArr, int i) {
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

    @Override // com.google.android.gms.internal.measurement.zzfc
    /* renamed from: a */
    final zzfg<Map.Entry<K, V>> mo12684a() {
        return new zzfo(this, this.f8429j, 0, this.f8430k);
    }

    @Override // com.google.android.gms.internal.measurement.zzfc
    /* renamed from: b */
    final zzfg<K> mo12683b() {
        return new zzfq(this, new zzft(this.f8429j, 0, this.f8430k));
    }

    @Override // com.google.android.gms.internal.measurement.zzfc
    /* renamed from: e */
    final zzey<V> mo12682e() {
        return new zzft(this.f8429j, 1, this.f8430k);
    }

    @Override // com.google.android.gms.internal.measurement.zzfc, java.util.Map
    @NullableDecl
    public final V get(@NullableDecl Object obj) {
        Object obj2 = this.f8428i;
        Object[] objArr = this.f8429j;
        int i = this.f8430k;
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
                int a = zzez.m12698a(obj.hashCode());
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
                int a2 = zzez.m12698a(obj.hashCode());
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
                int a3 = zzez.m12698a(obj.hashCode());
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
        return this.f8430k;
    }
}
