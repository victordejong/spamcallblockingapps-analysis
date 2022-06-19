package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czk.class */
public final class czk<K, V> extends czd<K, V> {

    /* renamed from: a */
    private static final czd<Object, Object> f46797a = new czk(null, new Object[0], 0);

    /* renamed from: b */
    private final transient Object f46798b;

    /* renamed from: c */
    private final transient Object[] f46799c;

    /* renamed from: d */
    private final transient int f46800d;

    private czk(Object obj, Object[] objArr, int i) {
        this.f46798b = obj;
        this.f46799c = objArr;
        this.f46800d = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <K, V> czk<K, V> m17010a(int i, Object[] objArr) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (i == 0) {
            return (czk) f46797a;
        }
        byte[] bArr = null;
        int i8 = 0;
        if (i == 1) {
            cys.m17040a(objArr[0], objArr[1]);
            return new czk<>(null, objArr, 1);
        }
        cyg.m17056b(i, objArr.length >> 1);
        int m17028a = czc.m17028a(i);
        if (i == 1) {
            cys.m17040a(objArr[0], objArr[1]);
        } else {
            int i9 = m17028a - 1;
            if (m17028a <= 128) {
                byte[] bArr2 = new byte[m17028a];
                Arrays.fill(bArr2, (byte) -1);
                while (true) {
                    bArr = bArr2;
                    if (i8 >= i) {
                        break;
                    }
                    i6 = i8 * 2;
                    Object obj = objArr[i6];
                    Object obj2 = objArr[i6 ^ 1];
                    cys.m17040a(obj, obj2);
                    int m17039a = cyu.m17039a(obj.hashCode());
                    while (true) {
                        i7 = m17039a & i9;
                        int i10 = bArr2[i7] & 255;
                        if (i10 == 255) {
                            break;
                        } else if (objArr[i10].equals(obj)) {
                            throw m17009a(obj, obj2, objArr, i10);
                        } else {
                            m17039a = i7 + 1;
                        }
                    }
                    bArr2[i7] = (byte) i6;
                    i8++;
                }
            } else if (m17028a <= 32768) {
                short[] sArr = new short[m17028a];
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
                    cys.m17040a(obj3, obj4);
                    int m17039a2 = cyu.m17039a(obj3.hashCode());
                    while (true) {
                        i5 = m17039a2 & i9;
                        int i12 = sArr[i5] & 65535;
                        if (i12 == 65535) {
                            break;
                        } else if (objArr[i12].equals(obj3)) {
                            throw m17009a(obj3, obj4, objArr, i12);
                        } else {
                            m17039a2 = i5 + 1;
                        }
                    }
                    sArr[i5] = (short) i4;
                    i11++;
                }
            } else {
                int[] iArr = new int[m17028a];
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
                    cys.m17040a(obj5, obj6);
                    int m17039a3 = cyu.m17039a(obj5.hashCode());
                    while (true) {
                        i3 = m17039a3 & i9;
                        char c = iArr[i3];
                        if (c == -1) {
                            break;
                        } else if (objArr[c].equals(obj5)) {
                            throw m17009a(obj5, obj6, objArr, c);
                        } else {
                            m17039a3 = i3 + 1;
                        }
                    }
                    iArr[i3] = i2;
                    i13++;
                }
            }
        }
        return new czk<>(bArr, objArr, i);
    }

    /* renamed from: a */
    private static IllegalArgumentException m17009a(Object obj, Object obj2, Object[] objArr, int i) {
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
    /* renamed from: a */
    final czc<Map.Entry<K, V>> mo17011a() {
        return new czn(this, this.f46799c, 0, this.f46800d);
    }

    @Override // com.google.android.gms.internal.ads.czd
    /* renamed from: b */
    final czc<K> mo17008b() {
        return new czp(this, new czo(this.f46799c, 0, this.f46800d));
    }

    @Override // com.google.android.gms.internal.ads.czd
    /* renamed from: c */
    final cyt<V> mo17007c() {
        return new czo(this.f46799c, 1, this.f46800d);
    }

    @Override // com.google.android.gms.internal.ads.czd, java.util.Map
    public final V get(Object obj) {
        Object obj2 = this.f46798b;
        Object[] objArr = this.f46799c;
        int i = this.f46800d;
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
                int m17039a = cyu.m17039a(obj.hashCode());
                while (true) {
                    int i2 = m17039a & (length - 1);
                    int i3 = bArr[i2] & 255;
                    if (i3 == 255) {
                        return null;
                    }
                    if (objArr[i3].equals(obj)) {
                        return (V) objArr[i3 ^ 1];
                    }
                    m17039a = i2 + 1;
                }
            } else if (obj2 instanceof short[]) {
                short[] sArr = (short[]) obj2;
                int length2 = sArr.length;
                int m17039a2 = cyu.m17039a(obj.hashCode());
                while (true) {
                    int i4 = m17039a2 & (length2 - 1);
                    int i5 = sArr[i4] & 65535;
                    if (i5 == 65535) {
                        return null;
                    }
                    if (objArr[i5].equals(obj)) {
                        return (V) objArr[i5 ^ 1];
                    }
                    m17039a2 = i4 + 1;
                }
            } else {
                int[] iArr = (int[]) obj2;
                int length3 = iArr.length;
                int m17039a3 = cyu.m17039a(obj.hashCode());
                while (true) {
                    int i6 = m17039a3 & (length3 - 1);
                    int i7 = iArr[i6];
                    if (i7 == -1) {
                        return null;
                    }
                    if (objArr[i7].equals(obj)) {
                        return (V) objArr[i7 ^ 1];
                    }
                    m17039a3 = i6 + 1;
                }
            }
        }
    }

    @Override // java.util.Map
    public final int size() {
        return this.f46800d;
    }
}
