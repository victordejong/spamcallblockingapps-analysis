package androidx.core.view;

import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/core/view/q.class */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private int f2008a;

    /* renamed from: b  reason: collision with root package name */
    private int f2009b;

    public q(ViewGroup viewGroup) {
    }

    public final int a() {
        return this.f2008a | this.f2009b;
    }

    public final void a(int i) {
        if (i == 1) {
            this.f2009b = 0;
        } else {
            this.f2008a = 0;
        }
    }

    public final void a(int i, int i2) {
        if (i2 == 1) {
            this.f2009b = i;
        } else {
            this.f2008a = i;
        }
    }
}
