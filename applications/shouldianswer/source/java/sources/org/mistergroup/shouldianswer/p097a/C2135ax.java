package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.ax */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/ax.class */
public class C2135ax extends AbstractC2134aw {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5680d = null;

    /* renamed from: e */
    private static final SparseIntArray f5681e = null;

    /* renamed from: f */
    private long f5682f;

    public C2135ax(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f5680d, f5681e));
    }

    private C2135ax(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f5682f = -1L;
        this.f5679c.setTag(null);
        m5876a(view);
        m1782h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5682f;
            this.f5682f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5682f != 0;
        }
    }

    /* renamed from: h */
    public void m1782h() {
        synchronized (this) {
            this.f5682f = 1L;
        }
        m5862e();
    }
}
