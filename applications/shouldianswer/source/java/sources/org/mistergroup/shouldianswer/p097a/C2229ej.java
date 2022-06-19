package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
/* renamed from: org.mistergroup.shouldianswer.a.ej */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/ej.class */
public class C2229ej extends AbstractC2228ei {

    /* renamed from: i */
    private static final ViewDataBinding.C0639b f6163i = null;

    /* renamed from: j */
    private static final SparseIntArray f6164j = new SparseIntArray();

    /* renamed from: k */
    private final CoordinatorLayout f6165k;

    /* renamed from: l */
    private long f6166l;

    static {
        f6164j.put(2131361864, 1);
        f6164j.put(2131362172, 2);
        f6164j.put(2131362256, 3);
        f6164j.put(2131362263, 4);
        f6164j.put(2131362209, 5);
        f6164j.put(2131362103, 6);
    }

    public C2229ej(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 7, f6163i, f6164j));
    }

    private C2229ej(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (FloatingActionButton) objArr[6], (RecyclerView) objArr[2], (LinearLayout) objArr[5], (LinearLayout) objArr[3], (ProgressBar) objArr[4]);
        this.f6166l = -1L;
        this.f6165k = (CoordinatorLayout) objArr[0];
        this.f6165k.setTag(null);
        m5876a(view);
        m1735h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6166l;
            this.f6166l = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6166l != 0;
        }
    }

    /* renamed from: h */
    public void m1735h() {
        synchronized (this) {
            this.f6166l = 1L;
        }
        m5862e();
    }
}
