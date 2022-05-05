package p081h.p203i.p204a.p206b.p207i.p208f;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.List;
/* renamed from: h.i.a.b.i.f.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/i/f/d.class */
public final class C6519d extends AbstractC6533j {

    /* renamed from: a */
    public final List<AbstractC6539m> f16232a;

    public C6519d(List<AbstractC6539m> list) {
        if (list != null) {
            this.f16232a = list;
            return;
        }
        throw new NullPointerException("Null logRequests");
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6533j
    @NonNull
    /* renamed from: a */
    public List<AbstractC6539m> mo22410a() {
        return this.f16232a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC6533j) {
            return this.f16232a.equals(((AbstractC6533j) obj).mo22410a());
        }
        return false;
    }

    public int hashCode() {
        return this.f16232a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.f16232a + CssParser.BLOCK_END;
    }
}
