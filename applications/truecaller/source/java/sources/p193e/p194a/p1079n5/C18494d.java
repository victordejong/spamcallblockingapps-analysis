package p193e.p194a.p1079n5;

import android.content.pm.PackageManager;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Provider;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p614c3.AbstractC10925a;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.n5.d */
/* loaded from: classes15-dex2jar.jar:e/a/n5/d.class */
public final class C18494d implements AbstractC18493c {

    /* renamed from: a */
    public final g f52198a;

    /* renamed from: b */
    public final Provider<AbstractC8432l> f52199b;

    /* renamed from: c */
    public final Provider<C20592g> f52200c;

    /* renamed from: d */
    public final Provider<AbstractC18498g> f52201d;

    /* renamed from: e */
    public final AbstractC8426f f52202e;

    /* renamed from: f */
    public final l<Boolean, s> f52203f;

    /* renamed from: e.a.n5.d$a */
    /* loaded from: classes15-dex2jar.jar:e/a/n5/d$a.class */
    public static final class C18495a extends m implements a<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ PackageManager f52204b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC10925a f52205c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18495a(PackageManager packageManager, AbstractC10925a abstractC10925a) {
            super(0);
            this.f52204b = packageManager;
            this.f52205c = abstractC10925a;
        }

        public Object invoke() {
            return Boolean.valueOf(!this.f52205c.mo25495b() && !this.f52204b.hasSystemFeature("com.microsoft.device.display.displaymask"));
        }
    }

    @Inject
    public C18494d(Provider<AbstractC8432l> provider, Provider<C20592g> provider2, Provider<AbstractC18498g> provider3, AbstractC8426f abstractC8426f, @Named("en_se_report_trigger") l<Boolean, s> lVar, AbstractC10925a abstractC10925a, PackageManager packageManager) {
        s1.z.c.l.e(provider, "accountManager");
        s1.z.c.l.e(provider2, "featuresRegistry");
        s1.z.c.l.e(provider3, "ugcSettings");
        s1.z.c.l.e(abstractC8426f, "regionUtils");
        s1.z.c.l.e(lVar, "triggerStateReport");
        s1.z.c.l.e(abstractC10925a, "buildHelper");
        s1.z.c.l.e(packageManager, "packageManager");
        this.f52199b = provider;
        this.f52200c = provider2;
        this.f52201d = provider3;
        this.f52202e = abstractC8426f;
        this.f52203f = lVar;
        this.f52198a = C25225a.m3978P1(new C18495a(packageManager, abstractC10925a));
    }

    @Override // p193e.p194a.p1079n5.AbstractC18493c
    /* renamed from: a */
    public boolean mo14860a() {
        boolean z;
        if (((Boolean) this.f52198a.getValue()).booleanValue() && ((AbstractC8432l) this.f52199b.get()).mo28580d() && !this.f52202e.mo28594d()) {
            C20592g c20592g = (C20592g) this.f52200c.get();
            if (!c20592g.f58009q3.m10941a(c20592g, C20592g.f57695p6[225]).isEnabled()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p1079n5.AbstractC18493c
    /* renamed from: b */
    public void mo14859b(boolean z) {
        if (((AbstractC18498g) this.f52201d.get()).getBoolean("backup") == z) {
            return;
        }
        ((AbstractC18498g) this.f52201d.get()).putBoolean("backup", z);
        this.f52203f.d(Boolean.valueOf(z));
    }

    @Override // p193e.p194a.p1079n5.AbstractC18493c
    /* renamed from: c */
    public boolean mo14858c() {
        return mo14860a() && ((AbstractC18498g) this.f52201d.get()).getBoolean("backup");
    }

    @Override // p193e.p194a.p1079n5.AbstractC18493c
    /* renamed from: d */
    public boolean mo14857d() {
        return ((Boolean) this.f52198a.getValue()).booleanValue();
    }
}
