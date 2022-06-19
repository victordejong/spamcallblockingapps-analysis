package p193e.p194a.p195a;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.p183ui.TruecallerInit;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import q3.a.h1;
import q3.a.j0;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.c0 */
/* loaded from: classes10-dex2jar.jar:e/a/a/c0.class */
public final class C5839c0 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public final Class<? extends Activity>[] f19579a = {TruecallerInit.class, ConversationActivity.class};

    /* renamed from: b */
    public p1 f19580b;

    /* renamed from: c */
    public int f19581c;

    /* renamed from: d */
    public final a<AbstractC6708t> f19582d;

    /* renamed from: e */
    public final f f19583e;

    @Inject
    public C5839c0(a<AbstractC6708t> aVar, @Named("UI") f fVar) {
        l.e(aVar, "transportManager");
        l.e(fVar, "uiContext");
        this.f19582d = aVar;
        this.f19583e = fVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        boolean z;
        l.e(activity, "activity");
        Class<? extends Activity>[] clsArr = this.f19579a;
        int length = clsArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = true;
                break;
            } else if (clsArr[i].isInstance(activity)) {
                z = false;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        this.f19581c++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        boolean z;
        p1 p1Var;
        l.e(activity, "activity");
        Class<? extends Activity>[] clsArr = this.f19579a;
        int length = clsArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = true;
                break;
            } else if (clsArr[i].isInstance(activity)) {
                z = false;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        int i2 = this.f19581c - 1;
        this.f19581c = i2;
        if (i2 != 0 || (p1Var = this.f19580b) == null) {
            return;
        }
        d.T(p1Var, (CancellationException) null, 1, (Object) null);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        l.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        boolean z;
        l.e(activity, "activity");
        Class<? extends Activity>[] clsArr = this.f19579a;
        int length = clsArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = true;
                break;
            } else if (clsArr[i].isInstance(activity)) {
                z = false;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        p1 p1Var = this.f19580b;
        if (p1Var != null && p1Var.b()) {
            return;
        }
        this.f19580b = d.w2(h1.a, this.f19583e, (j0) null, new C5005b0(this, null), 2, (Object) null);
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
