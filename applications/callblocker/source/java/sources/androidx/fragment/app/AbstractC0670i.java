package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;
/* renamed from: androidx.fragment.app.i */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/i.class */
public abstract class AbstractC0670i {

    /* renamed from: a */
    static final C0668g f2374a = new C0668g();

    /* renamed from: b */
    private C0668g f2375b = null;

    /* renamed from: androidx.fragment.app.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/i$a.class */
    public static abstract class AbstractC0671a {
        /* renamed from: a */
        public void m19825a(AbstractC0670i abstractC0670i, Fragment fragment) {
        }

        /* renamed from: a */
        public void m19824a(AbstractC0670i abstractC0670i, Fragment fragment, Context context) {
        }

        /* renamed from: a */
        public void m19823a(AbstractC0670i abstractC0670i, Fragment fragment, Bundle bundle) {
        }

        /* renamed from: a */
        public void mo17986a(AbstractC0670i abstractC0670i, Fragment fragment, View view, Bundle bundle) {
        }

        /* renamed from: b */
        public void m19822b(AbstractC0670i abstractC0670i, Fragment fragment) {
        }

        /* renamed from: b */
        public void m19821b(AbstractC0670i abstractC0670i, Fragment fragment, Context context) {
        }

        /* renamed from: b */
        public void m19820b(AbstractC0670i abstractC0670i, Fragment fragment, Bundle bundle) {
        }

        /* renamed from: c */
        public void m19819c(AbstractC0670i abstractC0670i, Fragment fragment) {
        }

        /* renamed from: c */
        public void m19818c(AbstractC0670i abstractC0670i, Fragment fragment, Bundle bundle) {
        }

        /* renamed from: d */
        public void m19817d(AbstractC0670i abstractC0670i, Fragment fragment) {
        }

        /* renamed from: d */
        public void m19816d(AbstractC0670i abstractC0670i, Fragment fragment, Bundle bundle) {
        }

        /* renamed from: e */
        public void m19815e(AbstractC0670i abstractC0670i, Fragment fragment) {
        }

        /* renamed from: f */
        public void m19814f(AbstractC0670i abstractC0670i, Fragment fragment) {
        }

        /* renamed from: g */
        public void m19813g(AbstractC0670i abstractC0670i, Fragment fragment) {
        }
    }

    /* renamed from: androidx.fragment.app.i$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/i$b.class */
    public interface AbstractC0672b {
        /* renamed from: a */
        void m19812a();
    }

    /* renamed from: a */
    public abstract Fragment mo19772a(String str);

    /* renamed from: a */
    public abstract AbstractC0695o mo19803a();

    /* renamed from: a */
    public abstract void mo19799a(int i, int i2);

    /* renamed from: a */
    public void m19826a(C0668g c0668g) {
        this.f2375b = c0668g;
    }

    /* renamed from: a */
    public abstract void mo19776a(AbstractC0671a abstractC0671a);

    /* renamed from: a */
    public abstract void mo19775a(AbstractC0671a abstractC0671a, boolean z);

    /* renamed from: a */
    public abstract void mo19770a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    /* renamed from: b */
    public abstract boolean mo19764b();

    /* renamed from: c */
    public abstract List<Fragment> mo19748c();

    /* renamed from: d */
    public abstract boolean mo19741d();

    /* renamed from: e */
    public C0668g mo19736e() {
        if (this.f2375b == null) {
            this.f2375b = f2374a;
        }
        return this.f2375b;
    }

    /* renamed from: f */
    public abstract boolean mo19732f();
}
