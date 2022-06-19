package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.dt */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/dt.class */
public class C2212dt extends AbstractC2211ds {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f6041d = null;

    /* renamed from: e */
    private static final SparseIntArray f6042e = null;

    /* renamed from: f */
    private long f6043f;

    public C2212dt(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f6041d, f6042e));
    }

    private C2212dt(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f6043f = -1L;
        this.f6040c.setTag(null);
        m5876a(view);
        m1743h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6043f;
            this.f6043f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6043f != 0;
        }
    }

    /* renamed from: h */
    public void m1743h() {
        synchronized (this) {
            this.f6043f = 1L;
        }
        m5862e();
    }
}
