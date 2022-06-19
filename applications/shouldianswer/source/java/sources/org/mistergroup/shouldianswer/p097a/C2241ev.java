package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.ev */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/ev.class */
public class C2241ev extends AbstractC2240eu {

    /* renamed from: c */
    private static final ViewDataBinding.C0639b f6205c = null;

    /* renamed from: d */
    private static final SparseIntArray f6206d = null;

    /* renamed from: e */
    private final FrameLayout f6207e;

    /* renamed from: f */
    private long f6208f;

    public C2241ev(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f6205c, f6206d));
    }

    private C2241ev(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0);
        this.f6208f = -1L;
        this.f6207e = (FrameLayout) objArr[0];
        this.f6207e.setTag(null);
        m5876a(view);
        m1729h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6208f;
            this.f6208f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6208f != 0;
        }
    }

    /* renamed from: h */
    public void m1729h() {
        synchronized (this) {
            this.f6208f = 1L;
        }
        m5862e();
    }
}
