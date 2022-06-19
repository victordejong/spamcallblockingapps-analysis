package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.bv */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/bv.class */
public class C2160bv extends AbstractC2159bu {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5776d = null;

    /* renamed from: e */
    private static final SparseIntArray f5777e = null;

    /* renamed from: f */
    private long f5778f;

    public C2160bv(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f5776d, f5777e));
    }

    private C2160bv(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f5778f = -1L;
        this.f5775c.setTag(null);
        m5876a(view);
        m1769h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5778f;
            this.f5778f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5778f != 0;
        }
    }

    /* renamed from: h */
    public void m1769h() {
        synchronized (this) {
            this.f5778f = 1L;
        }
        m5862e();
    }
}
