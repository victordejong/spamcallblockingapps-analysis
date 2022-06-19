package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.cl */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/cl.class */
public class C2177cl extends AbstractC2176ck {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5854d = null;

    /* renamed from: e */
    private static final SparseIntArray f5855e = null;

    /* renamed from: f */
    private long f5856f;

    public C2177cl(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f5854d, f5855e));
    }

    private C2177cl(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f5856f = -1L;
        this.f5853c.setTag(null);
        m5876a(view);
        m1761h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5856f;
            this.f5856f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5856f != 0;
        }
    }

    /* renamed from: h */
    public void m1761h() {
        synchronized (this) {
            this.f5856f = 1L;
        }
        m5862e();
    }
}
