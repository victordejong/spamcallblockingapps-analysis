package androidx.recyclerview.widget;

import android.view.View;
import me.zhanghai.android.materialprogressbar.C3681R;
/* renamed from: androidx.recyclerview.widget.c0 */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c0.class */
public class C0614c0 {

    /* renamed from: a */
    public final AbstractC0616b f2405a;

    /* renamed from: b */
    public C0615a f2406b = new C0615a();

    /* renamed from: androidx.recyclerview.widget.c0$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c0$a.class */
    public static class C0615a {

        /* renamed from: a */
        public int f2407a = 0;

        /* renamed from: b */
        public int f2408b;

        /* renamed from: c */
        public int f2409c;

        /* renamed from: d */
        public int f2410d;

        /* renamed from: e */
        public int f2411e;

        /* renamed from: a */
        public boolean m7595a() {
            int i = this.f2407a;
            if ((i & 7) == 0 || (i & (m7594b(this.f2410d, this.f2408b) << 0)) != 0) {
                int i2 = this.f2407a;
                if ((i2 & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) != 0 && (i2 & (m7594b(this.f2410d, this.f2409c) << 4)) == 0) {
                    return false;
                }
                int i3 = this.f2407a;
                if ((i3 & 1792) != 0 && (i3 & (m7594b(this.f2411e, this.f2408b) << 8)) == 0) {
                    return false;
                }
                int i4 = this.f2407a;
                return (i4 & 28672) == 0 || (i4 & (m7594b(this.f2411e, this.f2409c) << 12)) != 0;
            }
            return false;
        }

        /* renamed from: b */
        public int m7594b(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }
    }

    /* renamed from: androidx.recyclerview.widget.c0$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c0$b.class */
    public interface AbstractC0616b {
        /* renamed from: a */
        int mo7593a();

        /* renamed from: b */
        int mo7592b(View view);

        /* renamed from: c */
        View mo7591c(int i);

        /* renamed from: d */
        int mo7590d();

        /* renamed from: e */
        int mo7589e(View view);
    }

    public C0614c0(AbstractC0616b abstractC0616b) {
        this.f2405a = abstractC0616b;
    }

    /* renamed from: a */
    public View m7597a(int i, int i2, int i3, int i4) {
        int mo7590d = this.f2405a.mo7590d();
        int mo7593a = this.f2405a.mo7593a();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (true) {
            View view2 = view;
            if (i != i2) {
                View mo7591c = this.f2405a.mo7591c(i);
                int mo7592b = this.f2405a.mo7592b(mo7591c);
                int mo7589e = this.f2405a.mo7589e(mo7591c);
                C0615a c0615a = this.f2406b;
                c0615a.f2408b = mo7590d;
                c0615a.f2409c = mo7593a;
                c0615a.f2410d = mo7592b;
                c0615a.f2411e = mo7589e;
                if (i3 != 0) {
                    c0615a.f2407a = 0;
                    c0615a.f2407a = i3 | 0;
                    if (c0615a.m7595a()) {
                        return mo7591c;
                    }
                }
                View view3 = view2;
                if (i4 != 0) {
                    C0615a c0615a2 = this.f2406b;
                    c0615a2.f2407a = 0;
                    c0615a2.f2407a = i4 | 0;
                    view3 = view2;
                    if (c0615a2.m7595a()) {
                        view3 = mo7591c;
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
    public boolean m7596b(View view, int i) {
        C0615a c0615a = this.f2406b;
        int mo7590d = this.f2405a.mo7590d();
        int mo7593a = this.f2405a.mo7593a();
        int mo7592b = this.f2405a.mo7592b(view);
        int mo7589e = this.f2405a.mo7589e(view);
        c0615a.f2408b = mo7590d;
        c0615a.f2409c = mo7593a;
        c0615a.f2410d = mo7592b;
        c0615a.f2411e = mo7589e;
        boolean z = false;
        if (i != 0) {
            C0615a c0615a2 = this.f2406b;
            c0615a2.f2407a = 0;
            c0615a2.f2407a = 0 | i;
            z = c0615a2.m7595a();
        }
        return z;
    }
}
