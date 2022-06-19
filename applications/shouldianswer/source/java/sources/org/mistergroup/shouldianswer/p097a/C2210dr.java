package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.dr */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/dr.class */
public class C2210dr extends AbstractC2209dq {

    /* renamed from: l */
    private static final ViewDataBinding.C0639b f6036l = null;

    /* renamed from: m */
    private static final SparseIntArray f6037m = new SparseIntArray();

    /* renamed from: n */
    private final CoordinatorLayout f6038n;

    /* renamed from: o */
    private long f6039o;

    static {
        f6037m.put(2131361864, 1);
        f6037m.put(2131361965, 2);
        f6037m.put(2131361890, 3);
        f6037m.put(2131361957, 4);
        f6037m.put(2131361877, 5);
        f6037m.put(2131361958, 6);
        f6037m.put(2131361976, 7);
        f6037m.put(2131361903, 8);
        f6037m.put(2131361894, 9);
    }

    public C2210dr(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 10, f6036l, f6037m));
    }

    private C2210dr(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (AppCompatButton) objArr[5], (AppCompatButton) objArr[3], (AppCompatButton) objArr[9], (AppCompatButton) objArr[8], (AppCompatButton) objArr[4], (AppCompatButton) objArr[6], (AppCompatButton) objArr[2], (AppCompatButton) objArr[7]);
        this.f6039o = -1L;
        this.f6038n = (CoordinatorLayout) objArr[0];
        this.f6038n.setTag(null);
        m5876a(view);
        m1744h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6039o;
            this.f6039o = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6039o != 0;
        }
    }

    /* renamed from: h */
    public void m1744h() {
        synchronized (this) {
            this.f6039o = 1L;
        }
        m5862e();
    }
}
