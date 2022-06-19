package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: org.mistergroup.shouldianswer.a.v */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/v.class */
public class C2260v extends AbstractC2259u {

    /* renamed from: h */
    private static final ViewDataBinding.C0639b f6305h = null;

    /* renamed from: i */
    private static final SparseIntArray f6306i = new SparseIntArray();

    /* renamed from: j */
    private final FrameLayout f6307j;

    /* renamed from: k */
    private long f6308k;

    static {
        f6306i.put(2131362175, 1);
        f6306i.put(2131362203, 2);
        f6306i.put(2131362209, 3);
        f6306i.put(2131362210, 4);
        f6306i.put(2131361893, 5);
    }

    public C2260v(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 6, f6305h, f6306i));
    }

    private C2260v(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Button) objArr[5], (RecyclerView) objArr[1], (LinearLayout) objArr[2], (LinearLayout) objArr[3], (LinearLayout) objArr[4]);
        this.f6308k = -1L;
        this.f6307j = (FrameLayout) objArr[0];
        this.f6307j.setTag(null);
        m5876a(view);
        m1719h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6308k;
            this.f6308k = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6308k != 0;
        }
    }

    /* renamed from: h */
    public void m1719h() {
        synchronized (this) {
            this.f6308k = 1L;
        }
        m5862e();
    }
}
