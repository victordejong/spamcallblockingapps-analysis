package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.br */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/br.class */
public class C2156br extends AbstractC2155bq {

    /* renamed from: e */
    private static final ViewDataBinding.C0639b f5748e = null;

    /* renamed from: f */
    private static final SparseIntArray f5749f = new SparseIntArray();

    /* renamed from: g */
    private final FrameLayout f5750g;

    /* renamed from: h */
    private long f5751h;

    static {
        f5749f.put(2131362205, 1);
        f5749f.put(2131361879, 2);
    }

    public C2156br(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 3, f5748e, f5749f));
    }

    private C2156br(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Button) objArr[2], (LinearLayout) objArr[1]);
        this.f5751h = -1L;
        this.f5750g = (FrameLayout) objArr[0];
        this.f5750g.setTag(null);
        m5876a(view);
        m1771h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5751h;
            this.f5751h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5751h != 0;
        }
    }

    /* renamed from: h */
    public void m1771h() {
        synchronized (this) {
            this.f5751h = 1L;
        }
        m5862e();
    }
}
