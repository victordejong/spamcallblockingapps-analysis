package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
/* renamed from: org.mistergroup.shouldianswer.a.dh */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/dh.class */
public class C2200dh extends AbstractC2199dg {

    /* renamed from: k */
    private static final ViewDataBinding.C0639b f5971k = null;

    /* renamed from: l */
    private static final SparseIntArray f5972l = new SparseIntArray();

    /* renamed from: m */
    private final CoordinatorLayout f5973m;

    /* renamed from: n */
    private long f5974n;

    static {
        f5972l.put(2131361864, 1);
        f5972l.put(2131362172, 2);
        f5972l.put(2131362256, 3);
        f5972l.put(2131362263, 4);
        f5972l.put(2131362255, 5);
        f5972l.put(2131361968, 6);
        f5972l.put(2131362209, 7);
        f5972l.put(2131362103, 8);
    }

    public C2200dh(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 9, f5971k, f5972l));
    }

    private C2200dh(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (Button) objArr[6], (FloatingActionButton) objArr[8], (RecyclerView) objArr[2], (LinearLayout) objArr[7], (LinearLayout) objArr[5], (LinearLayout) objArr[3], (ProgressBar) objArr[4]);
        this.f5974n = -1L;
        this.f5973m = (CoordinatorLayout) objArr[0];
        this.f5973m.setTag(null);
        m5876a(view);
        m1749h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5974n;
            this.f5974n = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5974n != 0;
        }
    }

    /* renamed from: h */
    public void m1749h() {
        synchronized (this) {
            this.f5974n = 1L;
        }
        m5862e();
    }
}
