package p081h.p082a.p083a.p084l.p086c;

import android.graphics.Path;
import android.graphics.PointF;
import android.view.animation.Interpolator;
import androidx.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.p084l.C5358a;
import p081h.p082a.p083a.p088n.p089k.AbstractC5452m;
import p081h.p082a.p083a.p092o.C5524b;
import p081h.p082a.p083a.p092o.C5530f;
/* renamed from: h.a.a.l.c.h */
/* loaded from: classes-dex2jar.jar:h/a/a/l/c/h.class */
public class C5390h extends C5358a<PointF> {
    @Nullable

    /* renamed from: j */
    public Path f13507j;

    /* renamed from: h.a.a.l.c.h$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/l/c/h$b.class */
    public static class C5392b {
        /* renamed from: a */
        public static C5390h m25519a(JSONObject jSONObject, C5341e eVar, AbstractC5452m.AbstractC5453a<PointF> aVar) {
            PointF pointF;
            T t;
            C5358a a = C5358a.C5359a.m25559a(jSONObject, eVar, eVar.m25643c(), aVar);
            JSONArray optJSONArray = jSONObject.optJSONArray("ti");
            JSONArray optJSONArray2 = jSONObject.optJSONArray("to");
            PointF pointF2 = null;
            if (optJSONArray == null || optJSONArray2 == null) {
                pointF = null;
            } else {
                pointF2 = C5524b.m25279a(optJSONArray2, eVar.m25643c());
                pointF = C5524b.m25279a(optJSONArray, eVar.m25643c());
            }
            C5390h hVar = new C5390h(eVar, (PointF) a.f13377b, (PointF) a.f13378c, a.f13379d, a.f13380e, a.f13381f);
            T t2 = a.f13378c;
            boolean z = (t2 == 0 || (t = a.f13377b) == 0 || !((PointF) t).equals(((PointF) t2).x, ((PointF) t2).y)) ? false : true;
            if (hVar.f13378c != 0 && !z) {
                hVar.f13507j = C5530f.m25249a((PointF) a.f13377b, (PointF) a.f13378c, pointF2, pointF);
            }
            return hVar;
        }
    }

    public C5390h(C5341e eVar, @Nullable PointF pointF, @Nullable PointF pointF2, @Nullable Interpolator interpolator, float f, @Nullable Float f2) {
        super(eVar, pointF, pointF2, interpolator, f, f2);
    }

    @Nullable
    /* renamed from: e */
    public Path m25520e() {
        return this.f13507j;
    }
}
