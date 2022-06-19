package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageButton;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.dv */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/dv.class */
public class C2214dv extends AbstractC2213du {

    /* renamed from: l */
    private static final ViewDataBinding.C0639b f6053l = null;

    /* renamed from: m */
    private static final SparseIntArray f6054m = new SparseIntArray();

    /* renamed from: n */
    private final CoordinatorLayout f6055n;

    /* renamed from: o */
    private long f6056o;

    static {
        f6054m.put(2131361864, 1);
        f6054m.put(2131362042, 2);
        f6054m.put(2131361983, 3);
        f6054m.put(2131362024, 4);
        f6054m.put(2131361901, 5);
        f6054m.put(2131362043, 6);
        f6054m.put(2131362036, 7);
        f6054m.put(2131362045, 8);
        f6054m.put(2131362046, 9);
    }

    public C2214dv(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 10, f6053l, f6054m));
    }

    private C2214dv(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (ImageButton) objArr[5], (ImageButton) objArr[3], (SwitchCompat) objArr[4], (SwitchCompat) objArr[7], (SwitchCompat) objArr[2], (SwitchCompat) objArr[6], (SwitchCompat) objArr[8], (SwitchCompat) objArr[9]);
        this.f6056o = -1L;
        this.f6055n = (CoordinatorLayout) objArr[0];
        this.f6055n.setTag(null);
        m5876a(view);
        m1742h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6056o;
            this.f6056o = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6056o != 0;
        }
    }

    /* renamed from: h */
    public void m1742h() {
        synchronized (this) {
            this.f6056o = 1L;
        }
        m5862e();
    }
}
