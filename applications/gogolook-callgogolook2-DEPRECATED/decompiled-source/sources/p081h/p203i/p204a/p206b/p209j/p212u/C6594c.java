package p081h.p203i.p204a.p206b.p209j.p212u;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p204a.p206b.p209j.p210a0.AbstractC6550a;
/* renamed from: h.i.a.b.j.u.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/u/c.class */
public final class C6594c extends AbstractC6601h {

    /* renamed from: a */
    public final Context f16402a;

    /* renamed from: b */
    public final AbstractC6550a f16403b;

    /* renamed from: c */
    public final AbstractC6550a f16404c;

    /* renamed from: d */
    public final String f16405d;

    public C6594c(Context context, AbstractC6550a aVar, AbstractC6550a aVar2, String str) {
        if (context != null) {
            this.f16402a = context;
            if (aVar != null) {
                this.f16403b = aVar;
                if (aVar2 != null) {
                    this.f16404c = aVar2;
                    if (str != null) {
                        this.f16405d = str;
                        return;
                    }
                    throw new NullPointerException("Null backendName");
                }
                throw new NullPointerException("Null monotonicClock");
            }
            throw new NullPointerException("Null wallClock");
        }
        throw new NullPointerException("Null applicationContext");
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6601h
    /* renamed from: a */
    public Context mo22259a() {
        return this.f16402a;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6601h
    @NonNull
    /* renamed from: b */
    public String mo22257b() {
        return this.f16405d;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6601h
    /* renamed from: c */
    public AbstractC6550a mo22256c() {
        return this.f16404c;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6601h
    /* renamed from: d */
    public AbstractC6550a mo22255d() {
        return this.f16403b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC6601h)) {
            return false;
        }
        AbstractC6601h hVar = (AbstractC6601h) obj;
        if (!this.f16402a.equals(hVar.mo22259a()) || !this.f16403b.equals(hVar.mo22255d()) || !this.f16404c.equals(hVar.mo22256c()) || !this.f16405d.equals(hVar.mo22257b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((this.f16402a.hashCode() ^ 1000003) * 1000003) ^ this.f16403b.hashCode()) * 1000003) ^ this.f16404c.hashCode()) * 1000003) ^ this.f16405d.hashCode();
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.f16402a + ", wallClock=" + this.f16403b + ", monotonicClock=" + this.f16404c + ", backendName=" + this.f16405d + CssParser.BLOCK_END;
    }
}
