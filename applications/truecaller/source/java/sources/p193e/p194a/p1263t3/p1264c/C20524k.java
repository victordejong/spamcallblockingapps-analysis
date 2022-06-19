package p193e.p194a.p1263t3.p1264c;

import java.util.List;
import o3.a;
import p193e.p194a.p1263t3.p1264c.AbstractC20513e;
import p193e.p194a.p1263t3.p1264c.AbstractC20519g;
import p193e.p194a.p437c.p524b.AbstractC9687f;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.t3.c.k */
/* loaded from: classes9-dex2jar.jar:e/a/t3/c/k.class */
public final class C20524k implements AbstractC20519g {

    /* renamed from: a */
    public List<? extends AbstractC20513e> f57603a = s.a;

    /* renamed from: b */
    public final a<? extends AbstractC20519g.AbstractC20520a> f57604b;

    /* renamed from: c */
    public final AbstractC9687f f57605c;

    public C20524k(a<? extends AbstractC20519g.AbstractC20520a> aVar, AbstractC9687f abstractC9687f) {
        l.e(aVar, "listener");
        l.e(abstractC9687f, "insightsFeatureControl");
        this.f57604b = aVar;
        this.f57605c = abstractC9687f;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x018f  */
    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo10095G(p193e.p194a.p1263t3.p1264c.AbstractC20518f r9, int r10) {
        /*
            Method dump skipped, instructions count: 935
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1263t3.p1264c.C20524k.mo10095G(java.lang.Object, int):void");
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: Kb */
    public int mo10091Kb() {
        return this.f57603a.size();
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: Za */
    public int mo10064Za(int i) {
        AbstractC20513e abstractC20513e = this.f57603a.get(i);
        return abstractC20513e instanceof AbstractC20513e.C20517d ? 2131559476 : abstractC20513e instanceof AbstractC20513e.C20516c ? 2131558759 : abstractC20513e instanceof AbstractC20513e.C20515b ? 2131558757 : 2131558754;
    }

    @Override // p193e.p194a.p1263t3.p1264c.AbstractC20519g
    /* renamed from: d9 */
    public void mo11071d9(List<? extends AbstractC20513e> list) {
        l.e(list, "<set-?>");
        this.f57603a = list;
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: gc */
    public long mo10061gc(int i) {
        return i;
    }
}
