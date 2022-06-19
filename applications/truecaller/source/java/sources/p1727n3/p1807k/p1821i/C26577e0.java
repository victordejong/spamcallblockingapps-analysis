package p1727n3.p1807k.p1821i;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
/* renamed from: n3.k.i.e0 */
/* loaded from: classes-dex2jar.jar:n3/k/i/e0.class */
public final class C26577e0 {

    /* renamed from: a */
    public final C26580e f74451a;

    /* renamed from: n3.k.i.e0$a */
    /* loaded from: classes-dex2jar.jar:n3/k/i/e0$a.class */
    public static class C26578a extends C26580e {

        /* renamed from: a */
        public final Window f74452a;

        /* renamed from: b */
        public final View f74453b;

        public C26578a(Window window, View view) {
            this.f74452a = window;
            this.f74453b = view;
        }
    }

    /* renamed from: n3.k.i.e0$d */
    /* loaded from: classes-dex2jar.jar:n3/k/i/e0$d.class */
    public static class C26579d extends C26580e {

        /* renamed from: a */
        public final WindowInsetsController f74454a;

        public C26579d(Window window, C26577e0 c26577e0) {
            this.f74454a = window.getInsetsController();
        }

        public C26579d(WindowInsetsController windowInsetsController, C26577e0 c26577e0) {
            this.f74454a = windowInsetsController;
        }

        @Override // p1727n3.p1807k.p1821i.C26577e0.C26580e
        /* renamed from: a */
        public void mo1633a(boolean z) {
            if (z) {
                this.f74454a.setSystemBarsAppearance(8, 8);
            } else {
                this.f74454a.setSystemBarsAppearance(0, 8);
            }
        }
    }

    /* renamed from: n3.k.i.e0$e */
    /* loaded from: classes-dex2jar.jar:n3/k/i/e0$e.class */
    public static class C26580e {
        /* renamed from: a */
        public void mo1633a(boolean z) {
        }
    }

    public C26577e0(Window window, View view) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            this.f74451a = new C26579d(window, this);
        } else if (i >= 26) {
            this.f74451a = new c(window, view);
        } else {
            this.f74451a = new b(window, view);
        }
    }

    public C26577e0(WindowInsetsController windowInsetsController) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f74451a = new C26579d(windowInsetsController, this);
        } else {
            this.f74451a = new C26580e();
        }
    }
}
