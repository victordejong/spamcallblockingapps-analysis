package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.bx */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/bx.class */
public class C2162bx extends AbstractC2161bw {

    /* renamed from: m */
    private static final ViewDataBinding.C0639b f5789m = null;

    /* renamed from: n */
    private static final SparseIntArray f5790n = new SparseIntArray();

    /* renamed from: o */
    private final FrameLayout f5791o;

    /* renamed from: p */
    private long f5792p;

    static {
        f5790n.put(2131362205, 1);
        f5790n.put(2131362110, 2);
        f5790n.put(2131362161, 3);
        f5790n.put(2131361885, 4);
        f5790n.put(2131362113, 5);
        f5790n.put(2131362163, 6);
        f5790n.put(2131361959, 7);
        f5790n.put(2131362112, 8);
        f5790n.put(2131362162, 9);
        f5790n.put(2131361955, 10);
    }

    public C2162bx(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 11, f5789m, f5790n));
    }

    private C2162bx(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (AppCompatButton) objArr[4], (AppCompatButton) objArr[10], (AppCompatButton) objArr[7], (FrameLayout) objArr[2], (FrameLayout) objArr[8], (FrameLayout) objArr[5], (ImageView) objArr[3], (ImageView) objArr[9], (ImageView) objArr[6], (LinearLayout) objArr[1]);
        this.f5792p = -1L;
        this.f5791o = (FrameLayout) objArr[0];
        this.f5791o.setTag(null);
        m5876a(view);
        m1768h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5792p;
            this.f5792p = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5792p != 0;
        }
    }

    /* renamed from: h */
    public void m1768h() {
        synchronized (this) {
            this.f5792p = 1L;
        }
        m5862e();
    }
}
