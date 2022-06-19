package com.esotericsoftware.kryo.p278c;
/* renamed from: com.esotericsoftware.kryo.c.h */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/h.class */
public final class C9393h<K> extends C9400l<K> {
    public C9393h() {
    }

    public C9393h(int i) {
        super(i);
    }

    public C9393h(int i, float f) {
        super(i, f);
    }

    public C9393h(C9393h<K> c9393h) {
        super(c9393h);
    }

    @Override // com.esotericsoftware.kryo.p278c.C9400l
    /* renamed from: a */
    protected final int mo24325a(K k) {
        return (int) ((System.identityHashCode(k) * (-7046029254386353131L)) >>> this.f32331f);
    }

    @Override // com.esotericsoftware.kryo.p278c.C9400l
    /* renamed from: b */
    final int mo24322b(K k) {
        if (k != null) {
            K[] kArr = this.f32327b;
            int mo24325a = mo24325a((C9393h<K>) k);
            while (true) {
                int i = mo24325a;
                K k2 = kArr[i];
                if (k2 == null) {
                    return -(i + 1);
                }
                if (k2 == k) {
                    return i;
                }
                mo24325a = (i + 1) & this.f32332g;
            }
        } else {
            throw new IllegalArgumentException("key cannot be null.");
        }
    }

    @Override // com.esotericsoftware.kryo.p278c.C9400l
    public final int hashCode() {
        int i = this.f32326a;
        K[] kArr = this.f32327b;
        int[] iArr = this.f32328c;
        int length = kArr.length;
        int i2 = 0;
        while (i2 < length) {
            K k = kArr[i2];
            int i3 = i;
            if (k != null) {
                i3 = i + System.identityHashCode(k) + iArr[i2];
            }
            i2++;
            i = i3;
        }
        return i;
    }
}
