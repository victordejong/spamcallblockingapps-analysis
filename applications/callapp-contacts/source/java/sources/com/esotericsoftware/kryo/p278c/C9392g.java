package com.esotericsoftware.kryo.p278c;
/* renamed from: com.esotericsoftware.kryo.c.g */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/g.class */
public final class C9392g<K, V> extends C9404m<K, V> {
    public C9392g() {
    }

    public C9392g(int i) {
        super(i);
    }

    public C9392g(int i, float f) {
        super(i, f);
    }

    public C9392g(C9392g<K, V> c9392g) {
        super(c9392g);
    }

    @Override // com.esotericsoftware.kryo.p278c.C9404m
    /* renamed from: a */
    protected final int mo24314a(K k) {
        return (int) ((System.identityHashCode(k) * (-7046029254386353131L)) >>> this.f32347g);
    }

    @Override // com.esotericsoftware.kryo.p278c.C9404m
    /* renamed from: b */
    final int mo24310b(K k) {
        if (k != null) {
            K[] kArr = this.f32343c;
            int mo24314a = mo24314a((C9392g<K, V>) k);
            while (true) {
                int i = mo24314a;
                K k2 = kArr[i];
                if (k2 == null) {
                    return -(i + 1);
                }
                if (k2 == k) {
                    return i;
                }
                mo24314a = (i + 1) & this.f32348h;
            }
        } else {
            throw new IllegalArgumentException("key cannot be null.");
        }
    }

    @Override // com.esotericsoftware.kryo.p278c.C9404m
    public final int hashCode() {
        int i = this.f32342b;
        K[] kArr = this.f32343c;
        V[] vArr = this.f32344d;
        int length = kArr.length;
        int i2 = 0;
        while (i2 < length) {
            K k = kArr[i2];
            int i3 = i;
            if (k != null) {
                int identityHashCode = i + System.identityHashCode(k);
                V v = vArr[i2];
                i3 = identityHashCode;
                if (v != null) {
                    i3 = identityHashCode + v.hashCode();
                }
            }
            i2++;
            i = i3;
        }
        return i;
    }
}
