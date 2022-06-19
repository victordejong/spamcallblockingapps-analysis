package p193e.p1411b.p1412a.p1420y.p1422k;

import android.graphics.Path;
import e.b.a.w.b.g;
import e.b.a.y.j.a;
import e.b.a.y.j.d;
import e.b.a.y.l.b;
import p193e.p1411b.p1412a.C21922k;
import p193e.p1411b.p1412a.p1416w.p1417b.AbstractC21953c;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.y.k.m */
/* loaded from: classes-dex2jar.jar:e/b/a/y/k/m.class */
public class C22001m implements AbstractC21987b {

    /* renamed from: a */
    public final boolean f61125a;

    /* renamed from: b */
    public final Path.FillType f61126b;

    /* renamed from: c */
    public final String f61127c;

    /* renamed from: d */
    public final a f61128d;

    /* renamed from: e */
    public final d f61129e;

    /* renamed from: f */
    public final boolean f61130f;

    public C22001m(String str, boolean z, Path.FillType fillType, a aVar, d dVar, boolean z2) {
        this.f61127c = str;
        this.f61125a = z;
        this.f61126b = fillType;
        this.f61128d = aVar;
        this.f61129e = dVar;
        this.f61130f = z2;
    }

    @Override // p193e.p1411b.p1412a.p1420y.p1422k.AbstractC21987b
    /* renamed from: a */
    public AbstractC21953c mo8835a(C21922k c21922k, b bVar) {
        return new g(c21922k, bVar, this);
    }

    public String toString() {
        return C22128a.m8598m(C22128a.m8728C("ShapeFill{color=, fillEnabled="), this.f61125a, '}');
    }
}
