package androidx.recyclerview.widget;

import android.view.View;
/* renamed from: androidx.recyclerview.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p.class */
final class C2706p {

    /* renamed from: a */
    final AbstractC2708b f10314a;

    /* renamed from: b */
    C2707a f10315b = new C2707a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p$a.class */
    public static final class C2707a {

        /* renamed from: a */
        int f10316a = 0;

        /* renamed from: b */
        int f10317b;

        /* renamed from: c */
        int f10318c;

        /* renamed from: d */
        int f10319d;

        /* renamed from: e */
        int f10320e;

        C2707a() {
        }

        /* renamed from: a */
        private static int m40030a(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }

        /* renamed from: a */
        final void m40031a(int i) {
            this.f10316a = i | this.f10316a;
        }

        /* renamed from: a */
        final void m40029a(int i, int i2, int i3, int i4) {
            this.f10317b = i;
            this.f10318c = i2;
            this.f10319d = i3;
            this.f10320e = i4;
        }

        /* renamed from: a */
        final boolean m40032a() {
            int i = this.f10316a;
            if ((i & 7) == 0 || (i & (m40030a(this.f10319d, this.f10317b) << 0)) != 0) {
                int i2 = this.f10316a;
                if ((i2 & 112) != 0 && (i2 & (m40030a(this.f10319d, this.f10318c) << 4)) == 0) {
                    return false;
                }
                int i3 = this.f10316a;
                if ((i3 & 1792) != 0 && (i3 & (m40030a(this.f10320e, this.f10317b) << 8)) == 0) {
                    return false;
                }
                int i4 = this.f10316a;
                return (i4 & 28672) == 0 || (i4 & (m40030a(this.f10320e, this.f10318c) << 12)) != 0;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.p$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p$b.class */
    public interface AbstractC2708b {
        /* renamed from: a */
        int mo40028a();

        /* renamed from: a */
        int mo40026a(View view);

        /* renamed from: a */
        View mo40027a(int i);

        /* renamed from: b */
        int mo40025b();

        /* renamed from: b */
        int mo40024b(View view);
    }

    public C2706p(AbstractC2708b abstractC2708b) {
        this.f10314a = abstractC2708b;
    }

    /* renamed from: a */
    public final View m40034a(int i, int i2, int i3, int i4) {
        int mo40028a = this.f10314a.mo40028a();
        int mo40025b = this.f10314a.mo40025b();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (true) {
            View view2 = view;
            if (i != i2) {
                View mo40027a = this.f10314a.mo40027a(i);
                this.f10315b.m40029a(mo40028a, mo40025b, this.f10314a.mo40026a(mo40027a), this.f10314a.mo40024b(mo40027a));
                if (i3 != 0) {
                    this.f10315b.f10316a = 0;
                    this.f10315b.m40031a(i3);
                    if (this.f10315b.m40032a()) {
                        return mo40027a;
                    }
                }
                View view3 = view2;
                if (i4 != 0) {
                    this.f10315b.f10316a = 0;
                    this.f10315b.m40031a(i4);
                    view3 = view2;
                    if (this.f10315b.m40032a()) {
                        view3 = mo40027a;
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
    public final boolean m40033a(View view) {
        this.f10315b.m40029a(this.f10314a.mo40028a(), this.f10314a.mo40025b(), this.f10314a.mo40026a(view), this.f10314a.mo40024b(view));
        this.f10315b.f10316a = 0;
        this.f10315b.m40031a(24579);
        return this.f10315b.m40032a();
    }
}
