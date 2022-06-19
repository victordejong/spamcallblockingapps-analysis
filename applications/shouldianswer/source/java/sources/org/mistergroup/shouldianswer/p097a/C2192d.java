package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageButton;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.d */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/d.class */
public class C2192d extends AbstractC2165c {

    /* renamed from: k */
    private static final ViewDataBinding.C0639b f5946k = null;

    /* renamed from: l */
    private static final SparseIntArray f5947l = new SparseIntArray();

    /* renamed from: m */
    private final CoordinatorLayout f5948m;

    /* renamed from: n */
    private long f5949n;

    static {
        f5947l.put(2131361864, 1);
        f5947l.put(2131361940, 2);
        f5947l.put(2131361874, 3);
        f5947l.put(2131361963, 4);
        f5947l.put(2131361938, 5);
        f5947l.put(2131361989, 6);
        f5947l.put(2131361875, 7);
        f5947l.put(2131362357, 8);
    }

    public C2192d(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 9, f5946k, f5947l));
    }

    private C2192d(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (AppCompatButton) objArr[3], (ImageButton) objArr[7], (AppCompatButton) objArr[5], (AppCompatButton) objArr[2], (AppCompatButton) objArr[4], (AppCompatButton) objArr[6], (AppCompatTextView) objArr[8]);
        this.f5949n = -1L;
        this.f5948m = (CoordinatorLayout) objArr[0];
        this.f5948m.setTag(null);
        m5876a(view);
        m1753h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5949n;
            this.f5949n = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5949n != 0;
        }
    }

    /* renamed from: h */
    public void m1753h() {
        synchronized (this) {
            this.f5949n = 1L;
        }
        m5862e();
    }
}
