package p459j.p460a.p613z0.p617p;

import android.os.Handler;
import android.view.View;
/* renamed from: j.a.z0.p.b */
/* loaded from: classes3-dex2jar.jar:j/a/z0/p/b.class */
public class C14667b {

    /* renamed from: b */
    public static C14667b f32748b;

    /* renamed from: a */
    public Handler f32749a = new Handler();

    /* renamed from: j.a.z0.p.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/p/b$a.class */
    public class RunnableC14668a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f32750a;

        public RunnableC14668a(C14667b bVar, View view) {
            this.f32750a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f32750a.setEnabled(true);
        }
    }

    /* renamed from: a */
    public static C14667b m905a() {
        if (f32748b == null) {
            f32748b = new C14667b();
        }
        return f32748b;
    }

    /* renamed from: a */
    public void m904a(View view) {
        view.setEnabled(false);
        this.f32749a.postDelayed(new RunnableC14668a(this, view), 500L);
    }
}
