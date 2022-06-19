package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.ep */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/ep.class */
public class C2235ep extends AbstractC2234eo {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f6185d = null;

    /* renamed from: e */
    private static final SparseIntArray f6186e = null;

    /* renamed from: f */
    private long f6187f;

    public C2235ep(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f6185d, f6186e));
    }

    private C2235ep(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f6187f = -1L;
        this.f6184c.setTag(null);
        m5876a(view);
        m1732h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6187f;
            this.f6187f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6187f != 0;
        }
    }

    /* renamed from: h */
    public void m1732h() {
        synchronized (this) {
            this.f6187f = 1L;
        }
        m5862e();
    }
}
