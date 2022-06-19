package androidx.core.view;

import android.view.ViewGroup;
/* renamed from: androidx.core.view.q */
/* loaded from: classes-dex2jar.jar:androidx/core/view/q.class */
public final class C0921q {

    /* renamed from: a */
    private int f3754a;

    /* renamed from: b */
    private int f3755b;

    public C0921q(ViewGroup viewGroup) {
    }

    /* renamed from: a */
    public final int m44164a() {
        return this.f3754a | this.f3755b;
    }

    /* renamed from: a */
    public final void m44163a(int i) {
        if (i == 1) {
            this.f3755b = 0;
        } else {
            this.f3754a = 0;
        }
    }

    /* renamed from: a */
    public final void m44162a(int i, int i2) {
        if (i2 == 1) {
            this.f3755b = i;
        } else {
            this.f3754a = i;
        }
    }
}
