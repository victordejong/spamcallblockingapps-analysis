package p193e.p1411b.p1412a.p1420y.p1422k;

import android.graphics.PointF;
import e.b.a.w.b.n;
import e.b.a.y.j.b;
import p193e.p1411b.p1412a.C21922k;
import p193e.p1411b.p1412a.p1416w.p1417b.AbstractC21953c;
import p193e.p1411b.p1412a.p1420y.p1421j.AbstractC21984m;
/* renamed from: e.b.a.y.k.i */
/* loaded from: classes-dex2jar.jar:e/b/a/y/k/i.class */
public class C21996i implements AbstractC21987b {

    /* renamed from: a */
    public final String f61098a;

    /* renamed from: b */
    public final EnumC21997a f61099b;

    /* renamed from: c */
    public final b f61100c;

    /* renamed from: d */
    public final AbstractC21984m<PointF, PointF> f61101d;

    /* renamed from: e */
    public final b f61102e;

    /* renamed from: f */
    public final b f61103f;

    /* renamed from: g */
    public final b f61104g;

    /* renamed from: h */
    public final b f61105h;

    /* renamed from: i */
    public final b f61106i;

    /* renamed from: j */
    public final boolean f61107j;

    /* renamed from: e.b.a.y.k.i$a */
    /* loaded from: classes-dex2jar.jar:e/b/a/y/k/i$a.class */
    public enum EnumC21997a {
        STAR(1),
        POLYGON(2);
        

        /* renamed from: a */
        public final int f61111a;

        EnumC21997a(int i) {
            this.f61111a = i;
        }
    }

    public C21996i(String str, EnumC21997a enumC21997a, b bVar, AbstractC21984m<PointF, PointF> abstractC21984m, b bVar2, b bVar3, b bVar4, b bVar5, b bVar6, boolean z) {
        this.f61098a = str;
        this.f61099b = enumC21997a;
        this.f61100c = bVar;
        this.f61101d = abstractC21984m;
        this.f61102e = bVar2;
        this.f61103f = bVar3;
        this.f61104g = bVar4;
        this.f61105h = bVar5;
        this.f61106i = bVar6;
        this.f61107j = z;
    }

    @Override // p193e.p1411b.p1412a.p1420y.p1422k.AbstractC21987b
    /* renamed from: a */
    public AbstractC21953c mo8835a(C21922k c21922k, e.b.a.y.l.b bVar) {
        return new n(c21922k, bVar, this);
    }
}
