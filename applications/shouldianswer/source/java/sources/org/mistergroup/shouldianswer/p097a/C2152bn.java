package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.bn */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/bn.class */
public class C2152bn extends AbstractC2151bm {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5739d = null;

    /* renamed from: e */
    private static final SparseIntArray f5740e = null;

    /* renamed from: f */
    private long f5741f;

    public C2152bn(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f5739d, f5740e));
    }

    private C2152bn(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f5741f = -1L;
        this.f5738c.setTag(null);
        m5876a(view);
        m1773h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5741f;
            this.f5741f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5741f != 0;
        }
    }

    /* renamed from: h */
    public void m1773h() {
        synchronized (this) {
            this.f5741f = 1L;
        }
        m5862e();
    }
}
