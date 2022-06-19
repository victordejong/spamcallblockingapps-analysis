package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.dd */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/dd.class */
public class C2196dd extends AbstractC2195dc {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5955d = null;

    /* renamed from: e */
    private static final SparseIntArray f5956e = null;

    /* renamed from: f */
    private long f5957f;

    public C2196dd(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f5955d, f5956e));
    }

    private C2196dd(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f5957f = -1L;
        this.f5954c.setTag(null);
        m5876a(view);
        m1751h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5957f;
            this.f5957f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5957f != 0;
        }
    }

    /* renamed from: h */
    public void m1751h() {
        synchronized (this) {
            this.f5957f = 1L;
        }
        m5862e();
    }
}
