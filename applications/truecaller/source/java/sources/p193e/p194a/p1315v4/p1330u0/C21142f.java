package p193e.p194a.p1315v4.p1330u0;

import android.os.Bundle;
import com.truecaller.common.network.util.KnownEndpoints;
import java.util.Objects;
import p193e.p194a.p1221t.p1230b.p1231c.C20358c;
import p193e.p194a.p1315v4.AbstractC21039k0;
import p193e.p194a.p1315v4.AbstractC21040l;
import p193e.p194a.p1315v4.AbstractC21041l0;
import p193e.p194a.p1315v4.C21020b0;
import p193e.p194a.p1315v4.C21027e0;
import p193e.p194a.p1315v4.C21154v;
import p193e.p194a.p1315v4.p1333w0.AbstractC21159b;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.v4.u0.f */
/* loaded from: classes12-dex2jar.jar:e/a/v4/u0/f.class */
public final class C21142f extends AbstractC21136a {

    /* renamed from: j */
    public final Bundle f59308j;

    /* renamed from: k */
    public final C20358c f59309k;

    /* renamed from: l */
    public final C21020b0 f59310l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21142f(Bundle bundle, C20358c c20358c, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, C21020b0 c21020b0, AbstractC21040l abstractC21040l, C21154v c21154v, int i) {
        super(bundle, abstractC8541a, abstractC8438a, abstractC21040l, c21154v);
        C20358c c20358c2 = (i & 2) != 0 ? new C20358c(0, 0, null) : null;
        l.e(bundle, "extras");
        l.e(c20358c2, "sdkScopeEvaluator");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(c21020b0, "sdkRepository");
        l.e(abstractC21040l, "eventsTrackerHolder");
        l.e(c21154v, "sdkAccountManager");
        this.f59308j = bundle;
        this.f59309k = c20358c2;
        this.f59310l = c21020b0;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21144h
    /* renamed from: B */
    public Bundle mo10245B() {
        return this.f59308j;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21144h
    /* renamed from: C */
    public boolean mo10238C() {
        return this.f59308j.containsKey("qr_partner_name");
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: a */
    public void mo10237a() {
        this.f59312b = true;
        String string = this.f59308j.getString("qr_scan_code");
        if (string != null) {
            this.f59285i = true;
            Objects.requireNonNull(this.f59310l);
            ((AbstractC21039k0) C8367d.m28633a(KnownEndpoints.API, AbstractC21039k0.class)).m10389a(string).enqueue(this);
            AbstractC21159b abstractC21159b = this.f59311a;
            if (abstractC21159b == null) {
                return;
            }
            abstractC21159b.mo10202S1();
        }
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21149a
    /* renamed from: b */
    public String mo10232b() {
        return "qr_code";
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
        return this.f59309k;
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: p */
    public String mo10226p() {
        String string = this.f59308j.getString("qr_scan_code");
        return string != null ? v.e0(string, "|", (String) null, 2) : "";
    }

    @Override // p193e.p194a.p1315v4.p1330u0.AbstractC21143g
    /* renamed from: x */
    public void mo10233x(int i, int i2) {
        String string = this.f59308j.getString("qr_scan_code");
        if (string != null) {
            if (i == -1) {
                Objects.requireNonNull(this.f59310l);
                ((AbstractC21039k0) C8367d.m28633a(KnownEndpoints.API, AbstractC21039k0.class)).m10389a(string).enqueue(this);
                return;
            }
            this.f59313c.mo10214c(i2);
            C21020b0 c21020b0 = this.f59310l;
            Objects.requireNonNull(c21020b0);
            ((AbstractC21041l0) C8367d.m28633a(KnownEndpoints.API, AbstractC21041l0.class)).m10388a(string).enqueue(new C21027e0(c21020b0));
        }
    }

    @Override // p193e.p194a.p1315v4.p1330u0.p1331k.AbstractC21148a.AbstractC21151c
    /* renamed from: z */
    public String mo10225z() {
        String string = this.f59308j.getString("qr_partner_name", "");
        l.d(string, "extras.getString(QR_PARTNER_NAME, \"\")");
        return string;
    }
}
