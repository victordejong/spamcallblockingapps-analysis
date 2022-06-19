package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.cd */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/cd.class */
public class C2169cd extends AbstractC2168cc {

    /* renamed from: e */
    private static final ViewDataBinding.C0639b f5811e = null;

    /* renamed from: f */
    private static final SparseIntArray f5812f = new SparseIntArray();

    /* renamed from: g */
    private final FrameLayout f5813g;

    /* renamed from: h */
    private long f5814h;

    static {
        f5812f.put(2131362205, 1);
        f5812f.put(2131361879, 2);
    }

    public C2169cd(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 3, f5811e, f5812f));
    }

    private C2169cd(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Button) objArr[2], (LinearLayout) objArr[1]);
        this.f5814h = -1L;
        this.f5813g = (FrameLayout) objArr[0];
        this.f5813g.setTag(null);
        m5876a(view);
        m1765h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5814h;
            this.f5814h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5814h != 0;
        }
    }

    /* renamed from: h */
    public void m1765h() {
        synchronized (this) {
            this.f5814h = 1L;
        }
        m5862e();
    }
}
