package p081h.p203i.p204a.p206b;

import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
/* renamed from: h.i.a.b.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/a.class */
public final class C6492a<T> extends AbstractC6494c<T> {

    /* renamed from: a */
    public final Integer f16171a;

    /* renamed from: b */
    public final T f16172b;

    /* renamed from: c */
    public final EnumC6495d f16173c;

    public C6492a(@Nullable Integer num, T t, EnumC6495d dVar) {
        this.f16171a = num;
        if (t != null) {
            this.f16172b = t;
            if (dVar != null) {
                this.f16173c = dVar;
                return;
            }
            throw new NullPointerException("Null priority");
        }
        throw new NullPointerException("Null payload");
    }

    @Override // p081h.p203i.p204a.p206b.AbstractC6494c
    @Nullable
    /* renamed from: a */
    public Integer mo22466a() {
        return this.f16171a;
    }

    @Override // p081h.p203i.p204a.p206b.AbstractC6494c
    /* renamed from: b */
    public T mo22464b() {
        return this.f16172b;
    }

    @Override // p081h.p203i.p204a.p206b.AbstractC6494c
    /* renamed from: c */
    public EnumC6495d mo22462c() {
        return this.f16173c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004c, code lost:
        if (r3.f16173c.equals(r0.mo22462c()) != false) goto L_0x0054;
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
            boolean r0 = r0 instanceof p081h.p203i.p204a.p206b.AbstractC6494c
            if (r0 == 0) goto L_0x0056
            r0 = r4
            h.i.a.b.c r0 = (p081h.p203i.p204a.p206b.AbstractC6494c) r0
            r4 = r0
            r0 = r3
            java.lang.Integer r0 = r0.f16171a
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0028
            r0 = r4
            java.lang.Integer r0 = r0.mo22466a()
            if (r0 != 0) goto L_0x0052
            goto L_0x0033
        L_0x0028:
            r0 = r6
            r1 = r4
            java.lang.Integer r1 = r1.mo22466a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0052
        L_0x0033:
            r0 = r3
            T r0 = r0.f16172b
            r1 = r4
            java.lang.Object r1 = r1.mo22464b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0052
            r0 = r3
            h.i.a.b.d r0 = r0.f16173c
            r1 = r4
            h.i.a.b.d r1 = r1.mo22462c()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0052
            goto L_0x0054
        L_0x0052:
            r0 = 0
            r5 = r0
        L_0x0054:
            r0 = r5
            return r0
        L_0x0056:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p206b.C6492a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        Integer num = this.f16171a;
        return (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f16172b.hashCode()) * 1000003) ^ this.f16173c.hashCode();
    }

    public String toString() {
        return "Event{code=" + this.f16171a + ", payload=" + this.f16172b + ", priority=" + this.f16173c + CssParser.BLOCK_END;
    }
}
