package p081h.p203i.p392f.p393a;

import com.google.android.gms.maps.model.MarkerOptions;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p081h.p203i.p204a.p224e.p282l.C8856c;
import p081h.p203i.p204a.p224e.p282l.p284k.C8908c;
/* renamed from: h.i.f.a.a */
/* loaded from: classes2-dex2jar.jar:h/i/f/a/a.class */
public class C10179a implements C8856c.AbstractC8860d, C8856c.AbstractC8863g, C8856c.AbstractC8864h, C8856c.AbstractC8857a {

    /* renamed from: a */
    public final C8856c f22943a;

    /* renamed from: b */
    public final Map<C8908c, C10180a> f22944b = new HashMap();

    /* renamed from: h.i.f.a.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/f/a/a$a.class */
    public class C10180a {

        /* renamed from: a */
        public final Set<C8908c> f22945a = new HashSet();

        /* renamed from: b */
        public C8856c.AbstractC8863g f22946b;

        public C10180a() {
        }

        /* renamed from: a */
        public C8908c m13206a(MarkerOptions markerOptions) {
            C8908c a = C10179a.this.f22943a.m16873a(markerOptions);
            this.f22945a.add(a);
            C10179a.this.f22944b.put(a, this);
            return a;
        }

        /* renamed from: a */
        public void m13207a() {
            for (C8908c cVar : this.f22945a) {
                cVar.m16800b();
                C10179a.this.f22944b.remove(cVar);
            }
            this.f22945a.clear();
        }

        /* renamed from: a */
        public void m13205a(C8856c.AbstractC8860d dVar) {
        }

        /* renamed from: a */
        public void m13204a(C8856c.AbstractC8863g gVar) {
            this.f22946b = gVar;
        }

        /* renamed from: a */
        public boolean m13203a(C8908c cVar) {
            if (!this.f22945a.remove(cVar)) {
                return false;
            }
            C10179a.this.f22944b.remove(cVar);
            cVar.m16800b();
            return true;
        }
    }

    public C10179a(C8856c cVar) {
        new HashMap();
        this.f22943a = cVar;
    }

    /* renamed from: a */
    public C10180a m13211a() {
        return new C10180a();
    }

    @Override // p081h.p203i.p204a.p224e.p282l.C8856c.AbstractC8863g
    /* renamed from: a */
    public boolean mo13137a(C8908c cVar) {
        C10180a aVar = this.f22944b.get(cVar);
        if (aVar == null || aVar.f22946b == null) {
            return false;
        }
        return aVar.f22946b.mo13137a(cVar);
    }

    /* renamed from: b */
    public boolean m13209b(C8908c cVar) {
        C10180a aVar = this.f22944b.get(cVar);
        return aVar != null && aVar.m13203a(cVar);
    }
}
