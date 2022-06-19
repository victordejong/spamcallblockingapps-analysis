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
/* renamed from: org.mistergroup.shouldianswer.a.dl */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/dl.class */
public class C2204dl extends AbstractC2203dk {

    /* renamed from: k */
    private static final ViewDataBinding.C0639b f5987k = null;

    /* renamed from: l */
    private static final SparseIntArray f5988l = new SparseIntArray();

    /* renamed from: m */
    private final CoordinatorLayout f5989m;

    /* renamed from: n */
    private long f5990n;

    static {
        f5988l.put(2131361864, 1);
        f5988l.put(2131362172, 2);
        f5988l.put(2131362256, 3);
        f5988l.put(2131362263, 4);
        f5988l.put(2131362255, 5);
        f5988l.put(2131361968, 6);
        f5988l.put(2131362209, 7);
        f5988l.put(2131362103, 8);
    }

    public C2204dl(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 9, f5987k, f5988l));
    }

    private C2204dl(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (Button) objArr[6], (FloatingActionButton) objArr[8], (RecyclerView) objArr[2], (LinearLayout) objArr[7], (LinearLayout) objArr[5], (LinearLayout) objArr[3], (ProgressBar) objArr[4]);
        this.f5990n = -1L;
        this.f5989m = (CoordinatorLayout) objArr[0];
        this.f5989m.setTag(null);
        m5876a(view);
        m1747h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5990n;
            this.f5990n = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5990n != 0;
        }
    }

    /* renamed from: h */
    public void m1747h() {
        synchronized (this) {
            this.f5990n = 1L;
        }
        m5862e();
    }
}
