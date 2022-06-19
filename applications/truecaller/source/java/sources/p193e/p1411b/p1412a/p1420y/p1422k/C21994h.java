package p193e.p1411b.p1412a.p1420y.p1422k;

import e.b.a.w.b.l;
import e.b.a.y.l.b;
import p193e.p1411b.p1412a.C21906c;
import p193e.p1411b.p1412a.C21922k;
import p193e.p1411b.p1412a.p1416w.p1417b.AbstractC21953c;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.y.k.h */
/* loaded from: classes-dex2jar.jar:e/b/a/y/k/h.class */
public class C21994h implements AbstractC21987b {

    /* renamed from: a */
    public final String f61089a;

    /* renamed from: b */
    public final EnumC21995a f61090b;

    /* renamed from: c */
    public final boolean f61091c;

    /* renamed from: e.b.a.y.k.h$a */
    /* loaded from: classes-dex2jar.jar:e/b/a/y/k/h$a.class */
    public enum EnumC21995a {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS
    }

    public C21994h(String str, EnumC21995a enumC21995a, boolean z) {
        this.f61089a = str;
        this.f61090b = enumC21995a;
        this.f61091c = z;
    }

    @Override // p193e.p1411b.p1412a.p1420y.p1422k.AbstractC21987b
    /* renamed from: a */
    public AbstractC21953c mo8835a(C21922k c21922k, b bVar) {
        if (!c21922k.f60862k) {
            C21906c.m8915b("Animation contains merge paths but they are disabled.");
            return null;
        }
        return new l(this);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MergePaths{mode=");
        m8728C.append(this.f61090b);
        m8728C.append('}');
        return m8728C.toString();
    }
}
