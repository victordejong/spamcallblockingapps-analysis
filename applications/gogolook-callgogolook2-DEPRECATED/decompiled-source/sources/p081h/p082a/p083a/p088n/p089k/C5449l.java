package p081h.p082a.p083a.p088n.p089k;

import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.criteo.publisher.model.C2041o;
import com.flurry.sdk.C3496r;
import java.util.Collections;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p085b.AbstractC5363b;
import p081h.p082a.p083a.p084l.p085b.AbstractC5373k;
import p081h.p082a.p083a.p084l.p086c.C5400p;
import p081h.p082a.p083a.p088n.C5415j;
import p081h.p082a.p083a.p088n.p089k.C5420b;
import p081h.p082a.p083a.p088n.p089k.C5428d;
import p081h.p082a.p083a.p088n.p089k.C5437g;
import p081h.p082a.p083a.p088n.p090l.AbstractC5460b;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.n.k.l */
/* loaded from: classes-dex2jar.jar:h/a/a/n/k/l.class */
public class C5449l implements AbstractC5373k, AbstractC5460b {

    /* renamed from: a */
    public final C5432e f13582a;

    /* renamed from: b */
    public final AbstractC5452m<PointF, PointF> f13583b;

    /* renamed from: c */
    public final C5437g f13584c;

    /* renamed from: d */
    public final C5420b f13585d;

    /* renamed from: e */
    public final C5428d f13586e;
    @Nullable

    /* renamed from: f */
    public final C5420b f13587f;
    @Nullable

    /* renamed from: g */
    public final C5420b f13588g;

    /* renamed from: h.a.a.n.k.l$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/k/l$b.class */
    public static class C5451b {
        /* renamed from: a */
        public static C5449l m25449a() {
            return new C5449l(new C5432e(), new C5432e(), C5437g.C5439b.m25464a(), C5420b.C5422b.m25478a(), C5428d.C5430b.m25472a(), C5420b.C5422b.m25478a(), C5420b.C5422b.m25478a());
        }

        /* renamed from: a */
        public static C5449l m25447a(JSONObject jSONObject, C5341e eVar) {
            JSONObject optJSONObject = jSONObject.optJSONObject("a");
            C5432e eVar2 = optJSONObject != null ? new C5432e(optJSONObject.opt("k"), eVar) : new C5432e();
            JSONObject optJSONObject2 = jSONObject.optJSONObject("p");
            if (optJSONObject2 != null) {
                AbstractC5452m<PointF, PointF> a = C5432e.m25468a(optJSONObject2, eVar);
                JSONObject optJSONObject3 = jSONObject.optJSONObject("s");
                C5437g a2 = optJSONObject3 != null ? C5437g.C5439b.m25463a(optJSONObject3, eVar) : new C5437g(Collections.emptyList(), new C5415j());
                JSONObject optJSONObject4 = jSONObject.optJSONObject(C3496r.f6031a);
                JSONObject jSONObject2 = optJSONObject4;
                if (optJSONObject4 == null) {
                    jSONObject2 = jSONObject.optJSONObject("rz");
                }
                if (jSONObject2 != null) {
                    C5420b a3 = C5420b.C5422b.m25476a(jSONObject2, eVar, false);
                    JSONObject optJSONObject5 = jSONObject.optJSONObject(C2041o.f2249c);
                    C5428d a4 = optJSONObject5 != null ? C5428d.C5430b.m25471a(optJSONObject5, eVar) : new C5428d(Collections.emptyList(), 100);
                    JSONObject optJSONObject6 = jSONObject.optJSONObject("so");
                    C5420b a5 = optJSONObject6 != null ? C5420b.C5422b.m25476a(optJSONObject6, eVar, false) : null;
                    JSONObject optJSONObject7 = jSONObject.optJSONObject("eo");
                    return new C5449l(eVar2, a, a2, a3, a4, a5, optJSONObject7 != null ? C5420b.C5422b.m25476a(optJSONObject7, eVar, false) : null);
                }
                m25448a("rotation");
                throw null;
            }
            m25448a("position");
            throw null;
        }

        /* renamed from: a */
        public static void m25448a(String str) {
            throw new IllegalArgumentException("Missing transform for " + str);
        }
    }

    public C5449l(C5432e eVar, AbstractC5452m<PointF, PointF> mVar, C5437g gVar, C5420b bVar, C5428d dVar, @Nullable C5420b bVar2, @Nullable C5420b bVar3) {
        this.f13582a = eVar;
        this.f13583b = mVar;
        this.f13584c = gVar;
        this.f13585d = bVar;
        this.f13586e = dVar;
        this.f13587f = bVar2;
        this.f13588g = bVar3;
    }

    @Override // p081h.p082a.p083a.p088n.p090l.AbstractC5460b
    @Nullable
    /* renamed from: a */
    public AbstractC5363b mo25347a(C5344f fVar, AbstractC5506a aVar) {
        return null;
    }

    /* renamed from: a */
    public C5400p m25457a() {
        return new C5400p(this);
    }

    /* renamed from: b */
    public C5432e m25456b() {
        return this.f13582a;
    }

    @Nullable
    /* renamed from: c */
    public C5420b m25455c() {
        return this.f13588g;
    }

    /* renamed from: d */
    public C5428d m25454d() {
        return this.f13586e;
    }

    /* renamed from: e */
    public AbstractC5452m<PointF, PointF> m25453e() {
        return this.f13583b;
    }

    /* renamed from: f */
    public C5420b m25452f() {
        return this.f13585d;
    }

    /* renamed from: g */
    public C5437g m25451g() {
        return this.f13584c;
    }

    @Nullable
    /* renamed from: h */
    public C5420b m25450h() {
        return this.f13587f;
    }
}
