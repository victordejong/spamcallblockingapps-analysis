package androidx.recyclerview.widget;

import android.view.View;
/* renamed from: androidx.recyclerview.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/m.class */
class C1021m {

    /* renamed from: a */
    final AbstractC1023b f3210a;

    /* renamed from: b */
    C1022a f3211b = new C1022a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/m$a.class */
    public static class C1022a {

        /* renamed from: a */
        int f3212a = 0;

        /* renamed from: b */
        int f3213b;

        /* renamed from: c */
        int f3214c;

        /* renamed from: d */
        int f3215d;

        /* renamed from: e */
        int f3216e;

        C1022a() {
        }

        /* renamed from: a */
        int m4536a(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }

        /* renamed from: a */
        void m4538a() {
            this.f3212a = 0;
        }

        /* renamed from: a */
        void m4537a(int i) {
            this.f3212a = i | this.f3212a;
        }

        /* renamed from: a */
        void m4535a(int i, int i2, int i3, int i4) {
            this.f3213b = i;
            this.f3214c = i2;
            this.f3215d = i3;
            this.f3216e = i4;
        }

        /* renamed from: b */
        boolean m4534b() {
            int i = this.f3212a;
            if ((i & 7) == 0 || (i & (m4536a(this.f3215d, this.f3213b) << 0)) != 0) {
                int i2 = this.f3212a;
                if ((i2 & 112) != 0 && (i2 & (m4536a(this.f3215d, this.f3214c) << 4)) == 0) {
                    return false;
                }
                int i3 = this.f3212a;
                if ((i3 & 1792) != 0 && (i3 & (m4536a(this.f3216e, this.f3213b) << 8)) == 0) {
                    return false;
                }
                int i4 = this.f3212a;
                return (i4 & 28672) == 0 || (i4 & (m4536a(this.f3216e, this.f3214c) << 12)) != 0;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.m$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/m$b.class */
    public interface AbstractC1023b {
        /* renamed from: a */
        int mo4533a();

        /* renamed from: a */
        int mo4531a(View view);

        /* renamed from: a */
        View mo4532a(int i);

        /* renamed from: b */
        int mo4530b();

        /* renamed from: b */
        int mo4529b(View view);
    }

    public C1021m(AbstractC1023b abstractC1023b) {
        this.f3210a = abstractC1023b;
    }

    /* renamed from: a */
    public View m4540a(int i, int i2, int i3, int i4) {
        int mo4533a = this.f3210a.mo4533a();
        int mo4530b = this.f3210a.mo4530b();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (true) {
            View view2 = view;
            if (i != i2) {
                View mo4532a = this.f3210a.mo4532a(i);
                this.f3211b.m4535a(mo4533a, mo4530b, this.f3210a.mo4531a(mo4532a), this.f3210a.mo4529b(mo4532a));
                if (i3 != 0) {
                    this.f3211b.m4538a();
                    this.f3211b.m4537a(i3);
                    if (this.f3211b.m4534b()) {
                        return mo4532a;
                    }
                }
                View view3 = view2;
                if (i4 != 0) {
                    this.f3211b.m4538a();
                    this.f3211b.m4537a(i4);
                    view3 = view2;
                    if (this.f3211b.m4534b()) {
                        view3 = mo4532a;
                    }
                }
                i += i5;
                view = view3;
            } else {
                return view2;
            }
        }
    }

    /* renamed from: a */
    public boolean m4539a(View view, int i) {
        this.f3211b.m4535a(this.f3210a.mo4533a(), this.f3210a.mo4530b(), this.f3210a.mo4531a(view), this.f3210a.mo4529b(view));
        if (i != 0) {
            this.f3211b.m4538a();
            this.f3211b.m4537a(i);
            return this.f3211b.m4534b();
        }
        return false;
    }
}
