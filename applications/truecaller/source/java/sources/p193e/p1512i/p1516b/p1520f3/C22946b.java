package p193e.p1512i.p1516b.p1520f3;

import android.app.Activity;
import java.lang.ref.WeakReference;
/* renamed from: e.i.b.f3.b */
/* loaded from: classes2-dex2jar.jar:e/i/b/f3/b.class */
public class C22946b extends C22945a {

    /* renamed from: a */
    public final /* synthetic */ C22947c f63638a;

    public C22946b(C22947c c22947c) {
        this.f63638a = c22947c;
    }

    @Override // p193e.p1512i.p1516b.p1520f3.C22945a, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        if (activity.equals(this.f63638a.f63640b.get())) {
            this.f63638a.f63640b = new WeakReference<>(null);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.f63638a.f63640b = new WeakReference<>(activity);
    }
}
