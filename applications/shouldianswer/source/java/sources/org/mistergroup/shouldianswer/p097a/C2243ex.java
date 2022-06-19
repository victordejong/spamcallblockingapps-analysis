package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.ex */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/ex.class */
public class C2243ex extends AbstractC2242ew {

    /* renamed from: c */
    private static final ViewDataBinding.C0639b f6209c = null;

    /* renamed from: d */
    private static final SparseIntArray f6210d = null;

    /* renamed from: e */
    private final FrameLayout f6211e;

    /* renamed from: f */
    private long f6212f;

    public C2243ex(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f6209c, f6210d));
    }

    private C2243ex(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0);
        this.f6212f = -1L;
        this.f6211e = (FrameLayout) objArr[0];
        this.f6211e.setTag(null);
        m5876a(view);
        m1728h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6212f;
            this.f6212f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6212f != 0;
        }
    }

    /* renamed from: h */
    public void m1728h() {
        synchronized (this) {
            this.f6212f = 1L;
        }
        m5862e();
    }
}
