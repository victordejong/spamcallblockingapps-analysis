package p1727n3.p1744b0.p1745a;

import android.view.View;
/* renamed from: n3.b0.a.a0 */
/* loaded from: classes-dex2jar.jar:n3/b0/a/a0.class */
public class C25567a0 {

    /* renamed from: a */
    public final AbstractC25569b f71564a;

    /* renamed from: b */
    public C25568a f71565b = new C25568a();

    /* renamed from: n3.b0.a.a0$a */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/a0$a.class */
    public static class C25568a {

        /* renamed from: a */
        public int f71566a = 0;

        /* renamed from: b */
        public int f71567b;

        /* renamed from: c */
        public int f71568c;

        /* renamed from: d */
        public int f71569d;

        /* renamed from: e */
        public int f71570e;

        /* renamed from: a */
        public boolean m3222a() {
            int i = this.f71566a;
            if ((i & 7) == 0 || (i & (m3221b(this.f71569d, this.f71567b) << 0)) != 0) {
                int i2 = this.f71566a;
                if ((i2 & 112) != 0 && (i2 & (m3221b(this.f71569d, this.f71568c) << 4)) == 0) {
                    return false;
                }
                int i3 = this.f71566a;
                if ((i3 & 1792) != 0 && (i3 & (m3221b(this.f71570e, this.f71567b) << 8)) == 0) {
                    return false;
                }
                int i4 = this.f71566a;
                return (i4 & 28672) == 0 || (i4 & (m3221b(this.f71570e, this.f71568c) << 12)) != 0;
            }
            return false;
        }

        /* renamed from: b */
        public int m3221b(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }
    }

    /* renamed from: n3.b0.a.a0$b */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/a0$b.class */
    public interface AbstractC25569b {
        /* renamed from: a */
        int mo3220a();

        /* renamed from: b */
        int mo3219b();

        /* renamed from: c */
        View mo3218c(int i);

        /* renamed from: d */
        int mo3217d(View view);

        /* renamed from: e */
        int mo3216e(View view);
    }

    public C25567a0(AbstractC25569b abstractC25569b) {
        this.f71564a = abstractC25569b;
    }

    /* renamed from: a */
    public View m3224a(int i, int i2, int i3, int i4) {
        int mo3220a = this.f71564a.mo3220a();
        int mo3219b = this.f71564a.mo3219b();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (true) {
            View view2 = view;
            if (i != i2) {
                View mo3218c = this.f71564a.mo3218c(i);
                int mo3217d = this.f71564a.mo3217d(mo3218c);
                int mo3216e = this.f71564a.mo3216e(mo3218c);
                C25568a c25568a = this.f71565b;
                c25568a.f71567b = mo3220a;
                c25568a.f71568c = mo3219b;
                c25568a.f71569d = mo3217d;
                c25568a.f71570e = mo3216e;
                if (i3 != 0) {
                    c25568a.f71566a = 0;
                    c25568a.f71566a = i3 | 0;
                    if (c25568a.m3222a()) {
                        return mo3218c;
                    }
                }
                View view3 = view2;
                if (i4 != 0) {
                    C25568a c25568a2 = this.f71565b;
                    c25568a2.f71566a = 0;
                    c25568a2.f71566a = i4 | 0;
                    view3 = view2;
                    if (c25568a2.m3222a()) {
                        view3 = mo3218c;
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
    public boolean m3223b(View view, int i) {
        C25568a c25568a = this.f71565b;
        int mo3220a = this.f71564a.mo3220a();
        int mo3219b = this.f71564a.mo3219b();
        int mo3217d = this.f71564a.mo3217d(view);
        int mo3216e = this.f71564a.mo3216e(view);
        c25568a.f71567b = mo3220a;
        c25568a.f71568c = mo3219b;
        c25568a.f71569d = mo3217d;
        c25568a.f71570e = mo3216e;
        boolean z = false;
        if (i != 0) {
            C25568a c25568a2 = this.f71565b;
            c25568a2.f71566a = 0;
            c25568a2.f71566a = 0 | i;
            z = c25568a2.m3222a();
        }
        return z;
    }
}
