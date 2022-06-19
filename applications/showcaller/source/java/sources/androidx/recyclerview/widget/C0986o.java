package androidx.recyclerview.widget;

import android.view.View;
/* renamed from: androidx.recyclerview.widget.o */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/o.class */
class C0986o {

    /* renamed from: a */
    final AbstractC0988b f4385a;

    /* renamed from: b */
    C0987a f4386b = new C0987a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/o$a.class */
    public static class C0987a {

        /* renamed from: a */
        int f4387a = 0;

        /* renamed from: b */
        int f4388b;

        /* renamed from: c */
        int f4389c;

        /* renamed from: d */
        int f4390d;

        /* renamed from: e */
        int f4391e;

        C0987a() {
        }

        /* renamed from: a */
        void m31330a(int i) {
            this.f4387a = i | this.f4387a;
        }

        /* renamed from: b */
        boolean m31329b() {
            int i = this.f4387a;
            if ((i & 7) == 0 || (i & (m31328c(this.f4390d, this.f4388b) << 0)) != 0) {
                int i2 = this.f4387a;
                if ((i2 & 112) != 0 && (i2 & (m31328c(this.f4390d, this.f4389c) << 4)) == 0) {
                    return false;
                }
                int i3 = this.f4387a;
                if ((i3 & 1792) != 0 && (i3 & (m31328c(this.f4391e, this.f4388b) << 8)) == 0) {
                    return false;
                }
                int i4 = this.f4387a;
                return (i4 & 28672) == 0 || (i4 & (m31328c(this.f4391e, this.f4389c) << 12)) != 0;
            }
            return false;
        }

        /* renamed from: c */
        int m31328c(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }

        /* renamed from: d */
        void m31327d() {
            this.f4387a = 0;
        }

        /* renamed from: e */
        void m31326e(int i, int i2, int i3, int i4) {
            this.f4388b = i;
            this.f4389c = i2;
            this.f4390d = i3;
            this.f4391e = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.o$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/o$b.class */
    public interface AbstractC0988b {
        /* renamed from: a */
        View mo31325a(int i);

        /* renamed from: b */
        int mo31324b(View view);

        /* renamed from: c */
        int mo31323c();

        /* renamed from: d */
        int mo31322d();

        /* renamed from: e */
        int mo31321e(View view);
    }

    public C0986o(AbstractC0988b abstractC0988b) {
        this.f4385a = abstractC0988b;
    }

    /* renamed from: a */
    public View m31332a(int i, int i2, int i3, int i4) {
        int mo31323c = this.f4385a.mo31323c();
        int mo31322d = this.f4385a.mo31322d();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (true) {
            View view2 = view;
            if (i != i2) {
                View mo31325a = this.f4385a.mo31325a(i);
                this.f4386b.m31326e(mo31323c, mo31322d, this.f4385a.mo31324b(mo31325a), this.f4385a.mo31321e(mo31325a));
                if (i3 != 0) {
                    this.f4386b.m31327d();
                    this.f4386b.m31330a(i3);
                    if (this.f4386b.m31329b()) {
                        return mo31325a;
                    }
                }
                View view3 = view2;
                if (i4 != 0) {
                    this.f4386b.m31327d();
                    this.f4386b.m31330a(i4);
                    view3 = view2;
                    if (this.f4386b.m31329b()) {
                        view3 = mo31325a;
                    }
                }
                i += i5;
                view = view3;
            } else {
                return view2;
            }
        }
    }

    /* renamed from: b */
    public boolean m31331b(View view, int i) {
        this.f4386b.m31326e(this.f4385a.mo31323c(), this.f4385a.mo31322d(), this.f4385a.mo31324b(view), this.f4385a.mo31321e(view));
        if (i != 0) {
            this.f4386b.m31327d();
            this.f4386b.m31330a(i);
            return this.f4386b.m31329b();
        }
        return false;
    }
}
