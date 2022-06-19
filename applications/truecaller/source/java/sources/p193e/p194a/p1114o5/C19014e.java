package p193e.p194a.p1114o5;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.truecaller.C2752R;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.b.q;
import s1.z.c.l;
/* renamed from: e.a.o5.e */
/* loaded from: classes15-dex2jar.jar:e/a/o5/e.class */
public final class C19014e implements AbstractC19006d {

    /* renamed from: a */
    public final f f53134a;

    /* renamed from: b */
    public final a<Boolean> f53135b;

    /* renamed from: c */
    public final q<Context, Integer, Integer, s> f53136c;

    /* renamed from: d */
    public final a<s> f53137d;

    @e(c = "com.truecaller.util.AppDowngradeLifecycleListenerImpl$onActivityCreated$1", f = "AppDowngradeLifecycleListener.kt", l = {64}, m = "invokeSuspend")
    /* renamed from: e.a.o5.e$a */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/e$a.class */
    public static final class C19015a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f53138e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19015a(d dVar) {
            super(2, dVar);
            C19014e.this = r5;
        }

        /* renamed from: i */
        public final d<s> m14258i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19015a(dVar);
        }

        /* renamed from: k */
        public final Object m14257k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C19015a(dVar).m14256s(s.a);
        }

        /* renamed from: s */
        public final Object m14256s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f53138e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f53138e = 1;
                if (s1.a.a.a.v0.f.d.D0(1000L, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C19014e.this.f53137d.invoke();
            return s.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C19014e(@Named("UI") f fVar, a<Boolean> aVar, q<? super Context, ? super Integer, ? super Integer, s> qVar, a<s> aVar2) {
        l.e(fVar, "uiContext");
        l.e(aVar, "wasAppDowngraded");
        l.e(qVar, "showToast");
        l.e(aVar2, "killApp");
        this.f53134a = fVar;
        this.f53135b = aVar;
        this.f53136c = qVar;
        this.f53137d = aVar2;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        l.e(activity, "activity");
        if (((Boolean) this.f53135b.invoke()).booleanValue()) {
            Context applicationContext = activity.getApplicationContext();
            q<Context, Integer, Integer, s> qVar = this.f53136c;
            l.d(applicationContext, "appContext");
            qVar.h(applicationContext, Integer.valueOf((int) C2752R.string.ErrorAppDowngradeClearData), 1);
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.fromParts("package", applicationContext.getPackageName(), null));
            intent.setFlags(268435456);
            applicationContext.startActivity(intent);
            s1.a.a.a.v0.f.d.w2(h1.a, this.f53134a, (j0) null, new C19015a(null), 2, (Object) null);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        l.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        l.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        l.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        l.e(activity, "activity");
        l.e(bundle, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        l.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        l.e(activity, "activity");
    }
}
