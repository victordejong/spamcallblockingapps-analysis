package p193e.p194a.p195a.p237h1;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1272u3.C20590f;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p682e.p684b.p691k.C12964s;
import s1.z.c.l;
/* renamed from: e.a.a.h1.m */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/m.class */
public final class C6338m implements C20590f.AbstractC20591a {

    /* renamed from: a */
    public final Context f21174a;

    /* renamed from: b */
    public final AbstractC8541a f21175b;

    /* renamed from: c */
    public final a<C12964s> f21176c;

    @Inject
    public C6338m(Context context, AbstractC8541a abstractC8541a, a<C12964s> aVar) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8541a, "coreSettings");
        l.e(aVar, "generalSettingsHelper");
        this.f21174a = context;
        this.f21175b = abstractC8541a;
        this.f21176c = aVar;
    }

    @Override // p193e.p194a.p1272u3.C20590f.AbstractC20591a
    /* renamed from: Q1 */
    public void mo11006Q1() {
        this.f21175b.putBoolean("flash_disabled", true);
        ((C12964s) this.f21176c.get()).m22372a(this.f21174a);
    }

    @Override // p193e.p194a.p1272u3.C20590f.AbstractC20591a
    /* renamed from: a */
    public void mo11005a() {
    }
}
