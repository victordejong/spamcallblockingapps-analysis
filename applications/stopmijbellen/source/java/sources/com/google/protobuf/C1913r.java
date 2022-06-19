package com.google.protobuf;

import com.google.protobuf.C1895k;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* renamed from: com.google.protobuf.r */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/r.class */
public final class C1913r<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b */
    public static final C1913r f7111b;

    /* renamed from: a */
    public boolean f7112a = true;

    static {
        C1913r c1913r = new C1913r();
        f7111b = c1913r;
        c1913r.f7112a = false;
    }

    public C1913r() {
    }

    public C1913r(Map<K, V> map) {
        super(map);
    }

    /* renamed from: a */
    public static int m4249a(Object obj) {
        if (!(obj instanceof byte[])) {
            if (obj instanceof C1895k.AbstractC1896a) {
                throw new UnsupportedOperationException();
            }
            return obj.hashCode();
        }
        byte[] bArr = (byte[]) obj;
        Charset charset = C1895k.f7092a;
        int length = bArr.length;
        int i = length;
        for (int i2 = 0; i2 < 0 + length; i2++) {
            i = (i * 31) + bArr[i2];
        }
        int i3 = i;
        if (i == 0) {
            i3 = 1;
        }
        return i3;
    }

    /* renamed from: b */
    public final void m4248b() {
        if (this.f7112a) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: c */
    public C1913r<K, V> m4247c() {
        return isEmpty() ? new C1913r<>() : new C1913r<>(this);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        m4248b();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00b1  */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof java.util.Map
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto Lb6
            r0 = r4
            java.util.Map r0 = (java.util.Map) r0
            r7 = r0
            r0 = r3
            r1 = r7
            if (r0 != r1) goto L1d
        L17:
            r0 = 1
            r8 = r0
            goto Lac
        L1d:
            r0 = r3
            int r0 = r0.size()
            r1 = r7
            int r1 = r1.size()
            if (r0 == r1) goto L31
        L2b:
            r0 = 0
            r8 = r0
            goto Lac
        L31:
            r0 = r3
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L3b:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L17
            r0 = r4
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r9 = r0
            r0 = r7
            r1 = r9
            java.lang.Object r1 = r1.getKey()
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L63
            goto L2b
        L63:
            r0 = r9
            java.lang.Object r0 = r0.getValue()
            r10 = r0
            r0 = r7
            r1 = r9
            java.lang.Object r1 = r1.getKey()
            java.lang.Object r0 = r0.get(r1)
            r9 = r0
            r0 = r10
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L9d
            r0 = r9
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L9d
            r0 = r10
            byte[] r0 = (byte[]) r0
            r1 = r9
            byte[] r1 = (byte[]) r1
            boolean r0 = java.util.Arrays.equals(r0, r1)
            r5 = r0
            goto La5
        L9d:
            r0 = r10
            r1 = r9
            boolean r0 = r0.equals(r1)
            r5 = r0
        La5:
            r0 = r5
            if (r0 != 0) goto L3b
            goto L2b
        Lac:
            r0 = r8
            if (r0 == 0) goto Lb6
            r0 = r6
            r5 = r0
            goto Lb8
        Lb6:
            r0 = 0
            r5 = r0
        Lb8:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C1913r.equals(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        Iterator<Map.Entry<K, V>> it2 = entrySet().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it2.hasNext()) {
                Map.Entry<K, V> next = it2.next();
                i = i2 + (m4249a(next.getValue()) ^ m4249a(next.getKey()));
            } else {
                return i2;
            }
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        m4248b();
        Charset charset = C1895k.f7092a;
        Objects.requireNonNull(k);
        Objects.requireNonNull(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m4248b();
        for (K k : map.keySet()) {
            Charset charset = C1895k.f7092a;
            Objects.requireNonNull(k);
            Objects.requireNonNull(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m4248b();
        return (V) super.remove(obj);
    }
}
