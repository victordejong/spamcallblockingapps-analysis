package com.esotericsoftware.kryo.c;

import com.esotericsoftware.kryo.c.e;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/c/c.class */
public final class c implements e {

    /* renamed from: a  reason: collision with root package name */
    private final com.esotericsoftware.kryo.c f18982a;

    /* renamed from: b  reason: collision with root package name */
    private int f18983b;
    private int e;

    /* renamed from: c  reason: collision with root package name */
    private e.a[] f18984c = new e.a[16];

    /* renamed from: d  reason: collision with root package name */
    private int[] f18985d = new int[16];
    private Type[] f = new Type[16];

    public c(com.esotericsoftware.kryo.c cVar) {
        this.f18982a = cVar;
    }

    @Override // com.esotericsoftware.kryo.c.e
    public final int a(e.b bVar, e.a[] aVarArr) {
        if (bVar.f18995a == 0 || bVar.f18996b > aVarArr.length) {
            return 0;
        }
        int i = this.e;
        int i2 = bVar.f18995a + i;
        Type[] typeArr = this.f;
        if (i2 > typeArr.length) {
            Type[] typeArr2 = new Type[Math.max(i2, typeArr.length << 1)];
            System.arraycopy(this.f, 0, typeArr2, 0, i);
            this.f = typeArr2;
        }
        int[] iArr = bVar.f18997c;
        TypeVariable[] typeVariableArr = bVar.f18998d;
        int length = aVarArr.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            e.a aVar = aVarArr[i4];
            Class a2 = aVar.a(this);
            i3 = i3;
            if (a2 != null) {
                int i5 = iArr[i4];
                if (aVar == null) {
                    i3 += i5;
                } else {
                    int i6 = i3;
                    while (true) {
                        i3 = i6;
                        if (i6 < i5 + i3) {
                            Type[] typeArr3 = this.f;
                            int i7 = this.e;
                            typeArr3[i7] = typeVariableArr[i6];
                            typeArr3[i7 + 1] = a2;
                            this.e = i7 + 2;
                            i6++;
                        }
                    }
                }
            }
        }
        return this.e - i;
    }

    @Override // com.esotericsoftware.kryo.c.e
    public final Class a(TypeVariable typeVariable) {
        for (int i = this.e - 2; i >= 0; i -= 2) {
            Type type = this.f[i];
            if (type == typeVariable || type.equals(typeVariable)) {
                return (Class) this.f[i + 1];
            }
        }
        return null;
    }

    @Override // com.esotericsoftware.kryo.c.e
    public final void a() {
        int i = this.f18983b;
        if (i != 0) {
            int i2 = i - 1;
            if (this.f18985d[i2] >= this.f18982a.getDepth()) {
                this.f18984c[i2] = null;
                this.f18983b = i2;
            }
        }
    }

    @Override // com.esotericsoftware.kryo.c.e
    public final void a(int i) {
        int i2 = this.e;
        int i3 = i2 - i;
        this.e = i3;
        while (i3 < i2) {
            this.f[i3] = null;
            i3++;
        }
    }

    @Override // com.esotericsoftware.kryo.c.e
    public final void a(e.a aVar) {
        int i = this.f18983b;
        int i2 = i + 1;
        e.a[] aVarArr = this.f18984c;
        if (i2 == aVarArr.length) {
            e.a[] aVarArr2 = new e.a[aVarArr.length << 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, i);
            this.f18984c = aVarArr2;
            int[] iArr = this.f18985d;
            int[] iArr2 = new int[iArr.length << 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            this.f18985d = iArr2;
        }
        this.f18983b = i2;
        this.f18984c[i] = aVar;
        this.f18985d[i] = this.f18982a.getDepth();
    }

    @Override // com.esotericsoftware.kryo.c.e
    public final e.a[] b() {
        int i = this.f18983b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        e.a aVar = this.f18984c[i2];
        if (aVar.f18994b == null || this.f18985d[i2] != this.f18982a.getDepth() - 1) {
            return null;
        }
        a(aVar.f18994b[aVar.f18994b.length - 1]);
        return aVar.f18994b;
    }

    @Override // com.esotericsoftware.kryo.c.e
    public final Class c() {
        e.a[] b2 = b();
        if (b2 == null) {
            return null;
        }
        return b2[0].a(this);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.e; i += 2) {
            if (i != 0) {
                sb.append(", ");
            }
            sb.append(((TypeVariable) this.f[i]).getName());
            sb.append("=");
            sb.append(((Class) this.f[i + 1]).getSimpleName());
        }
        return sb.toString();
    }
}
