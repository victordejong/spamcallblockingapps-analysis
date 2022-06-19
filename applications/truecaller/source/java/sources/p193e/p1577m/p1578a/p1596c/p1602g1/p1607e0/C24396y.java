package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.Format;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24771c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.y */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/y.class */
public final class C24396y implements AbstractC24393v {

    /* renamed from: a */
    public C24771c0 f68048a;

    /* renamed from: b */
    public AbstractC24422s f68049b;

    /* renamed from: c */
    public boolean f68050c;

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24393v
    /* renamed from: b */
    public void mo5165b(C24771c0 c24771c0, AbstractC24409i abstractC24409i, AbstractC24361c0.C24365d c24365d) {
        this.f68048a = c24771c0;
        c24365d.m5203a();
        AbstractC24422s mo4960i = abstractC24409i.mo4960i(c24365d.m5201c(), 4);
        this.f68049b = mo4960i;
        mo4960i.mo4928b(Format.m39250k(c24365d.m5202b(), "application/x-scte35", null, -1, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r1v2 */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24393v
    /* renamed from: d */
    public void mo5164d(C24798t c24798t) {
        ?? r11 = true;
        if (!this.f68050c) {
            if (this.f68048a.m4631c() == -9223372036854775807L) {
                return;
            }
            this.f68049b.mo4928b(Format.m39251i(null, "application/x-scte35", this.f68048a.m4631c()));
            this.f68050c = true;
        }
        int m4545a = c24798t.m4545a();
        this.f68049b.mo4929a(c24798t, m4545a);
        AbstractC24422s abstractC24422s = this.f68049b;
        C24771c0 c24771c0 = this.f68048a;
        if (c24771c0.f69425c != -9223372036854775807L) {
            r11 = c24771c0.f69424b + c24771c0.f69425c;
        } else {
            ?? r0 = c24771c0.f69423a;
            if (r0 != RecyclerView.FOREVER_NS) {
                r11 = r0;
            }
        }
        abstractC24422s.mo4927c(r11 == true ? 1L : 0L, 1, m4545a, 0, null);
    }
}
