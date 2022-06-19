package p193e.p194a.p1129p5;

import e.m.e.k;
import e.m.e.u;
import java.lang.reflect.Type;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.p5.m */
/* loaded from: classes15-dex2jar.jar:e/a/p5/m.class */
public final class C19245m implements AbstractC19243l {

    /* renamed from: a */
    public final g f53614a = C25225a.m3978P1(C19246a.f53615b);

    /* renamed from: e.a.p5.m$a */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/m$a.class */
    public static final class C19246a extends m implements a<k> {

        /* renamed from: b */
        public static final C19246a f53615b = new C19246a();

        public C19246a() {
            super(0);
        }

        public Object invoke() {
            return new k();
        }
    }

    @Override // p193e.p194a.p1129p5.AbstractC19243l
    /* renamed from: a */
    public String mo13751a(Object obj) {
        l.e(obj, "src");
        String m = ((k) this.f53614a.getValue()).m(obj);
        l.d(m, "gson.toJson(src)");
        return m;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1129p5.AbstractC19243l
    /* renamed from: b */
    public <T> T mo13750b(String str, Type type) {
        T t;
        l.e(str, "json");
        l.e(type, "type");
        try {
            t = ((k) this.f53614a.getValue()).g(str, type);
        } catch (u e) {
            t = null;
        }
        return t;
    }
}
