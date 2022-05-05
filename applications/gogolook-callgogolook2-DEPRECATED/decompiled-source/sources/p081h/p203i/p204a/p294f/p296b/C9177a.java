package p081h.p203i.p204a.p294f.p296b;

import android.view.View;
import androidx.core.view.ViewCompat;
/* renamed from: h.i.a.f.b.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/b/a.class */
public class C9177a {

    /* renamed from: a */
    public final View f20901a;

    /* renamed from: b */
    public int f20902b;

    /* renamed from: c */
    public int f20903c;

    /* renamed from: d */
    public int f20904d;

    /* renamed from: e */
    public int f20905e;

    public C9177a(View view) {
        this.f20901a = view;
    }

    /* renamed from: a */
    public int m15946a() {
        return this.f20902b;
    }

    /* renamed from: a */
    public boolean m15945a(int i) {
        if (this.f20905e == i) {
            return false;
        }
        this.f20905e = i;
        m15941d();
        return true;
    }

    /* renamed from: b */
    public int m15944b() {
        return this.f20904d;
    }

    /* renamed from: b */
    public boolean m15943b(int i) {
        if (this.f20904d == i) {
            return false;
        }
        this.f20904d = i;
        m15941d();
        return true;
    }

    /* renamed from: c */
    public void m15942c() {
        this.f20902b = this.f20901a.getTop();
        this.f20903c = this.f20901a.getLeft();
        m15941d();
    }

    /* renamed from: d */
    public final void m15941d() {
        View view = this.f20901a;
        ViewCompat.offsetTopAndBottom(view, this.f20904d - (view.getTop() - this.f20902b));
        View view2 = this.f20901a;
        ViewCompat.offsetLeftAndRight(view2, this.f20905e - (view2.getLeft() - this.f20903c));
    }
}
