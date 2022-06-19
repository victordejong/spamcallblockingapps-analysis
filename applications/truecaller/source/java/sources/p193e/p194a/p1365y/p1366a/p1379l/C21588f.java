package p193e.p194a.p1365y.p1366a.p1379l;

import android.os.Bundle;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1365y.p1381b.AbstractC21626w;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p1365y.p1389g.C21743a;
import q3.a.h1;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.y.a.l.f */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/l/f.class */
public final class C21588f extends AbstractC20574a<AbstractC21583b> implements AbstractC21582a {

    /* renamed from: d */
    public String f60235d;

    /* renamed from: e */
    public String f60236e;

    /* renamed from: f */
    public boolean f60237f;

    /* renamed from: g */
    public String f60238g;

    /* renamed from: h */
    public String f60239h;

    /* renamed from: i */
    public final f f60240i;

    /* renamed from: j */
    public final f f60241j;

    /* renamed from: k */
    public final AbstractC21631b f60242k;

    /* renamed from: l */
    public final AbstractC21626w f60243l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C21588f(@Named("Async") f fVar, @Named("UI") f fVar2, AbstractC21631b abstractC21631b, AbstractC21626w abstractC21626w) {
        super(fVar2);
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        l.e(abstractC21631b, "flashManager");
        l.e(abstractC21626w, "preferenceUtil");
        this.f60240i = fVar;
        this.f60241j = fVar2;
        this.f60242k = abstractC21631b;
        this.f60243l = abstractC21626w;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1379l.AbstractC21582a
    /* renamed from: Be */
    public void mo9397Be(int i) {
        AbstractC21583b abstractC21583b;
        if (i == 16908332 && (abstractC21583b = (AbstractC21583b) this.f57683a) != null) {
            abstractC21583b.close();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.y.a.l.b, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC21583b abstractC21583b) {
        AbstractC21583b abstractC21583b2;
        AbstractC21583b abstractC21583b3 = abstractC21583b;
        l.e(abstractC21583b3, "presenterView");
        this.f57683a = abstractC21583b3;
        abstractC21583b3.mo9406g0();
        Bundle mo9409A3 = abstractC21583b3.mo9409A3();
        if (mo9409A3 == null || (abstractC21583b2 = (AbstractC21583b) this.f57683a) == null) {
            return;
        }
        if (mo9409A3.getBoolean(AnalyticsConstants.MODE, false)) {
            this.f60237f = true;
        }
        if (!TextUtils.isEmpty(mo9409A3.getString("image"))) {
            this.f60235d = mo9409A3.getString("image");
            abstractC21583b2.mo9407M1();
        }
        if (!TextUtils.isEmpty(mo9409A3.getString("background"))) {
            this.f60239h = mo9409A3.getString("background");
        }
        if (!TextUtils.isEmpty(mo9409A3.getString("video"))) {
            this.f60238g = mo9409A3.getString("video");
            abstractC21583b2.mo9407M1();
        }
        if (mo9409A3.containsKey("description")) {
            this.f60236e = mo9409A3.getString("description");
        }
        d.w2(h1.a, this.f60241j, (j0) null, new C21587e(this, abstractC21583b2, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1379l.AbstractC21582a
    public void onBackPressed() {
        this.f60243l.mo9340l("first_time_user", Boolean.FALSE);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1379l.AbstractC21582a
    /* renamed from: u4 */
    public void mo9396u4(C21743a c21743a) {
        l.e(c21743a, AnalyticsConstants.CONTACT);
        AbstractC21583b abstractC21583b = (AbstractC21583b) this.f57683a;
        if (abstractC21583b != null) {
            String str = c21743a.f60558b;
            l.d(str, "contact.phoneNumber");
            long parseLong = Long.parseLong(str);
            String str2 = c21743a.f60557a;
            l.d(str2, "contact.name");
            abstractC21583b.mo9405y(parseLong, str2, "flashShare", this.f60235d, this.f60238g, this.f60236e, this.f60237f, this.f60239h);
        }
    }
}
