package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.b */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/b.class */
public class C2138b extends AbstractC2111a {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5689d = null;

    /* renamed from: e */
    private static final SparseIntArray f5690e = null;

    /* renamed from: f */
    private long f5691f;

    public C2138b(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f5689d, f5690e));
    }

    private C2138b(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f5691f = -1L;
        this.f5487c.setTag(null);
        m5876a(view);
        m1780h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5691f;
            this.f5691f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5691f != 0;
        }
    }

    /* renamed from: h */
    public void m1780h() {
        synchronized (this) {
            this.f5691f = 1L;
        }
        m5862e();
    }
}
