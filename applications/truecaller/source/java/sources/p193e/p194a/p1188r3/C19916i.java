package p193e.p194a.p1188r3;

import p193e.p194a.p1188r3.C19910h;
import q3.a.w2.q;
import q3.a.w2.x;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.r3.i */
/* loaded from: classes8-dex2jar.jar:e/a/r3/i.class */
public final class C19916i extends m implements l<AbstractC19898b, s> {

    /* renamed from: b */
    public final /* synthetic */ C19910h.C19911a.C19915d f56361b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19916i(C19910h.C19911a.C19915d c19915d) {
        super(1);
        this.f56361b = c19915d;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x0028 -> B:6:0x0024). Please submit an issue!!! */
    /* renamed from: d */
    public Object m11814d(Object obj) {
        AbstractC19898b abstractC19898b = (AbstractC19898b) obj;
        s1.z.c.l.e(abstractC19898b, "it");
        x xVar = this.f56361b.f56359b;
        try {
            if (!xVar.i()) {
                xVar.offer(abstractC19898b);
            }
        } catch (q e) {
        }
        return s.a;
    }
}
