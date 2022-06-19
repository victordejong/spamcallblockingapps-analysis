package com.google.android.gms.internal.ads;

import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpq.class */
public final class cpq<K, V> extends cpg<K, V> {

    /* renamed from: a */
    private static final cpg<Object, Object> f13511a = new cpq(null, new Object[0], 0);

    /* renamed from: b */
    private final transient Object f13512b;

    /* renamed from: c */
    private final transient Object[] f13513c;

    /* renamed from: d */
    private final transient int f13514d;

    private cpq(Object obj, Object[] objArr, int i) {
        this.f13512b = obj;
        this.f13513c = objArr;
        this.f13514d = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0065, code lost:
        r9[r0] = (byte) r0;
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00eb, code lost:
        r9[r0] = (short) r0;
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x015f, code lost:
        r9[r0] = r0;
        r6 = r6 + 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [int] */
    /* JADX WARN: Type inference failed for: r0v83 */
    /* JADX WARN: Type inference failed for: r9v0, types: [int[]] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [byte[]] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <K, V> com.google.android.gms.internal.ads.cpq<K, V> m10872a(int r6, java.lang.Object[] r7) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cpq.m10872a(int, java.lang.Object[]):com.google.android.gms.internal.ads.cpq");
    }

    /* renamed from: a */
    private static IllegalArgumentException m10871a(Object obj, Object obj2, Object[] objArr, int i) {
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(obj2);
        String valueOf3 = String.valueOf(objArr[i]);
        String valueOf4 = String.valueOf(objArr[i ^ 1]);
        return new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 39 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length()).append("Multiple entries with same key: ").append(valueOf).append("=").append(valueOf2).append(" and ").append(valueOf3).append("=").append(valueOf4).toString());
    }

    @Override // com.google.android.gms.internal.ads.cpg
    /* renamed from: a */
    final cpk<Map.Entry<K, V>> mo10873a() {
        return new cpp(this, this.f13513c, 0, this.f13514d);
    }

    @Override // com.google.android.gms.internal.ads.cpg
    /* renamed from: b */
    final cpk<K> mo10870b() {
        return new cpr(this, new cpu(this.f13513c, 0, this.f13514d));
    }

    @Override // com.google.android.gms.internal.ads.cpg
    /* renamed from: c */
    final cpb<V> mo10869c() {
        return new cpu(this.f13513c, 1, this.f13514d);
    }

    @Override // com.google.android.gms.internal.ads.cpg, java.util.Map
    @NullableDecl
    public final V get(@NullableDecl Object obj) {
        V v;
        Object obj2 = this.f13512b;
        Object[] objArr = this.f13513c;
        int i = this.f13514d;
        if (obj == null) {
            v = null;
        } else if (i == 1) {
            v = objArr[0].equals(obj) ? objArr[1] : null;
        } else if (obj2 == null) {
            v = null;
        } else if (obj2 instanceof byte[]) {
            byte[] bArr = (byte[]) obj2;
            int length = bArr.length;
            int m10917a = coy.m10917a(obj.hashCode());
            while (true) {
                int i2 = m10917a & (length - 1);
                int i3 = bArr[i2] & 255;
                if (i3 == 255) {
                    v = null;
                    break;
                } else if (objArr[i3].equals(obj)) {
                    v = objArr[i3 ^ 1];
                    break;
                } else {
                    m10917a = i2 + 1;
                }
            }
        } else if (obj2 instanceof short[]) {
            short[] sArr = (short[]) obj2;
            int length2 = sArr.length;
            int m10917a2 = coy.m10917a(obj.hashCode());
            while (true) {
                int i4 = m10917a2 & (length2 - 1);
                int i5 = sArr[i4] & 65535;
                if (i5 == 65535) {
                    v = null;
                    break;
                } else if (objArr[i5].equals(obj)) {
                    v = objArr[i5 ^ 1];
                    break;
                } else {
                    m10917a2 = i4 + 1;
                }
            }
        } else {
            int[] iArr = (int[]) obj2;
            int length3 = iArr.length;
            int m10917a3 = coy.m10917a(obj.hashCode());
            while (true) {
                int i6 = m10917a3 & (length3 - 1);
                int i7 = iArr[i6];
                if (i7 == -1) {
                    v = null;
                    break;
                } else if (objArr[i7].equals(obj)) {
                    v = objArr[i7 ^ 1];
                    break;
                } else {
                    m10917a3 = i6 + 1;
                }
            }
        }
        return v;
    }

    @Override // java.util.Map
    public final int size() {
        return this.f13514d;
    }
}
