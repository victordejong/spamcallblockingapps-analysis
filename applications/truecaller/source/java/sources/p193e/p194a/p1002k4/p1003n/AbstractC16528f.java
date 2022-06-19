package p193e.p194a.p1002k4.p1003n;

import java.util.Map;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.i;
import s1.k;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.k4.n.f */
/* loaded from: classes11-dex2jar.jar:e/a/k4/n/f.class */
public abstract class AbstractC16528f {

    /* renamed from: e.a.k4.n.f$a */
    /* loaded from: classes11-dex2jar.jar:e/a/k4/n/f$a.class */
    public static final class C16529a extends AbstractC16528f {

        /* renamed from: a */
        public final int f46459a;

        public C16529a(int i) {
            super(null);
            this.f46459a = i;
        }
    }

    /* renamed from: e.a.k4.n.f$b */
    /* loaded from: classes11-dex2jar.jar:e/a/k4/n/f$b.class */
    public static final class C16530b extends AbstractC16528f {

        /* renamed from: a */
        public final int f46460a;

        public C16530b(int i) {
            super(null);
            this.f46460a = i;
        }
    }

    /* renamed from: e.a.k4.n.f$c */
    /* loaded from: classes11-dex2jar.jar:e/a/k4/n/f$c.class */
    public static final class C16531c extends AbstractC16528f {

        /* renamed from: a */
        public static final C16531c f46461a = new C16531c();

        public C16531c() {
            super(null);
        }
    }

    public AbstractC16528f(f fVar) {
    }

    /* renamed from: a */
    public final String m17272a() {
        String str;
        if (l.a(this, C16531c.f46461a)) {
            str = "ViewVisited";
        } else if (this instanceof C16529a) {
            str = "SelectedContent";
        } else if (!(this instanceof C16530b)) {
            throw new i();
        } else {
            str = "ViewDismissed";
        }
        return str;
    }

    /* renamed from: b */
    public final Map<String, String> m17271b() {
        Map<String, String> map;
        if (l.a(this, C16531c.f46461a)) {
            map = C25225a.m3938Z1(new k("ViewId", "Placepicker"));
        } else if (this instanceof C16529a) {
            map = s1.u.i.W(new k[]{new k("ResolvedPlacesCount", String.valueOf(((C16529a) this).f46459a)), new k("ViewId", "Placepicker")});
        } else if (!(this instanceof C16530b)) {
            throw new i();
        } else {
            map = s1.u.i.W(new k[]{new k("ResolvedPlacesCount", String.valueOf(((C16530b) this).f46460a)), new k("ViewId", "Placepicker")});
        }
        return map;
    }
}
