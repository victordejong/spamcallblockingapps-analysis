package p081h.p082a.p083a.p088n.p090l;

import androidx.annotation.Nullable;
import androidx.appcompat.widget.SearchView;
import org.json.JSONObject;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p085b.AbstractC5363b;
import p081h.p082a.p083a.p084l.p085b.C5371j;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.n.l.h */
/* loaded from: classes-dex2jar.jar:h/a/a/n/l/h.class */
public class C5473h implements AbstractC5460b {

    /* renamed from: a */
    public final String f13631a;

    /* renamed from: b */
    public final EnumC5476c f13632b;

    /* renamed from: h.a.a.n.l.h$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/h$b.class */
    public static class C5475b {
        /* renamed from: a */
        public static C5473h m25403a(JSONObject jSONObject) {
            return new C5473h(jSONObject.optString(SearchView.IME_OPTION_NO_MICROPHONE), EnumC5476c.m25401b(jSONObject.optInt("mm", 1)));
        }
    }

    /* renamed from: h.a.a.n.l.h$c */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/h$c.class */
    public enum EnumC5476c {
        Merge,
        Add,
        Subtract,
        Intersect,
        ExcludeIntersections;

        /* renamed from: b */
        public static EnumC5476c m25401b(int i) {
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? Merge : ExcludeIntersections : Intersect : Subtract : Add : Merge;
        }
    }

    public C5473h(String str, EnumC5476c cVar) {
        this.f13631a = str;
        this.f13632b = cVar;
    }

    @Override // p081h.p082a.p083a.p088n.p090l.AbstractC5460b
    @Nullable
    /* renamed from: a */
    public AbstractC5363b mo25347a(C5344f fVar, AbstractC5506a aVar) {
        if (!fVar.m25595e()) {
            return null;
        }
        return new C5371j(this);
    }

    /* renamed from: a */
    public EnumC5476c m25405a() {
        return this.f13632b;
    }

    /* renamed from: b */
    public String m25404b() {
        return this.f13631a;
    }

    public String toString() {
        return "MergePaths{mode=" + this.f13632b + '}';
    }
}
