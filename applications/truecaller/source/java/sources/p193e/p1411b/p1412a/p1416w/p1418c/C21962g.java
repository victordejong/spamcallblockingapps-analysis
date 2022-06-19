package p193e.p1411b.p1412a.p1416w.p1418c;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
import p193e.p1411b.p1412a.p1420y.p1422k.C21992g;
import p193e.p1411b.p1412a.p1420y.p1422k.C22000l;
/* renamed from: e.b.a.w.c.g */
/* loaded from: classes-dex2jar.jar:e/b/a/w/c/g.class */
public class C21962g {

    /* renamed from: a */
    public final List<AbstractC21959a<C22000l, Path>> f60963a;

    /* renamed from: b */
    public final List<AbstractC21959a<Integer, Integer>> f60964b;

    /* renamed from: c */
    public final List<C21992g> f60965c;

    public C21962g(List<C21992g> list) {
        this.f60965c = list;
        this.f60963a = new ArrayList(list.size());
        this.f60964b = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            this.f60963a.add(list.get(i).f61082b.f());
            this.f60964b.add(list.get(i).f61083c.f());
        }
    }
}
