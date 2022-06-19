package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.bj */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/bj.class */
public class C2148bj extends AbstractC2147bi {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5718d = null;

    /* renamed from: e */
    private static final SparseIntArray f5719e = null;

    /* renamed from: f */
    private long f5720f;

    public C2148bj(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f5718d, f5719e));
    }

    private C2148bj(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f5720f = -1L;
        this.f5717c.setTag(null);
        m5876a(view);
        m1775h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5720f;
            this.f5720f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5720f != 0;
        }
    }

    /* renamed from: h */
    public void m1775h() {
        synchronized (this) {
            this.f5720f = 1L;
        }
        m5862e();
    }
}
