package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.Arrays;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.e */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/e.class */
public final class C9666e extends AbstractC9715v.AbstractC9719c.AbstractC9721b {

    /* renamed from: a */
    public final String f21999a;

    /* renamed from: b */
    public final byte[] f22000b;

    /* renamed from: h.i.c.n.d.j.e$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/e$b.class */
    public static final class C9668b extends AbstractC9715v.AbstractC9719c.AbstractC9721b.AbstractC9722a {

        /* renamed from: a */
        public String f22001a;

        /* renamed from: b */
        public byte[] f22002b;

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9719c.AbstractC9721b.AbstractC9722a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9719c.AbstractC9721b.AbstractC9722a mo14576a(String str) {
            if (str != null) {
                this.f22001a = str;
                return this;
            }
            throw new NullPointerException("Null filename");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9719c.AbstractC9721b.AbstractC9722a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9719c.AbstractC9721b.AbstractC9722a mo14575a(byte[] bArr) {
            if (bArr != null) {
                this.f22002b = bArr;
                return this;
            }
            throw new NullPointerException("Null contents");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9719c.AbstractC9721b.AbstractC9722a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9719c.AbstractC9721b mo14577a() {
            String str = "";
            if (this.f22001a == null) {
                str = " filename";
            }
            String str2 = str;
            if (this.f22002b == null) {
                str2 = str + " contents";
            }
            if (str2.isEmpty()) {
                return new C9666e(this.f22001a, this.f22002b);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }
    }

    public C9666e(String str, byte[] bArr) {
        this.f21999a = str;
        this.f22000b = bArr;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9719c.AbstractC9721b
    @NonNull
    /* renamed from: a */
    public byte[] mo14580a() {
        return this.f22000b;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9719c.AbstractC9721b
    @NonNull
    /* renamed from: b */
    public String mo14579b() {
        return this.f21999a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
        if (java.util.Arrays.equals(r3.f22000b, r0 instanceof p081h.p203i.p325c.p337n.p338d.p343j.C9666e ? ((p081h.p203i.p325c.p337n.p338d.p343j.C9666e) r0).f22000b : r0.mo14580a()) != false) goto L_0x004c;
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
            boolean r0 = r0 instanceof p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9719c.AbstractC9721b
            if (r0 == 0) goto L_0x004e
            r0 = r4
            h.i.c.n.d.j.v$c$b r0 = (p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9719c.AbstractC9721b) r0
            r4 = r0
            r0 = r3
            java.lang.String r0 = r0.f21999a
            r1 = r4
            java.lang.String r1 = r1.mo14579b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004a
            r0 = r3
            byte[] r0 = r0.f22000b
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof p081h.p203i.p325c.p337n.p338d.p343j.C9666e
            if (r0 == 0) goto L_0x003a
            r0 = r4
            h.i.c.n.d.j.e r0 = (p081h.p203i.p325c.p337n.p338d.p343j.C9666e) r0
            byte[] r0 = r0.f22000b
            r4 = r0
            goto L_0x003f
        L_0x003a:
            r0 = r4
            byte[] r0 = r0.mo14580a()
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
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p325c.p337n.p338d.p343j.C9666e.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ((this.f21999a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f22000b);
    }

    public String toString() {
        return "File{filename=" + this.f21999a + ", contents=" + Arrays.toString(this.f22000b) + CssParser.BLOCK_END;
    }
}
