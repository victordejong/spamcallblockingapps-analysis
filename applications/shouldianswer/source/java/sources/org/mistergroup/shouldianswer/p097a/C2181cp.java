package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.cp */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/cp.class */
public class C2181cp extends AbstractC2180co {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5879d = null;

    /* renamed from: e */
    private static final SparseIntArray f5880e = null;

    /* renamed from: f */
    private long f5881f;

    public C2181cp(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f5879d, f5880e));
    }

    private C2181cp(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f5881f = -1L;
        this.f5878c.setTag(null);
        m5876a(view);
        m1759h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5881f;
            this.f5881f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5881f != 0;
        }
    }

    /* renamed from: h */
    public void m1759h() {
        synchronized (this) {
            this.f5881f = 1L;
        }
        m5862e();
    }
}
