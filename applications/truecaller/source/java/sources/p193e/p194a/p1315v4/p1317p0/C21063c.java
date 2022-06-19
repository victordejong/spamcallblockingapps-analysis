package p193e.p194a.p1315v4.p1317p0;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1315v4.AbstractC21040l;
import p193e.p194a.p1315v4.p1317p0.AbstractC21061b;
import p193e.p194a.p1315v4.p1317p0.p1318d.C21064a;
import p193e.p194a.p1315v4.p1317p0.p1318d.C21065b;
import p193e.p194a.p1315v4.p1317p0.p1318d.C21066c;
import s1.z.c.l;
/* renamed from: e.a.v4.p0.c */
/* loaded from: classes12-dex2jar.jar:e/a/v4/p0/c.class */
public final class C21063c implements AbstractC21061b {

    /* renamed from: a */
    public final String f59070a = C22128a.m8627e2("UUID.randomUUID().toString()");

    /* renamed from: b */
    public final AbstractC21040l f59071b;

    /* renamed from: c */
    public final AbstractC21061b.AbstractC21062a f59072c;

    public C21063c(AbstractC21040l abstractC21040l, AbstractC21061b.AbstractC21062a abstractC21062a) {
        l.e(abstractC21040l, "eventsTrackerHolder");
        l.e(abstractC21062a, "eventInfoHolder");
        this.f59071b = abstractC21040l;
        this.f59072c = abstractC21062a;
    }

    @Override // p193e.p194a.p1315v4.p1317p0.AbstractC21061b
    /* renamed from: a */
    public void mo10379a() {
        this.f59071b.mo10387a().mo13274b(new C21065b(this.f59070a, this.f59072c.getPlatform(), this.f59072c.mo10365b(), this.f59072c.mo10363f(), this.f59072c.mo10364d(), this.f59072c.mo10362i(), this.f59072c.mo10357t(), this.f59072c.mo10358r(), this.f59072c.mo10361k(), this.f59072c.mo10359p()));
    }

    @Override // p193e.p194a.p1315v4.p1317p0.AbstractC21061b
    /* renamed from: b */
    public void mo10378b(String str) {
        l.e(str, "interactionType");
        this.f59071b.mo10387a().mo13274b(new C21064a(this.f59070a, this.f59072c.mo10360l(), str));
    }

    @Override // p193e.p194a.p1315v4.p1317p0.AbstractC21061b
    /* renamed from: c */
    public void mo10377c(String str, String str2, List<String> list, String str3) {
        l.e(str, "screenState");
        this.f59071b.mo10387a().mo13274b(new C21066c(this.f59070a, str, this.f59072c.mo10337m(), this.f59072c.mo10360l(), str3, str2, list));
    }
}
