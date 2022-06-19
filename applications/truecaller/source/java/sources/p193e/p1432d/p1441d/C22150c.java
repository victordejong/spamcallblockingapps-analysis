package p193e.p1432d.p1441d;

import java.util.ArrayList;
import java.util.List;
/* renamed from: e.d.d.c */
/* loaded from: classes-dex2jar.jar:e/d/d/c.class */
public class C22150c implements AbstractC22152e {

    /* renamed from: b */
    public C22130b f61556b;

    /* renamed from: a */
    public final List<C22130b> f61555a = new ArrayList();

    /* renamed from: d */
    public final List<AbstractC22151d> f61558d = new ArrayList();

    /* renamed from: c */
    public final int f61557c = -1073741824;

    /* JADX WARN: Removed duplicated region for block: B:269:0x07ec  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x07fb  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x0910  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0924  */
    @Override // p193e.p1432d.p1441d.AbstractC22152e
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo8504a(p193e.p1432d.p1441d.C22160m r16) {
        /*
            Method dump skipped, instructions count: 3760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1432d.p1441d.C22150c.mo8504a(e.d.d.m):void");
    }

    @Override // p193e.p1432d.p1441d.AbstractC22152e
    /* renamed from: b */
    public void mo8503b() {
        C22130b c22130b = this.f61556b;
        c22130b.f61466a.f61520k = c22130b.m8538c();
        for (AbstractC22151d abstractC22151d : this.f61558d) {
            abstractC22151d.mo8530b(this.f61556b);
        }
        int size = this.f61555a.size();
        if (size > 1) {
            C22130b c22130b2 = this.f61555a.get(size - 2);
            C22130b c22130b3 = this.f61556b;
            if (c22130b2.f61481p == null) {
                c22130b2.f61481p = new ArrayList();
            }
            c22130b2.f61481p.add(c22130b3);
            this.f61556b = c22130b2;
        } else {
            this.f61556b = null;
        }
        this.f61555a.remove(size - 1);
    }

    @Override // p193e.p1432d.p1441d.AbstractC22152e
    /* renamed from: c */
    public void mo8502c() {
        for (AbstractC22151d abstractC22151d : this.f61558d) {
            abstractC22151d.onStart();
        }
    }

    @Override // p193e.p1432d.p1441d.AbstractC22152e
    /* renamed from: d */
    public void mo8501d() {
        for (AbstractC22151d abstractC22151d : this.f61558d) {
            abstractC22151d.mo8531a();
        }
    }

    @Override // p193e.p1432d.p1441d.AbstractC22152e
    /* renamed from: e */
    public void mo8500e() {
        C22130b c22130b = new C22130b(this.f61557c, null);
        this.f61556b = c22130b;
        this.f61555a.add(c22130b);
    }
}
