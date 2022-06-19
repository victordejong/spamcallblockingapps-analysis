package p193e.p194a.p1188r3.p1190k;

import android.app.Activity;
import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.dynamicfeaturesupport.DynamicFeature;
import e.m.a.h.a.g.b;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1188r3.AbstractC19909g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.r3.k.g */
/* loaded from: classes8-dex2jar.jar:e/a/r3/k/g.class */
public final class C19928g extends AbstractC20574a<AbstractC19926e> implements AbstractC19925d {

    /* renamed from: d */
    public final b f56375d;

    /* renamed from: e */
    public final f f56376e;

    /* renamed from: f */
    public final AbstractC19909g f56377f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C19928g(Context context, @Named("UI") f fVar, AbstractC19909g abstractC19909g) {
        super(fVar);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "uiContext");
        l.e(abstractC19909g, "dynamicFeatureManager");
        this.f56376e = fVar;
        this.f56377f = abstractC19909g;
        b m2464G = C26232y.m2464G(context);
        l.d(m2464G, "SplitInstallManagerFactory.create(context)");
        this.f56375d = m2464G;
    }

    /* renamed from: Ij */
    public final void m11804Ij() {
        DynamicFeature dynamicFeature;
        List m3897h3 = C25225a.m3897h3(DynamicFeature.values());
        Set<String> g = this.f56375d.g();
        l.d(g, "splitInstallManager.installedModules");
        ArrayList arrayList = new ArrayList(C25225a.m4004J(g, 10));
        for (String str : g) {
            l.d(str, "it");
            l.e(str, "$this$toDynamicFeature");
            DynamicFeature[] values = DynamicFeature.values();
            int i = 0;
            while (true) {
                if (i >= 2) {
                    dynamicFeature = null;
                    break;
                }
                dynamicFeature = values[i];
                if (l.a(dynamicFeature.getModuleName(), str)) {
                    break;
                }
                i++;
            }
            if (dynamicFeature == null) {
                throw new IllegalStateException(C22128a.m8543z2(str, " module is not registered!"));
            }
            arrayList.add(dynamicFeature);
        }
        List<? extends DynamicFeature> Z = i.Z(m3897h3, i.d1(arrayList));
        AbstractC19926e abstractC19926e = (AbstractC19926e) this.f57683a;
        if (abstractC19926e != null) {
            abstractC19926e.mo11808x3(Z);
        }
        AbstractC19926e abstractC19926e2 = (AbstractC19926e) this.f57683a;
        if (abstractC19926e2 != null) {
            abstractC19926e2.mo11810F7(arrayList);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.r3.k.e, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC19926e abstractC19926e) {
        AbstractC19926e abstractC19926e2 = abstractC19926e;
        l.e(abstractC19926e2, "presenterView");
        this.f57683a = abstractC19926e2;
        m11804Ij();
    }

    @Override // p193e.p194a.p1188r3.p1190k.AbstractC19925d
    /* renamed from: v8 */
    public void mo11803v8(Activity activity, DynamicFeature dynamicFeature, boolean z) {
        l.e(activity, "activity");
        l.e(dynamicFeature, "dynamicFeature");
        if (!z) {
            d.w2(this, (f) null, (j0) null, new C19927f(this, activity, dynamicFeature, null), 3, (Object) null);
            return;
        }
        AbstractC19926e abstractC19926e = (AbstractC19926e) this.f57683a;
        if (abstractC19926e != null) {
            StringBuilder m8728C = C22128a.m8728C("Uninstalling ");
            m8728C.append(dynamicFeature.getModuleName());
            m8728C.append(", it may takes time...");
            abstractC19926e.mo11809m(m8728C.toString());
        }
        this.f56377f.mo11820c(dynamicFeature);
    }
}
