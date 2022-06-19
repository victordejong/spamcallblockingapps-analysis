package p193e.p194a.p294b.p345k.p346a;

import com.truecaller.bizmon.covidDirectory.config.CovidDirectoryBanner;
import com.truecaller.bizmon.covidDirectory.config.CovidDirectoryDisclaimerData;
import com.truecaller.bizmon.covidDirectory.p144db.CovidDirectoryDb;
import e.m.e.k;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7965a;
import p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7969c;
import p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7975e;
import p193e.p194a.p294b.p370p.AbstractC8204c;
import q3.a.i0;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.b.k.a.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/a/d.class */
public final class C7964d implements AbstractC7956a, i0 {

    /* renamed from: a */
    public final k f24624a;

    /* renamed from: b */
    public final C20592g f24625b;

    /* renamed from: c */
    public final AbstractC7965a f24626c;

    /* renamed from: d */
    public final AbstractC7975e f24627d;

    /* renamed from: e */
    public final AbstractC7969c f24628e;

    /* renamed from: f */
    public final CovidDirectoryDb f24629f;

    /* renamed from: g */
    public final AbstractC8204c f24630g;

    /* renamed from: h */
    public final f f24631h;

    @Inject
    public C7964d(k kVar, C20592g c20592g, AbstractC7965a abstractC7965a, AbstractC7975e abstractC7975e, AbstractC7969c abstractC7969c, CovidDirectoryDb covidDirectoryDb, AbstractC8204c abstractC8204c, @Named("IO") f fVar) {
        l.e(kVar, "gson");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC7965a, "covidDirectoryContactDao");
        l.e(abstractC7975e, "covidDirectoryStateDao");
        l.e(abstractC7969c, "covidDirectoryDistrictDao");
        l.e(covidDirectoryDb, "database");
        l.e(abstractC8204c, "bizMonSettings");
        l.e(fVar, "asyncContext");
        this.f24624a = kVar;
        this.f24625b = c20592g;
        this.f24626c = abstractC7965a;
        this.f24627d = abstractC7975e;
        this.f24628e = abstractC7969c;
        this.f24629f = covidDirectoryDb;
        this.f24630g = abstractC8204c;
        this.f24631h = fVar;
    }

    /* renamed from: a */
    public CovidDirectoryBanner m29057a() {
        try {
            k kVar = this.f24624a;
            C20592g c20592g = this.f24625b;
            return (CovidDirectoryBanner) kVar.f(((AbstractC20597i) c20592g.f57743G4.m10941a(c20592g, C20592g.f57695p6[298])).mo10938g(), CovidDirectoryBanner.class);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: b */
    public CovidDirectoryDisclaimerData m29056b() {
        k kVar = this.f24624a;
        C20592g c20592g = this.f24625b;
        return (CovidDirectoryDisclaimerData) kVar.f(((AbstractC20597i) c20592g.f57785M4.m10941a(c20592g, C20592g.f57695p6[304])).mo10938g(), CovidDirectoryDisclaimerData.class);
    }

    public f getCoroutineContext() {
        return this.f24631h;
    }
}
