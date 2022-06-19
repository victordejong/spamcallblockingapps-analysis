package p193e.p1411b.p1412a.p1420y.p1421j;

import android.graphics.PointF;
import e.b.a.w.c.i;
import e.b.a.w.c.j;
import java.util.List;
import p193e.p1411b.p1412a.p1415c0.C21907a;
import p193e.p1411b.p1412a.p1416w.p1418c.AbstractC21959a;
/* renamed from: e.b.a.y.j.e */
/* loaded from: classes-dex2jar.jar:e/b/a/y/j/e.class */
public class C21980e implements AbstractC21984m<PointF, PointF> {

    /* renamed from: a */
    public final List<C21907a<PointF>> f61033a;

    public C21980e(List<C21907a<PointF>> list) {
        this.f61033a = list;
    }

    @Override // p193e.p1411b.p1412a.p1420y.p1421j.AbstractC21984m
    /* renamed from: e */
    public boolean mo8839e() {
        boolean z = false;
        if (this.f61033a.size() == 1) {
            z = false;
            if (this.f61033a.get(0).m8911d()) {
                z = true;
            }
        }
        return z;
    }

    @Override // p193e.p1411b.p1412a.p1420y.p1421j.AbstractC21984m
    /* renamed from: f */
    public AbstractC21959a<PointF, PointF> mo8840f() {
        return this.f61033a.get(0).m8911d() ? new j(this.f61033a) : new i(this.f61033a);
    }

    @Override // p193e.p1411b.p1412a.p1420y.p1421j.AbstractC21984m
    /* renamed from: g */
    public List<C21907a<PointF>> mo8838g() {
        return this.f61033a;
    }
}
