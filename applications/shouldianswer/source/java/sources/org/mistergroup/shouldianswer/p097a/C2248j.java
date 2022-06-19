package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.j */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/j.class */
public class C2248j extends AbstractC2247i {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f6226d = null;

    /* renamed from: e */
    private static final SparseIntArray f6227e = null;

    /* renamed from: f */
    private long f6228f;

    public C2248j(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f6226d, f6227e));
    }

    private C2248j(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f6228f = -1L;
        this.f6225c.setTag(null);
        m5876a(view);
        m1725h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6228f;
            this.f6228f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6228f != 0;
        }
    }

    /* renamed from: h */
    public void m1725h() {
        synchronized (this) {
            this.f6228f = 1L;
        }
        m5862e();
    }
}
