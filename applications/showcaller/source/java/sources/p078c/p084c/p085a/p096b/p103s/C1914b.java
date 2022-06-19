package p078c.p084c.p085a.p096b.p103s;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* renamed from: c.c.a.b.s.b */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/s/b.class */
public final class C1914b {

    /* renamed from: a */
    private final View f6844a;

    /* renamed from: b */
    private boolean f6845b = false;

    /* renamed from: c */
    private int f6846c = 0;

    public C1914b(AbstractC1913a abstractC1913a) {
        this.f6844a = (View) abstractC1913a;
    }

    /* renamed from: a */
    private void m28703a() {
        ViewParent parent = this.f6844a.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).m33565p(this.f6844a);
        }
    }

    /* renamed from: b */
    public int m28702b() {
        return this.f6846c;
    }

    /* renamed from: c */
    public boolean m28701c() {
        return this.f6845b;
    }

    /* renamed from: d */
    public void m28700d(Bundle bundle) {
        this.f6845b = bundle.getBoolean("expanded", false);
        this.f6846c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f6845b) {
            m28703a();
        }
    }

    /* renamed from: e */
    public Bundle m28699e() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f6845b);
        bundle.putInt("expandedComponentIdHint", this.f6846c);
        return bundle;
    }

    /* renamed from: f */
    public void m28698f(int i) {
        this.f6846c = i;
    }
}
