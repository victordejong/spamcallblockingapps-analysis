package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czk.class */
public final class czk<K, V> extends czd<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private static final czd<Object, Object> f26601a = new czk(null, new Object[0], 0);

    /* renamed from: b  reason: collision with root package name */
    private final transient Object f26602b;

    /* renamed from: c  reason: collision with root package name */
    private final transient Object[] f26603c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f26604d;

    private czk(Object obj, Object[] objArr, int i) {
        this.f26602b = obj;
        this.f26603c = objArr;
        this.f26604d = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> czk<K, V> a(int i, Object[] objArr) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (i == 0) {
            return (czk) f26601a;
        }
        int[] iArr = null;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        if (i == 1) {
            cys.a(objArr[0], objArr[1]);
            return new czk<>(null, objArr, 1);
        }
        cyg.b(i, objArr.length >> 1);
        int a2 = czc.a(i);
        if (i == 1) {
            cys.a(objArr[0], objArr[1]);
        } else {
            int i11 = a2 - 1;
            if (a2 <= 128) {
                byte[] bArr = new byte[a2];
                Arrays.fill(bArr, (byte) -1);
                while (true) {
                    iArr = bArr;
                    if (i10 >= i) {
                        break;
                    }
                    i6 = i10 * 2;
                    Object obj = objArr[i6];
                    Object obj2 = objArr[i6 ^ 1];
                    cys.a(obj, obj2);
                    int a3 = cyu.a(obj.hashCode());
                    while (true) {
                        i7 = a3 & i11;
                        int i12 = bArr[i7] & 255;
                        if (i12 == 255) {
                            break;
                        } else if (!objArr[i12].equals(obj)) {
                            a3 = i7 + 1;
                        } else {
                            throw a(obj, obj2, objArr, i12);
                        }
                    }
                    bArr[i7] = (byte) i6;
                    i10++;
                }
            } else if (a2 <= 32768) {
                short[] sArr = new short[a2];
                Arrays.fill(sArr, (short) -1);
                while (true) {
                    iArr = sArr;
                    if (i8 >= i) {
                        break;
                    }
                    i4 = i8 * 2;
                    Object obj3 = objArr[i4];
                    Object obj4 = objArr[i4 ^ 1];
                    cys.a(obj3, obj4);
                    int a4 = cyu.a(obj3.hashCode());
                    while (true) {
                        i5 = a4 & i11;
                        int i13 = sArr[i5] & 65535;
                        if (i13 == 65535) {
                            break;
                        } else if (!objArr[i13].equals(obj3)) {
                            a4 = i5 + 1;
                        } else {
                            throw a(obj3, obj4, objArr, i13);
                        }
                    }
                    sArr[i5] = (short) i4;
                    i8++;
                }
            } else {
                int[] iArr2 = new int[a2];
                Arrays.fill(iArr2, -1);
                while (true) {
                    iArr = iArr2;
                    if (i9 >= i) {
                        break;
                    }
                    i2 = i9 * 2;
                    Object obj5 = objArr[i2];
                    Object obj6 = objArr[i2 ^ 1];
                    cys.a(obj5, obj6);
                    int a5 = cyu.a(obj5.hashCode());
                    while (true) {
                        i3 = a5 & i11;
                        int i14 = iArr2[i3];
                        if (i14 == -1) {
                            break;
                        } else if (!objArr[i14].equals(obj5)) {
                            a5 = i3 + 1;
                        } else {
                            throw a(obj5, obj6, objArr, i14);
                        }
                    }
                    iArr2[i3] = i2;
                    i9++;
                }
            }
        }
        return new czk<>(iArr, objArr, i);
    }

    private static IllegalArgumentException a(Object obj, Object obj2, Object[] objArr, int i) {
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

    @Override // com.google.android.gms.internal.ads.czd
    final czc<Map.Entry<K, V>> a() {
        return new czn(this, this.f26603c, 0, this.f26604d);
    }

    @Override // com.google.android.gms.internal.ads.czd
    final czc<K> b() {
        return new czp(this, new czo(this.f26603c, 0, this.f26604d));
    }

    @Override // com.google.android.gms.internal.ads.czd
    final cyt<V> c() {
        return new czo(this.f26603c, 1, this.f26604d);
    }

    @Override // com.google.android.gms.internal.ads.czd, java.util.Map
    public final V get(Object obj) {
        Object obj2 = this.f26602b;
        Object[] objArr = this.f26603c;
        int i = this.f26604d;
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
                int a2 = cyu.a(obj.hashCode());
                while (true) {
                    int i2 = a2 & (length - 1);
                    int i3 = bArr[i2] & 255;
                    if (i3 == 255) {
                        return null;
                    }
                    if (objArr[i3].equals(obj)) {
                        return (V) objArr[i3 ^ 1];
                    }
                    a2 = i2 + 1;
                }
            } else if (obj2 instanceof short[]) {
                short[] sArr = (short[]) obj2;
                int length2 = sArr.length;
                int a3 = cyu.a(obj.hashCode());
                while (true) {
                    int i4 = a3 & (length2 - 1);
                    int i5 = sArr[i4] & 65535;
                    if (i5 == 65535) {
                        return null;
                    }
                    if (objArr[i5].equals(obj)) {
                        return (V) objArr[i5 ^ 1];
                    }
                    a3 = i4 + 1;
                }
            } else {
                int[] iArr = (int[]) obj2;
                int length3 = iArr.length;
                int a4 = cyu.a(obj.hashCode());
                while (true) {
                    int i6 = a4 & (length3 - 1);
                    int i7 = iArr[i6];
                    if (i7 == -1) {
                        return null;
                    }
                    if (objArr[i7].equals(obj)) {
                        return (V) objArr[i7 ^ 1];
                    }
                    a4 = i6 + 1;
                }
            }
        }
    }

    @Override // java.util.Map
    public final int size() {
        return this.f26604d;
    }
}
