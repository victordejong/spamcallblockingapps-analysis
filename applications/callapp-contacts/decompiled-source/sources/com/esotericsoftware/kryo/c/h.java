package com.esotericsoftware.kryo.c;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/h.class */
public final class h<K> extends l<K> {
    public h() {
    }

    public h(int i) {
        super(i);
    }

    public h(int i, float f) {
        super(i, f);
    }

    public h(h<K> hVar) {
        super(hVar);
    }

    @Override // com.esotericsoftware.kryo.c.l
    protected final int a(K k) {
        return (int) ((System.identityHashCode(k) * (-7046029254386353131L)) >>> this.f);
    }

    @Override // com.esotericsoftware.kryo.c.l
    final int b(K k) {
        if (k != null) {
            K[] kArr = this.f19017b;
            int a2 = a((h<K>) k);
            while (true) {
                K k2 = kArr[a2];
                if (k2 == null) {
                    return -(a2 + 1);
                }
                if (k2 == k) {
                    return a2;
                }
                a2 = (a2 + 1) & this.g;
            }
        } else {
            throw new IllegalArgumentException("key cannot be null.");
        }
    }

    @Override // com.esotericsoftware.kryo.c.l
    public final int hashCode() {
        int i = this.f19016a;
        K[] kArr = this.f19017b;
        int[] iArr = this.f19018c;
        int length = kArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            K k = kArr[i2];
            i = i;
            if (k != null) {
                i += System.identityHashCode(k) + iArr[i2];
            }
        }
        return i;
    }
}
