package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.ap */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/ap.class */
public class C2127ap extends AbstractC2126ao {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5614d = null;

    /* renamed from: e */
    private static final SparseIntArray f5615e = null;

    /* renamed from: f */
    private long f5616f;

    public C2127ap(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f5614d, f5615e));
    }

    private C2127ap(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f5616f = -1L;
        this.f5613c.setTag(null);
        m5876a(view);
        m1786h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5616f;
            this.f5616f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5616f != 0;
        }
    }

    /* renamed from: h */
    public void m1786h() {
        synchronized (this) {
            this.f5616f = 1L;
        }
        m5862e();
    }
}
