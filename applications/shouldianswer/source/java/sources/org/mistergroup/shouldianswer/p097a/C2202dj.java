package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.dj */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/dj.class */
public class C2202dj extends AbstractC2201di {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5976d = null;

    /* renamed from: e */
    private static final SparseIntArray f5977e = null;

    /* renamed from: f */
    private long f5978f;

    public C2202dj(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f5976d, f5977e));
    }

    private C2202dj(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f5978f = -1L;
        this.f5975c.setTag(null);
        m5876a(view);
        m1748h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5978f;
            this.f5978f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5978f != 0;
        }
    }

    /* renamed from: h */
    public void m1748h() {
        synchronized (this) {
            this.f5978f = 1L;
        }
        m5862e();
    }
}
