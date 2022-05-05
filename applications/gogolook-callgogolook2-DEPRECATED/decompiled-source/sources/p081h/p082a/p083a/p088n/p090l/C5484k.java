package p081h.p082a.p083a.p088n.p090l;

import androidx.annotation.Nullable;
import androidx.appcompat.widget.SearchView;
import com.criteo.publisher.model.C2041o;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p085b.AbstractC5363b;
import p081h.p082a.p083a.p084l.p085b.C5378o;
import p081h.p082a.p083a.p088n.p089k.C5420b;
import p081h.p082a.p083a.p088n.p089k.C5449l;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.n.l.k */
/* loaded from: classes-dex2jar.jar:h/a/a/n/l/k.class */
public class C5484k implements AbstractC5460b {

    /* renamed from: a */
    public final String f13656a;

    /* renamed from: b */
    public final C5420b f13657b;

    /* renamed from: c */
    public final C5420b f13658c;

    /* renamed from: d */
    public final C5449l f13659d;

    /* renamed from: h.a.a.n.l.k$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/k$a.class */
    public static final class C5485a {
        /* renamed from: a */
        public static C5484k m25380a(JSONObject jSONObject, C5341e eVar) {
            return new C5484k(jSONObject.optString(SearchView.IME_OPTION_NO_MICROPHONE), C5420b.C5422b.m25476a(jSONObject.optJSONObject("c"), eVar, false), C5420b.C5422b.m25476a(jSONObject.optJSONObject(C2041o.f2249c), eVar, false), C5449l.C5451b.m25447a(jSONObject.optJSONObject("tr"), eVar));
        }
    }

    public C5484k(String str, C5420b bVar, C5420b bVar2, C5449l lVar) {
        this.f13656a = str;
        this.f13657b = bVar;
        this.f13658c = bVar2;
        this.f13659d = lVar;
    }

    @Override // p081h.p082a.p083a.p088n.p090l.AbstractC5460b
    @Nullable
    /* renamed from: a */
    public AbstractC5363b mo25347a(C5344f fVar, AbstractC5506a aVar) {
        return new C5378o(fVar, aVar, this);
    }

    /* renamed from: a */
    public C5420b m25384a() {
        return this.f13657b;
    }

    /* renamed from: b */
    public String m25383b() {
        return this.f13656a;
    }

    /* renamed from: c */
    public C5420b m25382c() {
        return this.f13658c;
    }

    /* renamed from: d */
    public C5449l m25381d() {
        return this.f13659d;
    }
}
