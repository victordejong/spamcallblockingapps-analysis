package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.et */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/et.class */
public class C2239et extends AbstractC2238es {

    /* renamed from: c */
    private static final ViewDataBinding.C0639b f6201c = null;

    /* renamed from: d */
    private static final SparseIntArray f6202d = null;

    /* renamed from: e */
    private final FrameLayout f6203e;

    /* renamed from: f */
    private long f6204f;

    public C2239et(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f6201c, f6202d));
    }

    private C2239et(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0);
        this.f6204f = -1L;
        this.f6203e = (FrameLayout) objArr[0];
        this.f6203e.setTag(null);
        m5876a(view);
        m1730h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6204f;
            this.f6204f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6204f != 0;
        }
    }

    /* renamed from: h */
    public void m1730h() {
        synchronized (this) {
            this.f6204f = 1L;
        }
        m5862e();
    }
}
