package com.esotericsoftware.kryo.p278c;

import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.p278c.AbstractC9388e;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
/* renamed from: com.esotericsoftware.kryo.c.c */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/c.class */
public final class C9384c implements AbstractC9388e {

    /* renamed from: a */
    private final C9380c f32283a;

    /* renamed from: b */
    private int f32284b;

    /* renamed from: e */
    private int f32287e;

    /* renamed from: c */
    private AbstractC9388e.C9389a[] f32285c = new AbstractC9388e.C9389a[16];

    /* renamed from: d */
    private int[] f32286d = new int[16];

    /* renamed from: f */
    private Type[] f32288f = new Type[16];

    public C9384c(C9380c c9380c) {
        this.f32283a = c9380c;
    }

    @Override // com.esotericsoftware.kryo.p278c.AbstractC9388e
    /* renamed from: a */
    public final int mo24345a(AbstractC9388e.C9390b c9390b, AbstractC9388e.C9389a[] c9389aArr) {
        int i = 0;
        if (c9390b.f32298a == 0 || c9390b.f32299b > c9389aArr.length) {
            return 0;
        }
        int i2 = this.f32287e;
        int i3 = c9390b.f32298a + i2;
        Type[] typeArr = this.f32288f;
        if (i3 > typeArr.length) {
            Type[] typeArr2 = new Type[Math.max(i3, typeArr.length << 1)];
            System.arraycopy(this.f32288f, 0, typeArr2, 0, i2);
            this.f32288f = typeArr2;
        }
        int[] iArr = c9390b.f32300c;
        TypeVariable[] typeVariableArr = c9390b.f32301d;
        int length = c9389aArr.length;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i >= length) {
                return this.f32287e - i2;
            }
            AbstractC9388e.C9389a c9389a = c9389aArr[i];
            Class m24341a = c9389a.m24341a(this);
            int i6 = i5;
            if (m24341a != null) {
                int i7 = iArr[i];
                if (c9389a == null) {
                    i6 = i5 + i7;
                } else {
                    int i8 = i5;
                    while (true) {
                        int i9 = i8;
                        i6 = i9;
                        if (i9 < i7 + i5) {
                            Type[] typeArr3 = this.f32288f;
                            int i10 = this.f32287e;
                            typeArr3[i10] = typeVariableArr[i9];
                            typeArr3[i10 + 1] = m24341a;
                            this.f32287e = i10 + 2;
                            i8 = i9 + 1;
                        }
                    }
                }
            }
            i++;
            i4 = i6;
        }
    }

    @Override // com.esotericsoftware.kryo.p278c.AbstractC9388e
    /* renamed from: a */
    public final Class mo24344a(TypeVariable typeVariable) {
        for (int i = this.f32287e - 2; i >= 0; i -= 2) {
            Type type = this.f32288f[i];
            if (type == typeVariable || type.equals(typeVariable)) {
                return (Class) this.f32288f[i + 1];
            }
        }
        return null;
    }

    @Override // com.esotericsoftware.kryo.p278c.AbstractC9388e
    /* renamed from: a */
    public final void mo24348a() {
        int i = this.f32284b;
        if (i == 0) {
            return;
        }
        int i2 = i - 1;
        if (this.f32286d[i2] < this.f32283a.getDepth()) {
            return;
        }
        this.f32285c[i2] = null;
        this.f32284b = i2;
    }

    @Override // com.esotericsoftware.kryo.p278c.AbstractC9388e
    /* renamed from: a */
    public final void mo24347a(int i) {
        int i2 = this.f32287e;
        int i3 = i2 - i;
        this.f32287e = i3;
        while (i3 < i2) {
            this.f32288f[i3] = null;
            i3++;
        }
    }

    @Override // com.esotericsoftware.kryo.p278c.AbstractC9388e
    /* renamed from: a */
    public final void mo24346a(AbstractC9388e.C9389a c9389a) {
        int i = this.f32284b;
        int i2 = i + 1;
        AbstractC9388e.C9389a[] c9389aArr = this.f32285c;
        if (i2 == c9389aArr.length) {
            AbstractC9388e.C9389a[] c9389aArr2 = new AbstractC9388e.C9389a[c9389aArr.length << 1];
            System.arraycopy(c9389aArr, 0, c9389aArr2, 0, i);
            this.f32285c = c9389aArr2;
            int[] iArr = this.f32286d;
            int[] iArr2 = new int[iArr.length << 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            this.f32286d = iArr2;
        }
        this.f32284b = i2;
        this.f32285c[i] = c9389a;
        this.f32286d[i] = this.f32283a.getDepth();
    }

    @Override // com.esotericsoftware.kryo.p278c.AbstractC9388e
    /* renamed from: b */
    public final AbstractC9388e.C9389a[] mo24343b() {
        int i = this.f32284b;
        if (i > 0) {
            int i2 = i - 1;
            AbstractC9388e.C9389a c9389a = this.f32285c[i2];
            if (c9389a.f32297b == null || this.f32286d[i2] != this.f32283a.getDepth() - 1) {
                return null;
            }
            mo24346a(c9389a.f32297b[c9389a.f32297b.length - 1]);
            return c9389a.f32297b;
        }
        return null;
    }

    @Override // com.esotericsoftware.kryo.p278c.AbstractC9388e
    /* renamed from: c */
    public final Class mo24342c() {
        AbstractC9388e.C9389a[] mo24343b = mo24343b();
        if (mo24343b == null) {
            return null;
        }
        return mo24343b[0].m24341a(this);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.f32287e; i += 2) {
            if (i != 0) {
                sb.append(", ");
            }
            sb.append(((TypeVariable) this.f32288f[i]).getName());
            sb.append("=");
            sb.append(((Class) this.f32288f[i + 1]).getSimpleName());
        }
        return sb.toString();
    }
}
