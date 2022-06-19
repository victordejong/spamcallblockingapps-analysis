package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import org.mistergroup.shouldianswer.utils.BetterEditText;
/* renamed from: org.mistergroup.shouldianswer.a.cv */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/cv.class */
public class C2187cv extends AbstractC2186cu {

    /* renamed from: g */
    private static final ViewDataBinding.C0639b f5912g = null;

    /* renamed from: h */
    private static final SparseIntArray f5913h = new SparseIntArray();

    /* renamed from: i */
    private final CoordinatorLayout f5914i;

    /* renamed from: j */
    private long f5915j;

    static {
        f5913h.put(2131361864, 1);
        f5913h.put(2131362094, 2);
        f5913h.put(2131362284, 3);
        f5913h.put(2131362175, 4);
    }

    public C2187cv(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 5, f5912g, f5913h));
    }

    private C2187cv(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (BetterEditText) objArr[2], (RecyclerView) objArr[4], (LinearLayout) objArr[3]);
        this.f5915j = -1L;
        this.f5914i = (CoordinatorLayout) objArr[0];
        this.f5914i.setTag(null);
        m5876a(view);
        m1756h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5915j;
            this.f5915j = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5915j != 0;
        }
    }

    /* renamed from: h */
    public void m1756h() {
        synchronized (this) {
            this.f5915j = 1L;
        }
        m5862e();
    }
}
