package androidx.recyclerview.widget;

import android.view.View;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ViewBoundsCheck.class */
class ViewBoundsCheck {

    /* renamed from: a */
    final Callback f4913a;

    /* renamed from: b */
    BoundFlags f4914b = new BoundFlags();

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ViewBoundsCheck$BoundFlags.class */
    static class BoundFlags {

        /* renamed from: a */
        int f4915a = 0;

        /* renamed from: b */
        int f4916b;

        /* renamed from: c */
        int f4917c;

        /* renamed from: d */
        int f4918d;

        /* renamed from: e */
        int f4919e;

        BoundFlags() {
        }

        /* renamed from: a */
        void m17051a(int i) {
            this.f4915a = i | this.f4915a;
        }

        /* renamed from: b */
        boolean m17050b() {
            int i = this.f4915a;
            if ((i & 7) != 0 && (i & (m17049c(this.f4918d, this.f4916b) << 0)) == 0) {
                return false;
            }
            int i2 = this.f4915a;
            if ((i2 & 112) != 0 && (i2 & (m17049c(this.f4918d, this.f4917c) << 4)) == 0) {
                return false;
            }
            int i3 = this.f4915a;
            if ((i3 & 1792) != 0 && (i3 & (m17049c(this.f4919e, this.f4916b) << 8)) == 0) {
                return false;
            }
            int i4 = this.f4915a;
            return (i4 & 28672) == 0 || (i4 & (m17049c(this.f4919e, this.f4917c) << 12)) != 0;
        }

        /* renamed from: c */
        int m17049c(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }

        /* renamed from: d */
        void m17048d() {
            this.f4915a = 0;
        }

        /* renamed from: e */
        void m17047e(int i, int i2, int i3, int i4) {
            this.f4916b = i;
            this.f4917c = i2;
            this.f4918d = i3;
            this.f4919e = i4;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ViewBoundsCheck$Callback.class */
    interface Callback {
        /* renamed from: a */
        View mo17046a(int i);

        /* renamed from: b */
        int mo17045b(View view);

        /* renamed from: c */
        int mo17044c();

        /* renamed from: d */
        int mo17043d();

        /* renamed from: e */
        int mo17042e(View view);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ViewBoundsCheck$ViewBounds.class */
    public @interface ViewBounds {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewBoundsCheck(Callback callback) {
        this.f4913a = callback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public View m17053a(int i, int i2, int i3, int i4) {
        int c = this.f4913a.mo17044c();
        int d = this.f4913a.mo17043d();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View a = this.f4913a.mo17046a(i);
            this.f4914b.m17047e(c, d, this.f4913a.mo17045b(a), this.f4913a.mo17042e(a));
            if (i3 != 0) {
                this.f4914b.m17048d();
                this.f4914b.m17051a(i3);
                if (this.f4914b.m17050b()) {
                    return a;
                }
            }
            view = view;
            if (i4 != 0) {
                this.f4914b.m17048d();
                this.f4914b.m17051a(i4);
                view = view;
                if (this.f4914b.m17050b()) {
                    view = a;
                }
            }
            i += i5;
        }
        return view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public boolean m17052b(View view, int i) {
        this.f4914b.m17047e(this.f4913a.mo17044c(), this.f4913a.mo17043d(), this.f4913a.mo17045b(view), this.f4913a.mo17042e(view));
        if (i == 0) {
            return false;
        }
        this.f4914b.m17048d();
        this.f4914b.m17051a(i);
        return this.f4914b.m17050b();
    }
}
