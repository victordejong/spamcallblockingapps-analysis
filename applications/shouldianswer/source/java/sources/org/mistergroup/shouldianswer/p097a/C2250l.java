package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.l */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/l.class */
public class C2250l extends AbstractC2249k {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f6230d = null;

    /* renamed from: e */
    private static final SparseIntArray f6231e = new SparseIntArray();

    /* renamed from: f */
    private final CoordinatorLayout f6232f;

    /* renamed from: g */
    private long f6233g;

    static {
        f6231e.put(2131362404, 1);
    }

    public C2250l(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 2, f6230d, f6231e));
    }

    private C2250l(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (AppCompatTextView) objArr[1]);
        this.f6233g = -1L;
        this.f6232f = (CoordinatorLayout) objArr[0];
        this.f6232f.setTag(null);
        m5876a(view);
        m1724h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6233g;
            this.f6233g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6233g != 0;
        }
    }

    /* renamed from: h */
    public void m1724h() {
        synchronized (this) {
            this.f6233g = 1L;
        }
        m5862e();
    }
}
