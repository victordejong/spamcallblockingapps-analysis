package androidx.core.app;

import android.app.Activity;
/* loaded from: classes-dex2jar.jar:androidx/core/app/a$a.class */
class a$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ Activity f1572b;

    a$a(Activity activity) {
        this.f1572b = activity;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.f1572b.isFinishing() && !C0241c.m13656i(this.f1572b)) {
            this.f1572b.recreate();
        }
    }
}
