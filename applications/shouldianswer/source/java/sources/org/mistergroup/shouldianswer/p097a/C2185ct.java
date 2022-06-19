package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.ct */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/ct.class */
public class C2185ct extends AbstractC2184cs {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5905d = null;

    /* renamed from: e */
    private static final SparseIntArray f5906e = null;

    /* renamed from: f */
    private long f5907f;

    public C2185ct(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f5905d, f5906e));
    }

    private C2185ct(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f5907f = -1L;
        this.f5904c.setTag(null);
        m5876a(view);
        m1757h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5907f;
            this.f5907f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5907f != 0;
        }
    }

    /* renamed from: h */
    public void m1757h() {
        synchronized (this) {
            this.f5907f = 1L;
        }
        m5862e();
    }
}
