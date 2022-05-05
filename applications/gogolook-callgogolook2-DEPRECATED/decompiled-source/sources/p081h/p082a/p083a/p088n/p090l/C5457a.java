package p081h.p082a.p083a.p088n.p090l;

import android.graphics.PointF;
import androidx.appcompat.widget.SearchView;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p085b.AbstractC5363b;
import p081h.p082a.p083a.p084l.p085b.C5366e;
import p081h.p082a.p083a.p088n.p089k.AbstractC5452m;
import p081h.p082a.p083a.p088n.p089k.C5432e;
import p081h.p082a.p083a.p088n.p089k.C5434f;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.n.l.a */
/* loaded from: classes-dex2jar.jar:h/a/a/n/l/a.class */
public class C5457a implements AbstractC5460b {

    /* renamed from: a */
    public final String f13597a;

    /* renamed from: b */
    public final AbstractC5452m<PointF, PointF> f13598b;

    /* renamed from: c */
    public final C5434f f13599c;

    /* renamed from: h.a.a.n.l.a$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/a$b.class */
    public static class C5459b {
        /* renamed from: a */
        public static C5457a m25434a(JSONObject jSONObject, C5341e eVar) {
            return new C5457a(jSONObject.optString(SearchView.IME_OPTION_NO_MICROPHONE), C5432e.m25468a(jSONObject.optJSONObject("p"), eVar), C5434f.C5436b.m25465a(jSONObject.optJSONObject("s"), eVar));
        }
    }

    public C5457a(String str, AbstractC5452m<PointF, PointF> mVar, C5434f fVar) {
        this.f13597a = str;
        this.f13598b = mVar;
        this.f13599c = fVar;
    }

    @Override // p081h.p082a.p083a.p088n.p090l.AbstractC5460b
    /* renamed from: a */
    public AbstractC5363b mo25347a(C5344f fVar, AbstractC5506a aVar) {
        return new C5366e(fVar, aVar, this);
    }

    /* renamed from: a */
    public String m25437a() {
        return this.f13597a;
    }

    /* renamed from: b */
    public AbstractC5452m<PointF, PointF> m25436b() {
        return this.f13598b;
    }

    /* renamed from: c */
    public C5434f m25435c() {
        return this.f13599c;
    }
}
