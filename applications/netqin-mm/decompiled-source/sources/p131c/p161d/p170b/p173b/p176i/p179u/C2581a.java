package p131c.p161d.p170b.p173b.p176i.p179u;

import java.util.Arrays;
import p131c.p161d.p170b.p173b.p176i.AbstractC2562h;
import p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2588f;
/* renamed from: c.d.b.b.i.u.a */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/u/a.class */
public final class C2581a extends AbstractC2588f {

    /* renamed from: a */
    public final Iterable<AbstractC2562h> f9639a;

    /* renamed from: b */
    public final byte[] f9640b;

    /* renamed from: c.d.b.b.i.u.a$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/u/a$b.class */
    public static final class C2583b extends AbstractC2588f.AbstractC2589a {

        /* renamed from: a */
        public Iterable<AbstractC2562h> f9641a;

        /* renamed from: b */
        public byte[] f9642b;

        @Override // p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2588f.AbstractC2589a
        /* renamed from: a */
        public AbstractC2588f.AbstractC2589a mo29474a(Iterable<AbstractC2562h> iterable) {
            if (iterable != null) {
                this.f9641a = iterable;
                return this;
            }
            throw new NullPointerException("Null events");
        }

        @Override // p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2588f.AbstractC2589a
        /* renamed from: a */
        public AbstractC2588f.AbstractC2589a mo29473a(byte[] bArr) {
            this.f9642b = bArr;
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2588f.AbstractC2589a
        /* renamed from: a */
        public AbstractC2588f mo29475a() {
            String str = "";
            if (this.f9641a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new C2581a(this.f9641a, this.f9642b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    public C2581a(Iterable<AbstractC2562h> iterable, byte[] bArr) {
        this.f9639a = iterable;
        this.f9640b = bArr;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2588f
    /* renamed from: a */
    public Iterable<AbstractC2562h> mo29478a() {
        return this.f9639a;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2588f
    /* renamed from: b */
    public byte[] mo29477b() {
        return this.f9640b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
        if (java.util.Arrays.equals(r3.f9640b, r0 instanceof p131c.p161d.p170b.p173b.p176i.p179u.C2581a ? ((p131c.p161d.p170b.p173b.p176i.p179u.C2581a) r0).f9640b : r0.mo29477b()) != false) goto L_0x004c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2588f
            if (r0 == 0) goto L_0x004e
            r0 = r4
            c.d.b.b.i.u.f r0 = (p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2588f) r0
            r4 = r0
            r0 = r3
            java.lang.Iterable<c.d.b.b.i.h> r0 = r0.f9639a
            r1 = r4
            java.lang.Iterable r1 = r1.mo29478a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004a
            r0 = r3
            byte[] r0 = r0.f9640b
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof p131c.p161d.p170b.p173b.p176i.p179u.C2581a
            if (r0 == 0) goto L_0x003a
            r0 = r4
            c.d.b.b.i.u.a r0 = (p131c.p161d.p170b.p173b.p176i.p179u.C2581a) r0
            byte[] r0 = r0.f9640b
            r4 = r0
            goto L_0x003f
        L_0x003a:
            r0 = r4
            byte[] r0 = r0.mo29477b()
            r4 = r0
        L_0x003f:
            r0 = r6
            r1 = r4
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L_0x004a
            goto L_0x004c
        L_0x004a:
            r0 = 0
            r5 = r0
        L_0x004c:
            r0 = r5
            return r0
        L_0x004e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p173b.p176i.p179u.C2581a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ((this.f9639a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f9640b);
    }

    public String toString() {
        return "BackendRequest{events=" + this.f9639a + ", extras=" + Arrays.toString(this.f9640b) + "}";
    }
}
