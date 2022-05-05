package p081h.p203i.p204a.p206b.p209j.p217y.p218j;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.Map;
import p081h.p203i.p204a.p206b.EnumC6495d;
import p081h.p203i.p204a.p206b.p209j.p210a0.AbstractC6550a;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6634g;
/* renamed from: h.i.a.b.j.y.j.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/j/c.class */
public final class C6628c extends AbstractC6634g {

    /* renamed from: a */
    public final AbstractC6550a f16456a;

    /* renamed from: b */
    public final Map<EnumC6495d, AbstractC6634g.AbstractC6636b> f16457b;

    public C6628c(AbstractC6550a aVar, Map<EnumC6495d, AbstractC6634g.AbstractC6636b> map) {
        if (aVar != null) {
            this.f16456a = aVar;
            if (map != null) {
                this.f16457b = map;
                return;
            }
            throw new NullPointerException("Null values");
        }
        throw new NullPointerException("Null clock");
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6634g
    /* renamed from: a */
    public AbstractC6550a mo22211a() {
        return this.f16456a;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6634g
    /* renamed from: b */
    public Map<EnumC6495d, AbstractC6634g.AbstractC6636b> mo22203b() {
        return this.f16457b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC6634g)) {
            return false;
        }
        AbstractC6634g gVar = (AbstractC6634g) obj;
        if (!this.f16456a.equals(gVar.mo22211a()) || !this.f16457b.equals(gVar.mo22203b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f16456a.hashCode() ^ 1000003) * 1000003) ^ this.f16457b.hashCode();
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.f16456a + ", values=" + this.f16457b + CssParser.BLOCK_END;
    }
}
