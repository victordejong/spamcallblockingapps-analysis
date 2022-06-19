package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;
/* renamed from: androidx.fragment.app.h */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/h.class */
public abstract class AbstractC0717h {

    /* renamed from: a */
    static final C0715f f2336a = new C0715f();

    /* renamed from: b */
    private C0715f f2337b = null;

    /* renamed from: androidx.fragment.app.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/h$a.class */
    public static abstract class AbstractC0718a {
        /* renamed from: a */
        public void m5615a(AbstractC0717h abstractC0717h, Fragment fragment) {
        }

        /* renamed from: a */
        public void m5614a(AbstractC0717h abstractC0717h, Fragment fragment, Context context) {
        }

        /* renamed from: a */
        public void m5613a(AbstractC0717h abstractC0717h, Fragment fragment, Bundle bundle) {
        }

        /* renamed from: a */
        public void m5612a(AbstractC0717h abstractC0717h, Fragment fragment, View view, Bundle bundle) {
        }

        /* renamed from: b */
        public void m5611b(AbstractC0717h abstractC0717h, Fragment fragment) {
        }

        /* renamed from: b */
        public void m5610b(AbstractC0717h abstractC0717h, Fragment fragment, Context context) {
        }

        /* renamed from: b */
        public void m5609b(AbstractC0717h abstractC0717h, Fragment fragment, Bundle bundle) {
        }

        /* renamed from: c */
        public void m5608c(AbstractC0717h abstractC0717h, Fragment fragment) {
        }

        /* renamed from: c */
        public void m5607c(AbstractC0717h abstractC0717h, Fragment fragment, Bundle bundle) {
        }

        /* renamed from: d */
        public void m5606d(AbstractC0717h abstractC0717h, Fragment fragment) {
        }

        /* renamed from: d */
        public void m5605d(AbstractC0717h abstractC0717h, Fragment fragment, Bundle bundle) {
        }

        /* renamed from: e */
        public void m5604e(AbstractC0717h abstractC0717h, Fragment fragment) {
        }

        /* renamed from: f */
        public void m5603f(AbstractC0717h abstractC0717h, Fragment fragment) {
        }

        /* renamed from: g */
        public void m5602g(AbstractC0717h abstractC0717h, Fragment fragment) {
        }
    }

    /* renamed from: androidx.fragment.app.h$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/h$b.class */
    public interface AbstractC0719b {
        /* renamed from: a */
        void m5601a();
    }

    /* renamed from: a */
    public abstract Fragment.SavedState mo5577a(Fragment fragment);

    /* renamed from: a */
    public abstract Fragment mo5584a(Bundle bundle, String str);

    /* renamed from: a */
    public abstract Fragment mo5563a(String str);

    /* renamed from: a */
    public abstract AbstractC0738l mo5592a();

    /* renamed from: a */
    public abstract void mo5588a(int i, int i2);

    /* renamed from: a */
    public abstract void mo5583a(Bundle bundle, String str, Fragment fragment);

    /* renamed from: a */
    public void m5616a(C0715f c0715f) {
        this.f2337b = c0715f;
    }

    /* renamed from: a */
    public abstract void mo5561a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    /* renamed from: b */
    public abstract boolean mo5555b();

    /* renamed from: c */
    public abstract List<Fragment> mo5539c();

    /* renamed from: d */
    public C0715f mo5532d() {
        if (this.f2337b == null) {
            this.f2337b = f2336a;
        }
        return this.f2337b;
    }
}
