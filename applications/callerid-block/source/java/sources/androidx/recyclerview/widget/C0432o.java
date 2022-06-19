package androidx.recyclerview.widget;

import android.view.View;
/* renamed from: androidx.recyclerview.widget.o */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/o.class */
class C0432o {

    /* renamed from: a */
    final AbstractC0434b f2405a;

    /* renamed from: b */
    C0433a f2406b = new C0433a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/o$a.class */
    public static class C0433a {

        /* renamed from: a */
        int f2407a = 0;

        /* renamed from: b */
        int f2408b;

        /* renamed from: c */
        int f2409c;

        /* renamed from: d */
        int f2410d;

        /* renamed from: e */
        int f2411e;

        C0433a() {
        }

        /* renamed from: a */
        void m12356a(int i) {
            this.f2407a = i | this.f2407a;
        }

        /* renamed from: b */
        boolean m12355b() {
            int i = this.f2407a;
            if ((i & 7) == 0 || (i & (m12354c(this.f2410d, this.f2408b) << 0)) != 0) {
                int i2 = this.f2407a;
                if ((i2 & 112) != 0 && (i2 & (m12354c(this.f2410d, this.f2409c) << 4)) == 0) {
                    return false;
                }
                int i3 = this.f2407a;
                if ((i3 & 1792) != 0 && (i3 & (m12354c(this.f2411e, this.f2408b) << 8)) == 0) {
                    return false;
                }
                int i4 = this.f2407a;
                return (i4 & 28672) == 0 || (i4 & (m12354c(this.f2411e, this.f2409c) << 12)) != 0;
            }
            return false;
        }

        /* renamed from: c */
        int m12354c(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }

        /* renamed from: d */
        void m12353d() {
            this.f2407a = 0;
        }

        /* renamed from: e */
        void m12352e(int i, int i2, int i3, int i4) {
            this.f2408b = i;
            this.f2409c = i2;
            this.f2410d = i3;
            this.f2411e = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.o$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/o$b.class */
    public interface AbstractC0434b {
        /* renamed from: a */
        View m12351a(int i);

        /* renamed from: b */
        int m12350b();

        /* renamed from: c */
        int m12349c(View view);

        /* renamed from: d */
        int m12348d();

        /* renamed from: e */
        int m12347e(View view);
    }

    public C0432o(AbstractC0434b abstractC0434b) {
        this.f2405a = abstractC0434b;
    }

    /* renamed from: a */
    View m12358a(int i, int i2, int i3, int i4) {
        int m12348d = this.f2405a.m12348d();
        int m12350b = this.f2405a.m12350b();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (true) {
            View view2 = view;
            if (i != i2) {
                View m12351a = this.f2405a.m12351a(i);
                this.f2406b.m12352e(m12348d, m12350b, this.f2405a.m12349c(m12351a), this.f2405a.m12347e(m12351a));
                if (i3 != 0) {
                    this.f2406b.m12353d();
                    this.f2406b.m12356a(i3);
                    if (this.f2406b.m12355b()) {
                        return m12351a;
                    }
                }
                View view3 = view2;
                if (i4 != 0) {
                    this.f2406b.m12353d();
                    this.f2406b.m12356a(i4);
                    view3 = view2;
                    if (this.f2406b.m12355b()) {
                        view3 = m12351a;
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
    public boolean m12357b(View view, int i) {
        this.f2406b.m12352e(this.f2405a.m12348d(), this.f2405a.m12350b(), this.f2405a.m12349c(view), this.f2405a.m12347e(view));
        if (i != 0) {
            this.f2406b.m12353d();
            this.f2406b.m12356a(i);
            return this.f2406b.m12355b();
        }
        return false;
    }
}
