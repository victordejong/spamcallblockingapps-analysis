package p081h.p203i.p204a.p206b.p209j.p217y.p219k;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p204a.p206b.p209j.AbstractC6571h;
import p081h.p203i.p204a.p206b.p209j.AbstractC6580m;
/* renamed from: h.i.a.b.j.y.k.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/b.class */
public final class C6655b extends AbstractC6678i {

    /* renamed from: a */
    public final long f16526a;

    /* renamed from: b */
    public final AbstractC6580m f16527b;

    /* renamed from: c */
    public final AbstractC6571h f16528c;

    public C6655b(long j, AbstractC6580m mVar, AbstractC6571h hVar) {
        this.f16526a = j;
        if (mVar != null) {
            this.f16527b = mVar;
            if (hVar != null) {
                this.f16528c = hVar;
                return;
            }
            throw new NullPointerException("Null event");
        }
        throw new NullPointerException("Null transportContext");
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6678i
    /* renamed from: a */
    public AbstractC6571h mo22087a() {
        return this.f16528c;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6678i
    /* renamed from: b */
    public long mo22085b() {
        return this.f16526a;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6678i
    /* renamed from: c */
    public AbstractC6580m mo22084c() {
        return this.f16527b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC6678i)) {
            return false;
        }
        AbstractC6678i iVar = (AbstractC6678i) obj;
        if (this.f16526a != iVar.mo22085b() || !this.f16527b.equals(iVar.mo22084c()) || !this.f16528c.equals(iVar.mo22087a())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f16526a;
        int i = (int) (j ^ (j >>> 32));
        return this.f16528c.hashCode() ^ ((((i ^ 1000003) * 1000003) ^ this.f16527b.hashCode()) * 1000003);
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f16526a + ", transportContext=" + this.f16527b + ", event=" + this.f16528c + CssParser.BLOCK_END;
    }
}
