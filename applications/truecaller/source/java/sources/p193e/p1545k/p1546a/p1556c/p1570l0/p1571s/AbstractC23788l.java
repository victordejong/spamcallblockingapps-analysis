package p193e.p1545k.p1546a.p1556c.p1570l0.p1571s;

import java.util.Arrays;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.C23733k;
/* renamed from: e.k.a.c.l0.s.l */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/l.class */
public abstract class AbstractC23788l {

    /* renamed from: a */
    public final boolean f65898a;

    /* renamed from: e.k.a.c.l0.s.l$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/l$a.class */
    public static final class C23789a extends AbstractC23788l {

        /* renamed from: b */
        public final Class<?> f65899b;

        /* renamed from: c */
        public final Class<?> f65900c;

        /* renamed from: d */
        public final AbstractC23890n<Object> f65901d;

        /* renamed from: e */
        public final AbstractC23890n<Object> f65902e;

        public C23789a(AbstractC23788l abstractC23788l, Class<?> cls, AbstractC23890n<Object> abstractC23890n, Class<?> cls2, AbstractC23890n<Object> abstractC23890n2) {
            super(abstractC23788l);
            this.f65899b = cls;
            this.f65901d = abstractC23890n;
            this.f65900c = cls2;
            this.f65902e = abstractC23890n2;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.AbstractC23788l
        /* renamed from: b */
        public AbstractC23788l mo6061b(Class<?> cls, AbstractC23890n<Object> abstractC23890n) {
            return new C23791c(this, new C23794f[]{new C23794f(this.f65899b, this.f65901d), new C23794f(this.f65900c, this.f65902e), new C23794f(cls, abstractC23890n)});
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.AbstractC23788l
        /* renamed from: c */
        public AbstractC23890n<Object> mo6060c(Class<?> cls) {
            if (cls == this.f65899b) {
                return this.f65901d;
            }
            if (cls != this.f65900c) {
                return null;
            }
            return this.f65902e;
        }
    }

    /* renamed from: e.k.a.c.l0.s.l$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/l$b.class */
    public static final class C23790b extends AbstractC23788l {

        /* renamed from: b */
        public static final C23790b f65903b = new C23790b(false);

        public C23790b(boolean z) {
            super(z);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.AbstractC23788l
        /* renamed from: b */
        public AbstractC23788l mo6061b(Class<?> cls, AbstractC23890n<Object> abstractC23890n) {
            return new C23793e(this, cls, abstractC23890n);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.AbstractC23788l
        /* renamed from: c */
        public AbstractC23890n<Object> mo6060c(Class<?> cls) {
            return null;
        }
    }

    /* renamed from: e.k.a.c.l0.s.l$c */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/l$c.class */
    public static final class C23791c extends AbstractC23788l {

        /* renamed from: b */
        public final C23794f[] f65904b;

        public C23791c(AbstractC23788l abstractC23788l, C23794f[] c23794fArr) {
            super(abstractC23788l);
            this.f65904b = c23794fArr;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.AbstractC23788l
        /* renamed from: b */
        public AbstractC23788l mo6061b(Class<?> cls, AbstractC23890n<Object> abstractC23890n) {
            C23794f[] c23794fArr = this.f65904b;
            int length = c23794fArr.length;
            if (length == 8) {
                return this.f65898a ? new C23793e(this, cls, abstractC23890n) : this;
            }
            C23794f[] c23794fArr2 = (C23794f[]) Arrays.copyOf(c23794fArr, length + 1);
            c23794fArr2[length] = new C23794f(cls, abstractC23890n);
            return new C23791c(this, c23794fArr2);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00a0  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00b1  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00b6 A[ORIG_RETURN, RETURN] */
        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.AbstractC23788l
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public p193e.p1545k.p1546a.p1556c.AbstractC23890n<java.lang.Object> mo6060c(java.lang.Class<?> r4) {
            /*
                r3 = this;
                r0 = r3
                e.k.a.c.l0.s.l$f[] r0 = r0.f65904b
                r5 = r0
                r0 = r5
                r1 = 0
                r0 = r0[r1]
                r6 = r0
                r0 = r6
                java.lang.Class<?> r0 = r0.f65909a
                r1 = r4
                if (r0 != r1) goto L16
                r0 = r6
                e.k.a.c.n<java.lang.Object> r0 = r0.f65910b
                return r0
            L16:
                r0 = r5
                r1 = 1
                r0 = r0[r1]
                r6 = r0
                r0 = r6
                java.lang.Class<?> r0 = r0.f65909a
                r1 = r4
                if (r0 != r1) goto L27
                r0 = r6
                e.k.a.c.n<java.lang.Object> r0 = r0.f65910b
                return r0
            L27:
                r0 = r5
                r1 = 2
                r0 = r0[r1]
                r6 = r0
                r0 = r6
                java.lang.Class<?> r0 = r0.f65909a
                r1 = r4
                if (r0 != r1) goto L38
                r0 = r6
                e.k.a.c.n<java.lang.Object> r0 = r0.f65910b
                return r0
            L38:
                r0 = r5
                int r0 = r0.length
                switch(r0) {
                    case 4: goto La5;
                    case 5: goto L94;
                    case 6: goto L83;
                    case 7: goto L71;
                    case 8: goto L5f;
                    default: goto L5c;
                }
            L5c:
                goto Lb6
            L5f:
                r0 = r5
                r1 = 7
                r0 = r0[r1]
                r6 = r0
                r0 = r6
                java.lang.Class<?> r0 = r0.f65909a
                r1 = r4
                if (r0 != r1) goto L71
                r0 = r6
                e.k.a.c.n<java.lang.Object> r0 = r0.f65910b
                return r0
            L71:
                r0 = r5
                r1 = 6
                r0 = r0[r1]
                r6 = r0
                r0 = r6
                java.lang.Class<?> r0 = r0.f65909a
                r1 = r4
                if (r0 != r1) goto L83
                r0 = r6
                e.k.a.c.n<java.lang.Object> r0 = r0.f65910b
                return r0
            L83:
                r0 = r5
                r1 = 5
                r0 = r0[r1]
                r6 = r0
                r0 = r6
                java.lang.Class<?> r0 = r0.f65909a
                r1 = r4
                if (r0 != r1) goto L94
                r0 = r6
                e.k.a.c.n<java.lang.Object> r0 = r0.f65910b
                return r0
            L94:
                r0 = r5
                r1 = 4
                r0 = r0[r1]
                r6 = r0
                r0 = r6
                java.lang.Class<?> r0 = r0.f65909a
                r1 = r4
                if (r0 != r1) goto La5
                r0 = r6
                e.k.a.c.n<java.lang.Object> r0 = r0.f65910b
                return r0
            La5:
                r0 = r5
                r1 = 3
                r0 = r0[r1]
                r5 = r0
                r0 = r5
                java.lang.Class<?> r0 = r0.f65909a
                r1 = r4
                if (r0 != r1) goto Lb6
                r0 = r5
                e.k.a.c.n<java.lang.Object> r0 = r0.f65910b
                return r0
            Lb6:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.AbstractC23788l.C23791c.mo6060c(java.lang.Class):e.k.a.c.n");
        }
    }

    /* renamed from: e.k.a.c.l0.s.l$d */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/l$d.class */
    public static final class C23792d {

        /* renamed from: a */
        public final AbstractC23890n<Object> f65905a;

        /* renamed from: b */
        public final AbstractC23788l f65906b;

        public C23792d(AbstractC23890n<Object> abstractC23890n, AbstractC23788l abstractC23788l) {
            this.f65905a = abstractC23890n;
            this.f65906b = abstractC23788l;
        }
    }

    /* renamed from: e.k.a.c.l0.s.l$e */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/l$e.class */
    public static final class C23793e extends AbstractC23788l {

        /* renamed from: b */
        public final Class<?> f65907b;

        /* renamed from: c */
        public final AbstractC23890n<Object> f65908c;

        public C23793e(AbstractC23788l abstractC23788l, Class<?> cls, AbstractC23890n<Object> abstractC23890n) {
            super(abstractC23788l);
            this.f65907b = cls;
            this.f65908c = abstractC23890n;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.AbstractC23788l
        /* renamed from: b */
        public AbstractC23788l mo6061b(Class<?> cls, AbstractC23890n<Object> abstractC23890n) {
            return new C23789a(this, this.f65907b, this.f65908c, cls, abstractC23890n);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1571s.AbstractC23788l
        /* renamed from: c */
        public AbstractC23890n<Object> mo6060c(Class<?> cls) {
            if (cls == this.f65907b) {
                return this.f65908c;
            }
            return null;
        }
    }

    /* renamed from: e.k.a.c.l0.s.l$f */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/l$f.class */
    public static final class C23794f {

        /* renamed from: a */
        public final Class<?> f65909a;

        /* renamed from: b */
        public final AbstractC23890n<Object> f65910b;

        public C23794f(Class<?> cls, AbstractC23890n<Object> abstractC23890n) {
            this.f65909a = cls;
            this.f65910b = abstractC23890n;
        }
    }

    public AbstractC23788l(AbstractC23788l abstractC23788l) {
        this.f65898a = abstractC23788l.f65898a;
    }

    public AbstractC23788l(boolean z) {
        this.f65898a = z;
    }

    /* renamed from: a */
    public final C23792d m6062a(AbstractC23698i abstractC23698i, AbstractC23425a0 abstractC23425a0, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23890n<Object> m6879u = abstractC23425a0.m6879u(abstractC23698i, abstractC23462d);
        return new C23792d(m6879u, mo6061b(abstractC23698i.f65728a, m6879u));
    }

    /* renamed from: b */
    public abstract AbstractC23788l mo6061b(Class<?> cls, AbstractC23890n<Object> abstractC23890n);

    /* renamed from: c */
    public abstract AbstractC23890n<Object> mo6060c(Class<?> cls);
}
