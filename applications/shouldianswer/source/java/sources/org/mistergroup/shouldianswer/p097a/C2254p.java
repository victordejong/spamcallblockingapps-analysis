package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.p */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/p.class */
public class C2254p extends AbstractC2253o {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f6240d = null;

    /* renamed from: e */
    private static final SparseIntArray f6241e = null;

    /* renamed from: f */
    private long f6242f;

    public C2254p(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f6240d, f6241e));
    }

    private C2254p(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f6242f = -1L;
        this.f6239c.setTag(null);
        m5876a(view);
        m1722h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6242f;
            this.f6242f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6242f != 0;
        }
    }

    /* renamed from: h */
    public void m1722h() {
        synchronized (this) {
            this.f6242f = 1L;
        }
        m5862e();
    }
}
