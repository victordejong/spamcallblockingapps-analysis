package p081h.p082a.p083a.p088n.p090l;

import android.graphics.PointF;
import androidx.appcompat.widget.SearchView;
import com.flurry.sdk.C3496r;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p085b.AbstractC5363b;
import p081h.p082a.p083a.p084l.p085b.C5375m;
import p081h.p082a.p083a.p088n.p089k.AbstractC5452m;
import p081h.p082a.p083a.p088n.p089k.C5420b;
import p081h.p082a.p083a.p088n.p089k.C5432e;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.n.l.i */
/* loaded from: classes-dex2jar.jar:h/a/a/n/l/i.class */
public class C5477i implements AbstractC5460b {

    /* renamed from: a */
    public final String f13639a;

    /* renamed from: b */
    public final EnumC5480c f13640b;

    /* renamed from: c */
    public final C5420b f13641c;

    /* renamed from: d */
    public final AbstractC5452m<PointF, PointF> f13642d;

    /* renamed from: e */
    public final C5420b f13643e;

    /* renamed from: f */
    public final C5420b f13644f;

    /* renamed from: g */
    public final C5420b f13645g;

    /* renamed from: h */
    public final C5420b f13646h;

    /* renamed from: i */
    public final C5420b f13647i;

    /* renamed from: h.a.a.n.l.i$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/i$b.class */
    public static class C5479b {
        /* renamed from: a */
        public static C5477i m25391a(JSONObject jSONObject, C5341e eVar) {
            C5420b bVar;
            String optString = jSONObject.optString(SearchView.IME_OPTION_NO_MICROPHONE);
            EnumC5480c a = EnumC5480c.m25390a(jSONObject.optInt("sy"));
            C5420b a2 = C5420b.C5422b.m25476a(jSONObject.optJSONObject("pt"), eVar, false);
            AbstractC5452m<PointF, PointF> a3 = C5432e.m25468a(jSONObject.optJSONObject("p"), eVar);
            C5420b a4 = C5420b.C5422b.m25476a(jSONObject.optJSONObject(C3496r.f6031a), eVar, false);
            C5420b a5 = C5420b.C5422b.m25477a(jSONObject.optJSONObject("or"), eVar);
            C5420b a6 = C5420b.C5422b.m25476a(jSONObject.optJSONObject("os"), eVar, false);
            C5420b bVar2 = null;
            if (a == EnumC5480c.Star) {
                bVar2 = C5420b.C5422b.m25477a(jSONObject.optJSONObject("ir"), eVar);
                bVar = C5420b.C5422b.m25476a(jSONObject.optJSONObject("is"), eVar, false);
            } else {
                bVar = null;
            }
            return new C5477i(optString, a, a2, a3, a4, bVar2, a5, bVar, a6);
        }
    }

    /* renamed from: h.a.a.n.l.i$c */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/i$c.class */
    public enum EnumC5480c {
        Star(1),
        Polygon(2);
        

        /* renamed from: a */
        public final int f13651a;

        EnumC5480c(int i) {
            this.f13651a = i;
        }

        /* renamed from: a */
        public static EnumC5480c m25390a(int i) {
            EnumC5480c[] values;
            for (EnumC5480c cVar : values()) {
                if (cVar.f13651a == i) {
                    return cVar;
                }
            }
            return null;
        }
    }

    public C5477i(String str, EnumC5480c cVar, C5420b bVar, AbstractC5452m<PointF, PointF> mVar, C5420b bVar2, C5420b bVar3, C5420b bVar4, C5420b bVar5, C5420b bVar6) {
        this.f13639a = str;
        this.f13640b = cVar;
        this.f13641c = bVar;
        this.f13642d = mVar;
        this.f13643e = bVar2;
        this.f13644f = bVar3;
        this.f13645g = bVar4;
        this.f13646h = bVar5;
        this.f13647i = bVar6;
    }

    @Override // p081h.p082a.p083a.p088n.p090l.AbstractC5460b
    /* renamed from: a */
    public AbstractC5363b mo25347a(C5344f fVar, AbstractC5506a aVar) {
        return new C5375m(fVar, aVar, this);
    }

    /* renamed from: a */
    public C5420b m25400a() {
        return this.f13644f;
    }

    /* renamed from: b */
    public C5420b m25399b() {
        return this.f13646h;
    }

    /* renamed from: c */
    public String m25398c() {
        return this.f13639a;
    }

    /* renamed from: d */
    public C5420b m25397d() {
        return this.f13645g;
    }

    /* renamed from: e */
    public C5420b m25396e() {
        return this.f13647i;
    }

    /* renamed from: f */
    public C5420b m25395f() {
        return this.f13641c;
    }

    /* renamed from: g */
    public AbstractC5452m<PointF, PointF> m25394g() {
        return this.f13642d;
    }

    /* renamed from: h */
    public C5420b m25393h() {
        return this.f13643e;
    }

    /* renamed from: i */
    public EnumC5480c m25392i() {
        return this.f13640b;
    }
}
