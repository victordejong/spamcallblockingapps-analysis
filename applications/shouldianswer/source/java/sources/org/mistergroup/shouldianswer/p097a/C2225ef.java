package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.ef */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/ef.class */
public class C2225ef extends AbstractC2224ee {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f6149d = null;

    /* renamed from: e */
    private static final SparseIntArray f6150e = null;

    /* renamed from: f */
    private long f6151f;

    public C2225ef(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 1, f6149d, f6150e));
    }

    private C2225ef(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (FrameLayout) objArr[0]);
        this.f6151f = -1L;
        this.f6148c.setTag(null);
        m5876a(view);
        m1737h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6151f;
            this.f6151f = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6151f != 0;
        }
    }

    /* renamed from: h */
    public void m1737h() {
        synchronized (this) {
            this.f6151f = 1L;
        }
        m5862e();
    }
}
