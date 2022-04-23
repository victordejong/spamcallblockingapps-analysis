package p081h.p203i.p204a.p206b.p209j.p212u;

import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.Arrays;
import p081h.p203i.p204a.p206b.p209j.AbstractC6571h;
import p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6597f;
/* renamed from: h.i.a.b.j.u.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/u/a.class */
public final class C6590a extends AbstractC6597f {

    /* renamed from: a */
    public final Iterable<AbstractC6571h> f16396a;

    /* renamed from: b */
    public final byte[] f16397b;

    /* renamed from: h.i.a.b.j.u.a$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/u/a$b.class */
    public static final class C6592b extends AbstractC6597f.AbstractC6598a {

        /* renamed from: a */
        public Iterable<AbstractC6571h> f16398a;

        /* renamed from: b */
        public byte[] f16399b;

        @Override // p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6597f.AbstractC6598a
        /* renamed from: a */
        public AbstractC6597f.AbstractC6598a mo22266a(Iterable<AbstractC6571h> iterable) {
            if (iterable != null) {
                this.f16398a = iterable;
                return this;
            }
            throw new NullPointerException("Null events");
        }

        @Override // p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6597f.AbstractC6598a
        /* renamed from: a */
        public AbstractC6597f.AbstractC6598a mo22265a(@Nullable byte[] bArr) {
            this.f16399b = bArr;
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6597f.AbstractC6598a
        /* renamed from: a */
        public AbstractC6597f mo22267a() {
            String str = "";
            if (this.f16398a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new C6590a(this.f16398a, this.f16399b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    public C6590a(Iterable<AbstractC6571h> iterable, @Nullable byte[] bArr) {
        this.f16396a = iterable;
        this.f16397b = bArr;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6597f
    /* renamed from: a */
    public Iterable<AbstractC6571h> mo22270a() {
        return this.f16396a;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6597f
    @Nullable
    /* renamed from: b */
    public byte[] mo22269b() {
        return this.f16397b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
        if (java.util.Arrays.equals(r3.f16397b, r0 instanceof p081h.p203i.p204a.p206b.p209j.p212u.C6590a ? ((p081h.p203i.p204a.p206b.p209j.p212u.C6590a) r0).f16397b : r0.mo22269b()) != false) goto L_0x004c;
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
            boolean r0 = r0 instanceof p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6597f
            if (r0 == 0) goto L_0x004e
            r0 = r4
            h.i.a.b.j.u.f r0 = (p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6597f) r0
            r4 = r0
            r0 = r3
            java.lang.Iterable<h.i.a.b.j.h> r0 = r0.f16396a
            r1 = r4
            java.lang.Iterable r1 = r1.mo22270a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004a
            r0 = r3
            byte[] r0 = r0.f16397b
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof p081h.p203i.p204a.p206b.p209j.p212u.C6590a
            if (r0 == 0) goto L_0x003a
            r0 = r4
            h.i.a.b.j.u.a r0 = (p081h.p203i.p204a.p206b.p209j.p212u.C6590a) r0
            byte[] r0 = r0.f16397b
            r4 = r0
            goto L_0x003f
        L_0x003a:
            r0 = r4
            byte[] r0 = r0.mo22269b()
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
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p206b.p209j.p212u.C6590a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ((this.f16396a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f16397b);
    }

    public String toString() {
        return "BackendRequest{events=" + this.f16396a + ", extras=" + Arrays.toString(this.f16397b) + CssParser.BLOCK_END;
    }
}
