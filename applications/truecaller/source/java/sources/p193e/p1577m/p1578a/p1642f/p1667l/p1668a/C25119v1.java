package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzd;
import com.google.android.gms.measurement.internal.zzfr;
import com.google.android.gms.measurement.internal.zzhw;
import com.google.android.gms.measurement.internal.zzid;
import com.google.android.gms.measurement.internal.zzik;
import com.google.android.gms.measurement.internal.zzka;
import com.razorpay.AnalyticsConstants;
/* renamed from: e.m.a.f.l.a.v1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/v1.class */
public final class C25119v1 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public final /* synthetic */ zzhw f70319a;

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zzfr zzfrVar;
        try {
            try {
                ((v0) this.f70319a).a.zzay().n.m38590a("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent == null) {
                    zzfrVar = ((v0) this.f70319a).a;
                } else {
                    Uri data = intent.getData();
                    if (data != null && data.isHierarchical()) {
                        ((v0) this.f70319a).a.w();
                        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                        boolean z = true;
                        String str = true != ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? "auto" : "gs";
                        String queryParameter = data.getQueryParameter("referrer");
                        if (bundle != null) {
                            z = false;
                        }
                        ((v0) this.f70319a).a.a().n(new RunnableC25115u1(this, z, data, str, queryParameter));
                        zzfrVar = ((v0) this.f70319a).a;
                    }
                    zzfrVar = ((v0) this.f70319a).a;
                }
            } catch (RuntimeException e) {
                ((v0) this.f70319a).a.zzay().f.m38589b("Throwable caught in onActivityCreated", e);
                zzfrVar = ((v0) this.f70319a).a;
            }
            zzfrVar.t().m(activity, bundle);
        } catch (Throwable th) {
            ((v0) this.f70319a).a.t().m(activity, bundle);
            throw th;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zzik t = ((v0) this.f70319a).a.t();
        synchronized (t.l) {
            if (activity == t.g) {
                t.g = null;
            }
        }
        if (!((v0) t).a.g.s()) {
            return;
        }
        t.f.remove(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zzik t = ((v0) this.f70319a).a.t();
        synchronized (t.l) {
            t.k = false;
            t.h = true;
        }
        long mo38789a = ((v0) t).a.n.mo38789a();
        if (!((v0) t).a.g.s()) {
            t.c = null;
            ((v0) t).a.a().n(new RunnableC25035c2(t, mo38789a));
        } else {
            zzid o = t.o(activity);
            t.d = t.c;
            t.c = null;
            ((v0) t).a.a().n(new RunnableC25039d2(t, o, mo38789a));
        }
        zzka v = ((v0) this.f70319a).a.v();
        ((v0) v).a.a().n(new RunnableC25057g3(v, ((v0) v).a.n.mo38789a()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zzka v = ((v0) this.f70319a).a.v();
        ((v0) v).a.a().n(new RunnableC25051f3(v, ((v0) v).a.n.mo38789a()));
        zzik t = ((v0) this.f70319a).a.t();
        synchronized (t.l) {
            t.k = true;
            if (activity != t.g) {
                synchronized (t.l) {
                    t.g = activity;
                    t.h = false;
                }
                if (((v0) t).a.g.s()) {
                    t.i = null;
                    ((v0) t).a.a().n(new RunnableC25044e2(t));
                }
            }
        }
        if (!((v0) t).a.g.s()) {
            t.c = t.i;
            ((v0) t).a.a().n(new RunnableC25029b2(t));
            return;
        }
        t.h(activity, t.o(activity), false);
        zzd j = ((v0) t).a.j();
        ((v0) j).a.a().n(new RunnableC25069j(j, ((v0) j).a.n.mo38789a()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zzid zzidVar;
        zzik t = ((v0) this.f70319a).a.t();
        if (!((v0) t).a.g.s() || bundle == null || (zzidVar = (zzid) t.f.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", zzidVar.f6441c);
        bundle2.putString(AnalyticsConstants.NAME, zzidVar.f6439a);
        bundle2.putString("referrer_name", zzidVar.f6440b);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
