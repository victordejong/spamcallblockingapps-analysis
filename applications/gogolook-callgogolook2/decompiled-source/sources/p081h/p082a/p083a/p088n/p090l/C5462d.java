package p081h.p082a.p083a.p088n.p090l;

import android.graphics.Path;
import androidx.appcompat.widget.SearchView;
import com.criteo.publisher.model.C2041o;
import com.flurry.sdk.C3496r;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p085b.AbstractC5363b;
import p081h.p082a.p083a.p084l.p085b.C5368g;
import p081h.p082a.p083a.p088n.p089k.C5420b;
import p081h.p082a.p083a.p088n.p089k.C5424c;
import p081h.p082a.p083a.p088n.p089k.C5428d;
import p081h.p082a.p083a.p088n.p089k.C5434f;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.n.l.d */
/* loaded from: classes-dex2jar.jar:h/a/a/n/l/d.class */
public class C5462d implements AbstractC5460b {

    /* renamed from: a */
    public final EnumC5468f f13602a;

    /* renamed from: b */
    public final Path.FillType f13603b;

    /* renamed from: c */
    public final C5424c f13604c;

    /* renamed from: d */
    public final C5428d f13605d;

    /* renamed from: e */
    public final C5434f f13606e;

    /* renamed from: f */
    public final C5434f f13607f;

    /* renamed from: g */
    public final String f13608g;

    /* renamed from: h.a.a.n.l.d$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/d$b.class */
    public static class C5464b {
        /* renamed from: a */
        public static C5462d m25422a(JSONObject jSONObject, C5341e eVar) {
            String optString = jSONObject.optString(SearchView.IME_OPTION_NO_MICROPHONE);
            JSONObject optJSONObject = jSONObject.optJSONObject("g");
            JSONObject jSONObject2 = optJSONObject;
            if (optJSONObject != null) {
                jSONObject2 = optJSONObject;
                if (optJSONObject.has("k")) {
                    int optInt = optJSONObject.optInt("p");
                    jSONObject2 = optJSONObject.optJSONObject("k");
                    try {
                        jSONObject2.put("p", optInt);
                    } catch (JSONException e) {
                    }
                }
            }
            C5424c a = jSONObject2 != null ? C5424c.C5426b.m25475a(jSONObject2, eVar) : null;
            JSONObject optJSONObject2 = jSONObject.optJSONObject(C2041o.f2249c);
            C5428d a2 = optJSONObject2 != null ? C5428d.C5430b.m25471a(optJSONObject2, eVar) : null;
            Path.FillType fillType = jSONObject.optInt(C3496r.f6031a, 1) == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
            EnumC5468f fVar = jSONObject.optInt("t", 1) == 1 ? EnumC5468f.Linear : EnumC5468f.Radial;
            JSONObject optJSONObject3 = jSONObject.optJSONObject("s");
            C5434f a3 = optJSONObject3 != null ? C5434f.C5436b.m25465a(optJSONObject3, eVar) : null;
            JSONObject optJSONObject4 = jSONObject.optJSONObject("e");
            return new C5462d(optString, fVar, fillType, a, a2, a3, optJSONObject4 != null ? C5434f.C5436b.m25465a(optJSONObject4, eVar) : null, null, null);
        }
    }

    public C5462d(String str, EnumC5468f fVar, Path.FillType fillType, C5424c cVar, C5428d dVar, C5434f fVar2, C5434f fVar3, C5420b bVar, C5420b bVar2) {
        this.f13602a = fVar;
        this.f13603b = fillType;
        this.f13604c = cVar;
        this.f13605d = dVar;
        this.f13606e = fVar2;
        this.f13607f = fVar3;
        this.f13608g = str;
    }

    @Override // p081h.p082a.p083a.p088n.p090l.AbstractC5460b
    /* renamed from: a */
    public AbstractC5363b mo25347a(C5344f fVar, AbstractC5506a aVar) {
        return new C5368g(fVar, aVar, this);
    }

    /* renamed from: a */
    public C5434f m25429a() {
        return this.f13607f;
    }

    /* renamed from: b */
    public Path.FillType m25428b() {
        return this.f13603b;
    }

    /* renamed from: c */
    public C5424c m25427c() {
        return this.f13604c;
    }

    /* renamed from: d */
    public EnumC5468f m25426d() {
        return this.f13602a;
    }

    /* renamed from: e */
    public String m25425e() {
        return this.f13608g;
    }

    /* renamed from: f */
    public C5428d m25424f() {
        return this.f13605d;
    }

    /* renamed from: g */
    public C5434f m25423g() {
        return this.f13606e;
    }
}
