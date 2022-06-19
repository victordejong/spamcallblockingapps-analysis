package p1727n3.p1807k.p1808a;

import android.app.Activity;
/* renamed from: n3.k.a.a */
/* loaded from: classes-dex2jar.jar:n3/k/a/a.class */
public class RunnableC26411a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Activity f74030a;

    public RunnableC26411a(Activity activity) {
        this.f74030a = activity;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f74030a.isFinishing() || C26419d.m1887b(this.f74030a)) {
            return;
        }
        this.f74030a.recreate();
    }
}
