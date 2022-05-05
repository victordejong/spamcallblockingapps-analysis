package p081h.p082a.p083a.p088n.p090l;

import android.graphics.PointF;
import androidx.appcompat.widget.SearchView;
import com.flurry.sdk.C3496r;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p085b.AbstractC5363b;
import p081h.p082a.p083a.p084l.p085b.C5377n;
import p081h.p082a.p083a.p088n.p089k.AbstractC5452m;
import p081h.p082a.p083a.p088n.p089k.C5420b;
import p081h.p082a.p083a.p088n.p089k.C5432e;
import p081h.p082a.p083a.p088n.p089k.C5434f;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.n.l.j */
/* loaded from: classes-dex2jar.jar:h/a/a/n/l/j.class */
public class C5481j implements AbstractC5460b {

    /* renamed from: a */
    public final String f13652a;

    /* renamed from: b */
    public final AbstractC5452m<PointF, PointF> f13653b;

    /* renamed from: c */
    public final C5434f f13654c;

    /* renamed from: d */
    public final C5420b f13655d;

    /* renamed from: h.a.a.n.l.j$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/j$b.class */
    public static class C5483b {
        /* renamed from: a */
        public static C5481j m25385a(JSONObject jSONObject, C5341e eVar) {
            return new C5481j(jSONObject.optString(SearchView.IME_OPTION_NO_MICROPHONE), C5432e.m25468a(jSONObject.optJSONObject("p"), eVar), C5434f.C5436b.m25465a(jSONObject.optJSONObject("s"), eVar), C5420b.C5422b.m25477a(jSONObject.optJSONObject(C3496r.f6031a), eVar));
        }
    }

    public C5481j(String str, AbstractC5452m<PointF, PointF> mVar, C5434f fVar, C5420b bVar) {
        this.f13652a = str;
        this.f13653b = mVar;
        this.f13654c = fVar;
        this.f13655d = bVar;
    }

    @Override // p081h.p082a.p083a.p088n.p090l.AbstractC5460b
    /* renamed from: a */
    public AbstractC5363b mo25347a(C5344f fVar, AbstractC5506a aVar) {
        return new C5377n(fVar, aVar, this);
    }

    /* renamed from: a */
    public C5420b m25389a() {
        return this.f13655d;
    }

    /* renamed from: b */
    public String m25388b() {
        return this.f13652a;
    }

    /* renamed from: c */
    public AbstractC5452m<PointF, PointF> m25387c() {
        return this.f13653b;
    }

    /* renamed from: d */
    public C5434f m25386d() {
        return this.f13654c;
    }

    public String toString() {
        return "RectangleShape{cornerRadius=" + this.f13655d.mo25439b() + ", position=" + this.f13653b + ", size=" + this.f13654c + '}';
    }
}
