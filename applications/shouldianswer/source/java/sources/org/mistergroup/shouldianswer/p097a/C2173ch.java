package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.ch */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/ch.class */
public class C2173ch extends AbstractC2172cg {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5828d = null;

    /* renamed from: e */
    private static final SparseIntArray f5829e = null;

    /* renamed from: f */
    private long f5830f;

    public C2173ch(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f5828d, f5829e));
    }

    private C2173ch(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f5830f = -1L;
        this.f5827c.setTag(null);
        m5876a(view);
        m1763h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5830f;
            this.f5830f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5830f != 0;
        }
    }

    /* renamed from: h */
    public void m1763h() {
        synchronized (this) {
            this.f5830f = 1L;
        }
        m5862e();
    }
}
