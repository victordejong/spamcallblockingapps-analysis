package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: org.mistergroup.shouldianswer.a.ab */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/ab.class */
public class C2113ab extends AbstractC2112aa {

    /* renamed from: l */
    private static final ViewDataBinding.C0639b f5497l = null;

    /* renamed from: m */
    private static final SparseIntArray f5498m = new SparseIntArray();

    /* renamed from: n */
    private final FrameLayout f5499n;

    /* renamed from: o */
    private long f5500o;

    static {
        f5498m.put(2131362173, 1);
        f5498m.put(2131362203, 2);
        f5498m.put(2131362209, 3);
        f5498m.put(2131362397, 4);
        f5498m.put(2131362396, 5);
        f5498m.put(2131362208, 6);
        f5498m.put(2131361980, 7);
        f5498m.put(2131362210, 8);
        f5498m.put(2131361893, 9);
    }

    public C2113ab(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 10, f5497l, f5498m));
    }

    private C2113ab(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Button) objArr[9], (Button) objArr[7], (RecyclerView) objArr[1], (LinearLayout) objArr[2], (LinearLayout) objArr[6], (FrameLayout) objArr[3], (LinearLayout) objArr[8], (AppCompatTextView) objArr[5], (AppCompatTextView) objArr[4]);
        this.f5500o = -1L;
        this.f5499n = (FrameLayout) objArr[0];
        this.f5499n.setTag(null);
        m5876a(view);
        m1793h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5500o;
            this.f5500o = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5500o != 0;
        }
    }

    /* renamed from: h */
    public void m1793h() {
        synchronized (this) {
            this.f5500o = 1L;
        }
        m5862e();
    }
}
