package p193e.p194a.p1315v4.p1330u0;

import android.content.Intent;
import android.os.Bundle;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1221t.p1230b.p1231c.C20358c;
import p193e.p194a.p1315v4.AbstractC21040l;
import p193e.p194a.p1315v4.C21154v;
import p193e.p194a.p1315v4.p1333w0.AbstractC21159b;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.j;
import s1.z.c.l;
/* renamed from: e.a.v4.u0.d */
/* loaded from: classes12-dex2jar.jar:e/a/v4/u0/d.class */
public final class C21139d extends AbstractC21144h {

    /* renamed from: i */
    public final C20358c f59295i = new C20358c(0, 0, null);

    /* renamed from: j */
    public final Bundle f59296j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21139d(Bundle bundle, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, AbstractC21040l abstractC21040l, C21154v c21154v) {
        super(bundle, abstractC8541a, abstractC8438a, abstractC21040l, c21154v);
        l.e(bundle, "extras");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC21040l, "eventsTrackerHolder");
        l.e(c21154v, "sdkAccountManager");
        this.f59296j = bundle;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21144h
    /* renamed from: B */
    public Bundle mo10245B() {
        return this.f59296j;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21144h
    /* renamed from: C */
    public boolean mo10238C() {
        return true;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: a */
    public void mo10237a() {
        this.f59312b = true;
        mo10233x(-1, -1);
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21149a
    /* renamed from: b */
    public String mo10232b() {
        return "in_app";
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: e */
    public void mo10246e() {
        throw new j(C22128a.m8543z2("An operation is not implemented: ", "not implemented"));
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: f */
    public String mo10230f() {
        return "2.6.0";
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: h */
    public void mo10235h() {
        this.f59313c.mo10213d();
        AbstractC21159b abstractC21159b = this.f59311a;
        if (abstractC21159b != null) {
            abstractC21159b.mo10206M3();
        }
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: m */
    public C20358c mo10234m() {
        return this.f59295i;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    public void onBackPressed() {
        mo10233x(0, 2);
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: p */
    public String mo10226p() {
        return "inAppKey";
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: x */
    public void mo10233x(int i, int i2) {
        this.f59313c.mo10214c(i2);
        AbstractC21159b abstractC21159b = this.f59311a;
        if (abstractC21159b != null) {
            abstractC21159b.mo10201U1(i, new Intent());
        }
        AbstractC21159b abstractC21159b2 = this.f59311a;
        if (abstractC21159b2 != null) {
            abstractC21159b2.mo10198V1();
        }
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: z */
    public String mo10225z() {
        String string = this.f59296j.getString("partnerName", "");
        l.d(string, "extras.getString(PARTNER_NAME, \"\")");
        return string;
    }
}
