package p193e.p194a.p1002k4.p1004o.p1006j.p1007a;

import android.location.Geocoder;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1002k4.p1004o.p1005i.C16542a;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k4.o.j.a.a */
/* loaded from: classes11-dex2jar.jar:e/a/k4/o/j/a/a.class */
public final class C16543a {

    /* renamed from: a */
    public final g f46486a = C25225a.m3978P1(C16544a.f46489b);

    /* renamed from: b */
    public final Geocoder f46487b;

    /* renamed from: c */
    public final C16542a f46488c;

    /* renamed from: e.a.k4.o.j.a.a$a */
    /* loaded from: classes11-dex2jar.jar:e/a/k4/o/j/a/a$a.class */
    public static final class C16544a extends m implements a<Boolean> {

        /* renamed from: b */
        public static final C16544a f46489b = new C16544a();

        public C16544a() {
            super(0);
        }

        public Object invoke() {
            return Boolean.valueOf(Geocoder.isPresent());
        }
    }

    @Inject
    public C16543a(Geocoder geocoder, C16542a c16542a) {
        l.e(geocoder, "geocoder");
        l.e(c16542a, "placeMapper");
        this.f46487b = geocoder;
        this.f46488c = c16542a;
    }
}
