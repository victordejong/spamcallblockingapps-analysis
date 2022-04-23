package com.esotericsoftware.kryo.c;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/g.class */
public final class g<K, V> extends m<K, V> {
    public g() {
    }

    public g(int i) {
        super(i);
    }

    public g(int i, float f) {
        super(i, f);
    }

    public g(g<K, V> gVar) {
        super(gVar);
    }

    @Override // com.esotericsoftware.kryo.c.m
    protected final int a(K k) {
        return (int) ((System.identityHashCode(k) * (-7046029254386353131L)) >>> this.g);
    }

    @Override // com.esotericsoftware.kryo.c.m
    final int b(K k) {
        if (k != null) {
            K[] kArr = this.f19028c;
            int a2 = a((g<K, V>) k);
            while (true) {
                K k2 = kArr[a2];
                if (k2 == null) {
                    return -(a2 + 1);
                }
                if (k2 == k) {
                    return a2;
                }
                a2 = (a2 + 1) & this.h;
            }
        } else {
            throw new IllegalArgumentException("key cannot be null.");
        }
    }

    @Override // com.esotericsoftware.kryo.c.m
    public final int hashCode() {
        int i = this.f19027b;
        K[] kArr = this.f19028c;
        V[] vArr = this.f19029d;
        int length = kArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            K k = kArr[i2];
            i = i;
            if (k != null) {
                int identityHashCode = i + System.identityHashCode(k);
                V v = vArr[i2];
                i = identityHashCode;
                if (v != null) {
                    i = identityHashCode + v.hashCode();
                }
            }
        }
        return i;
    }
}
