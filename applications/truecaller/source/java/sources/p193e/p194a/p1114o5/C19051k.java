package p193e.p194a.p1114o5;

import android.app.Activity;
import android.content.ComponentName;
import android.os.Bundle;
import android.widget.Toast;
import com.truecaller.C2752R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import o3.a;
import p193e.p194a.p1075n3.p1076a.C18479b;
import p193e.p194a.p292a4.AbstractC7428a;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
/* renamed from: e.a.o5.k */
/* loaded from: classes15-dex2jar.jar:e/a/o5/k.class */
public class C19051k extends AbstractC19044j {

    /* renamed from: b */
    public WeakReference<Activity> f53214b;

    /* renamed from: d */
    public a<AbstractC7428a> f53216d;

    /* renamed from: a */
    public final List<ComponentName> f53213a = new ArrayList();

    /* renamed from: c */
    public boolean f53215c = false;

    public C19051k(a<AbstractC7428a> aVar) {
        this.f53216d = aVar;
    }

    @Override // p193e.p194a.p1114o5.AbstractC19044j
    /* renamed from: a */
    public Activity mo14187a() {
        WeakReference<Activity> weakReference = this.f53214b;
        return weakReference == null ? null : weakReference.get();
    }

    @Override // p193e.p194a.p1114o5.AbstractC19044j
    /* renamed from: b */
    public boolean mo14186b() {
        return !this.f53213a.isEmpty();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (!this.f53215c) {
            ((AbstractC7428a) this.f53216d.get()).mo29580a(activity.getApplicationContext());
            this.f53215c = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        C18479b.m14875a("Activity paused: ", activity.getLocalClassName());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        C18479b.m14875a("Activity resumed: ", activity.getLocalClassName());
        this.f53214b = new WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.f53213a.add(activity.getComponentName());
        C18479b.m14875a("Activity started: ", activity.getLocalClassName());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        this.f53213a.remove(activity.getComponentName());
        if (this.f53213a.isEmpty() && !C15571h.m18636o("onboardingDragToDockShown") && C15571h.m18636o("hasShownWelcome")) {
            Toast.makeText(activity, (int) C2752R.string.OnboardingDragToDock, 0).show();
            C15571h.m18626y("onboardingDragToDockShown", true);
        }
        C18479b.m14875a("Activity stopped: ", activity.getLocalClassName());
        WeakReference<Activity> weakReference = this.f53214b;
        if (weakReference == null || weakReference.get() != activity) {
            return;
        }
        this.f53214b = null;
    }
}
