package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.cb */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/cb.class */
public class C2167cb extends AbstractC2166ca {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5806d = null;

    /* renamed from: e */
    private static final SparseIntArray f5807e = null;

    /* renamed from: f */
    private long f5808f;

    public C2167cb(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f5806d, f5807e));
    }

    private C2167cb(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f5808f = -1L;
        this.f5805c.setTag(null);
        m5876a(view);
        m1766h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5808f;
            this.f5808f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5808f != 0;
        }
    }

    /* renamed from: h */
    public void m1766h() {
        synchronized (this) {
            this.f5808f = 1L;
        }
        m5862e();
    }
}
