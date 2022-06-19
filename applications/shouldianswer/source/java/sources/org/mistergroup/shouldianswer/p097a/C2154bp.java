package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.bp */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/bp.class */
public class C2154bp extends AbstractC2153bo {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5743d = null;

    /* renamed from: e */
    private static final SparseIntArray f5744e = null;

    /* renamed from: f */
    private long f5745f;

    public C2154bp(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f5743d, f5744e));
    }

    private C2154bp(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f5745f = -1L;
        this.f5742c.setTag(null);
        m5876a(view);
        m1772h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5745f;
            this.f5745f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5745f != 0;
        }
    }

    /* renamed from: h */
    public void m1772h() {
        synchronized (this) {
            this.f5745f = 1L;
        }
        m5862e();
    }
}
