package p081h.p082a.p083a.p088n.p090l;

import androidx.annotation.Nullable;
import androidx.appcompat.widget.SearchView;
import com.criteo.publisher.model.C2041o;
import com.criteo.publisher.model.C2052w;
import com.flurry.sdk.C3458lj;
import com.flurry.sdk.C3478n;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p085b.AbstractC5363b;
import p081h.p082a.p083a.p084l.p085b.C5369h;
import p081h.p082a.p083a.p088n.p089k.C5420b;
import p081h.p082a.p083a.p088n.p089k.C5424c;
import p081h.p082a.p083a.p088n.p089k.C5428d;
import p081h.p082a.p083a.p088n.p089k.C5434f;
import p081h.p082a.p083a.p088n.p090l.C5497p;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.n.l.e */
/* loaded from: classes-dex2jar.jar:h/a/a/n/l/e.class */
public class C5465e implements AbstractC5460b {

    /* renamed from: a */
    public final String f13609a;

    /* renamed from: b */
    public final EnumC5468f f13610b;

    /* renamed from: c */
    public final C5424c f13611c;

    /* renamed from: d */
    public final C5428d f13612d;

    /* renamed from: e */
    public final C5434f f13613e;

    /* renamed from: f */
    public final C5434f f13614f;

    /* renamed from: g */
    public final C5420b f13615g;

    /* renamed from: h */
    public final C5497p.EnumC5500c f13616h;

    /* renamed from: i */
    public final C5497p.EnumC5501d f13617i;

    /* renamed from: j */
    public final List<C5420b> f13618j;
    @Nullable

    /* renamed from: k */
    public final C5420b f13619k;

    /* renamed from: h.a.a.n.l.e$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/e$b.class */
    public static class C5467b {
        /* renamed from: a */
        public static C5465e m25410a(JSONObject jSONObject, C5341e eVar) {
            C5420b bVar;
            String optString = jSONObject.optString(SearchView.IME_OPTION_NO_MICROPHONE);
            JSONObject optJSONObject = jSONObject.optJSONObject("g");
            JSONObject jSONObject2 = optJSONObject;
            if (optJSONObject != null) {
                jSONObject2 = optJSONObject;
                if (optJSONObject.has("k")) {
                    jSONObject2 = optJSONObject.optJSONObject("k");
                }
            }
            C5424c a = jSONObject2 != null ? C5424c.C5426b.m25475a(jSONObject2, eVar) : null;
            JSONObject optJSONObject2 = jSONObject.optJSONObject(C2041o.f2249c);
            C5428d a2 = optJSONObject2 != null ? C5428d.C5430b.m25471a(optJSONObject2, eVar) : null;
            EnumC5468f fVar = jSONObject.optInt("t", 1) == 1 ? EnumC5468f.Linear : EnumC5468f.Radial;
            JSONObject optJSONObject3 = jSONObject.optJSONObject("s");
            C5434f a3 = optJSONObject3 != null ? C5434f.C5436b.m25465a(optJSONObject3, eVar) : null;
            JSONObject optJSONObject4 = jSONObject.optJSONObject("e");
            C5434f a4 = optJSONObject4 != null ? C5434f.C5436b.m25465a(optJSONObject4, eVar) : null;
            C5420b a5 = C5420b.C5422b.m25477a(jSONObject.optJSONObject(C2052w.f2268l), eVar);
            C5497p.EnumC5500c cVar = C5497p.EnumC5500c.values()[jSONObject.optInt("lc") - 1];
            C5497p.EnumC5501d dVar = C5497p.EnumC5501d.values()[jSONObject.optInt(C3458lj.f5951a) - 1];
            ArrayList arrayList = new ArrayList();
            if (jSONObject.has("d")) {
                JSONArray optJSONArray = jSONObject.optJSONArray("d");
                bVar = null;
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject optJSONObject5 = optJSONArray.optJSONObject(i);
                    String optString2 = optJSONObject5.optString(C3478n.f5989a);
                    if (optString2.equals(C2041o.f2249c)) {
                        bVar = C5420b.C5422b.m25477a(optJSONObject5.optJSONObject("v"), eVar);
                    } else {
                        if (!optString2.equals("d")) {
                            bVar = bVar;
                            if (!optString2.equals("g")) {
                            }
                        }
                        arrayList.add(C5420b.C5422b.m25477a(optJSONObject5.optJSONObject("v"), eVar));
                        bVar = bVar;
                    }
                }
                if (arrayList.size() == 1) {
                    arrayList.add(arrayList.get(0));
                }
            } else {
                bVar = null;
            }
            return new C5465e(optString, fVar, a, a2, a3, a4, a5, cVar, dVar, arrayList, bVar);
        }
    }

    public C5465e(String str, EnumC5468f fVar, C5424c cVar, C5428d dVar, C5434f fVar2, C5434f fVar3, C5420b bVar, C5497p.EnumC5500c cVar2, C5497p.EnumC5501d dVar2, List<C5420b> list, @Nullable C5420b bVar2) {
        this.f13609a = str;
        this.f13610b = fVar;
        this.f13611c = cVar;
        this.f13612d = dVar;
        this.f13613e = fVar2;
        this.f13614f = fVar3;
        this.f13615g = bVar;
        this.f13616h = cVar2;
        this.f13617i = dVar2;
        this.f13618j = list;
        this.f13619k = bVar2;
    }

    @Override // p081h.p082a.p083a.p088n.p090l.AbstractC5460b
    /* renamed from: a */
    public AbstractC5363b mo25347a(C5344f fVar, AbstractC5506a aVar) {
        return new C5369h(fVar, aVar, this);
    }

    /* renamed from: a */
    public C5497p.EnumC5500c m25421a() {
        return this.f13616h;
    }

    @Nullable
    /* renamed from: b */
    public C5420b m25420b() {
        return this.f13619k;
    }

    /* renamed from: c */
    public C5434f m25419c() {
        return this.f13614f;
    }

    /* renamed from: d */
    public C5424c m25418d() {
        return this.f13611c;
    }

    /* renamed from: e */
    public EnumC5468f m25417e() {
        return this.f13610b;
    }

    /* renamed from: f */
    public C5497p.EnumC5501d m25416f() {
        return this.f13617i;
    }

    /* renamed from: g */
    public List<C5420b> m25415g() {
        return this.f13618j;
    }

    /* renamed from: h */
    public String m25414h() {
        return this.f13609a;
    }

    /* renamed from: i */
    public C5428d m25413i() {
        return this.f13612d;
    }

    /* renamed from: j */
    public C5434f m25412j() {
        return this.f13613e;
    }

    /* renamed from: k */
    public C5420b m25411k() {
        return this.f13615g;
    }
}
