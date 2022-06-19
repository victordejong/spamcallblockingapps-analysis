package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.eb */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/eb.class */
public class C2221eb extends AbstractC2220ea {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f6102d = null;

    /* renamed from: e */
    private static final SparseIntArray f6103e = null;

    /* renamed from: f */
    private long f6104f;

    public C2221eb(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f6102d, f6103e));
    }

    private C2221eb(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f6104f = -1L;
        this.f6101c.setTag(null);
        m5876a(view);
        m1739h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6104f;
            this.f6104f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6104f != 0;
        }
    }

    /* renamed from: h */
    public void m1739h() {
        synchronized (this) {
            this.f6104f = 1L;
        }
        m5862e();
    }
}
