package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import androidx.media2.exoplayer.external.Format;
import androidx.recyclerview.widget.RecyclerView;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27443v;
/* renamed from: n3.y.b.a.q0.w.y */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/y.class */
public final class C27295y implements AbstractC27292v {

    /* renamed from: a */
    public C27443v f76786a;

    /* renamed from: b */
    public AbstractC27190p f76787b;

    /* renamed from: c */
    public boolean f76788c;

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27292v
    /* renamed from: b */
    public void mo610b(C27443v c27443v, AbstractC27180h abstractC27180h, AbstractC27260c0.C27264d c27264d) {
        this.f76786a = c27443v;
        c27264d.m647a();
        AbstractC27190p m750i = abstractC27180h.m750i(c27264d.m645c(), 4);
        this.f76787b = m750i;
        m750i.mo740c(Format.m42839n(c27264d.m646b(), "application/x-scte35", null, -1, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r1v2 */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27292v
    /* renamed from: d */
    public void mo609d(C27434m c27434m) {
        ?? r11 = true;
        if (!this.f76788c) {
            if (this.f76786a.m295c() == -9223372036854775807L) {
                return;
            }
            this.f76787b.mo740c(Format.m42840m(null, "application/x-scte35", this.f76786a.m295c()));
            this.f76788c = true;
        }
        int m340a = c27434m.m340a();
        this.f76787b.mo739d(c27434m, m340a);
        AbstractC27190p abstractC27190p = this.f76787b;
        C27443v c27443v = this.f76786a;
        if (c27443v.f77227c != -9223372036854775807L) {
            r11 = c27443v.f77226b + c27443v.f77227c;
        } else {
            ?? r0 = c27443v.f77225a;
            if (r0 != RecyclerView.FOREVER_NS) {
                r11 = r0;
            }
        }
        abstractC27190p.mo741b(r11 == true ? 1L : 0L, 1, m340a, 0, null);
    }
}
