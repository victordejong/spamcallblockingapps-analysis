package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.ar */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/ar.class */
public class C2129ar extends AbstractC2128aq {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5618d = null;

    /* renamed from: e */
    private static final SparseIntArray f5619e = null;

    /* renamed from: f */
    private long f5620f;

    public C2129ar(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f5618d, f5619e));
    }

    private C2129ar(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f5620f = -1L;
        this.f5617c.setTag(null);
        m5876a(view);
        m1785h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5620f;
            this.f5620f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5620f != 0;
        }
    }

    /* renamed from: h */
    public void m1785h() {
        synchronized (this) {
            this.f5620f = 1L;
        }
        m5862e();
    }
}
