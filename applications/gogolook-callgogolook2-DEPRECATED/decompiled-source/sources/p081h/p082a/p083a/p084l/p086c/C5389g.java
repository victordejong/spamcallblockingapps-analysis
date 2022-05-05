package p081h.p082a.p083a.p084l.p086c;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
import p081h.p082a.p083a.p088n.p090l.C5469g;
import p081h.p082a.p083a.p088n.p090l.C5486l;
/* renamed from: h.a.a.l.c.g */
/* loaded from: classes-dex2jar.jar:h/a/a/l/c/g.class */
public class C5389g {

    /* renamed from: a */
    public final List<AbstractC5382a<C5486l, Path>> f13504a;

    /* renamed from: b */
    public final List<AbstractC5382a<Integer, Integer>> f13505b;

    /* renamed from: c */
    public final List<C5469g> f13506c;

    public C5389g(List<C5469g> list) {
        this.f13506c = list;
        this.f13504a = new ArrayList(list.size());
        this.f13505b = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            this.f13504a.add(list.get(i).m25408b().mo25446a());
            this.f13505b.add(list.get(i).m25407c().mo25446a());
        }
    }

    /* renamed from: a */
    public List<AbstractC5382a<C5486l, Path>> m25524a() {
        return this.f13504a;
    }

    /* renamed from: b */
    public List<C5469g> m25523b() {
        return this.f13506c;
    }

    /* renamed from: c */
    public List<AbstractC5382a<Integer, Integer>> m25522c() {
        return this.f13505b;
    }
}
