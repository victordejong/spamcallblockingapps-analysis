package p193e.p194a.p1011l.p1017d.p1019b;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1193r5.AbstractC19954i0;
import p193e.p194a.p1410z4.AbstractC21881d;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.l.d.b.d */
/* loaded from: classes12-dex2jar.jar:e/a/l/d/b/d.class */
public final class C16845d {

    /* renamed from: a */
    public final AbstractC17197v0 f47229a;

    /* renamed from: b */
    public final AbstractC21881d f47230b;

    /* renamed from: c */
    public final AbstractC19954i0 f47231c;

    /* renamed from: d */
    public final C16843b f47232d;

    @Inject
    public C16845d(AbstractC17197v0 abstractC17197v0, AbstractC21881d abstractC21881d, AbstractC19954i0 abstractC19954i0, C16843b c16843b) {
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC19954i0, "whoViewedMeManager");
        l.e(c16843b, "dialogStarter");
        this.f47229a = abstractC17197v0;
        this.f47230b = abstractC21881d;
        this.f47231c = abstractC19954i0;
        this.f47232d = c16843b;
    }

    /* renamed from: a */
    public final void m16928a(FragmentManager fragmentManager, String str, String str2, boolean z, a<s> aVar) {
        l.e(fragmentManager, "fragmentManager");
        l.e(aVar, "showDetailsAction");
        int i = this.f47230b.getInt("premiumIncognitoOnProfileViewBreakpoint", 0);
        if (this.f47229a.mo16408H() || !this.f47231c.mo11761b() || str == null || str2 == null || z || i == 0) {
            aVar.invoke();
            return;
        }
        int i2 = this.f47230b.getInt("premiumIncognitoOnProfileViewCurrentCount", 0);
        if (1 <= i2 && i > i2) {
            this.f47230b.m8947l("premiumIncognitoOnProfileViewCurrentCount");
            aVar.invoke();
            return;
        }
        this.f47230b.putInt("premiumIncognitoOnProfileViewCurrentCount", 1);
        Objects.requireNonNull(this.f47232d);
        l.e(fragmentManager, "fragmentManager");
        l.e(str, AnalyticsConstants.NAME);
        l.e(aVar, "showDetailsAction");
        l.e(str, AnalyticsConstants.NAME);
        C16841a c16841a = new C16841a();
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsConstants.NAME, str);
        c16841a.setArguments(bundle);
        c16841a.f47221a = aVar;
        c16841a.show(fragmentManager, "incognitoOnDetailsViewDialogTag");
    }
}
