package p026c0;

import android.app.Activity;
/* renamed from: c0.b */
/* loaded from: classes-dex2jar.jar:c0/b.class */
public class RunnableC0778b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Activity f2897a;

    public RunnableC0778b(Activity activity) {
        this.f2897a = activity;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f2897a.isFinishing() || C0780d.m7380b(this.f2897a)) {
            return;
        }
        this.f2897a.recreate();
    }
}
