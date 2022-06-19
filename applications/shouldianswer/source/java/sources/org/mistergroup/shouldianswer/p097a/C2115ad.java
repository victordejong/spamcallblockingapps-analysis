package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.ad */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/ad.class */
public class C2115ad extends AbstractC2114ac {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5502d = null;

    /* renamed from: e */
    private static final SparseIntArray f5503e = new SparseIntArray();

    /* renamed from: f */
    private final LinearLayout f5504f;

    /* renamed from: g */
    private long f5505g;

    static {
        f5503e.put(2131362440, 1);
    }

    public C2115ad(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 2, f5502d, f5503e));
    }

    private C2115ad(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (AppCompatTextView) objArr[1]);
        this.f5505g = -1L;
        this.f5504f = (LinearLayout) objArr[0];
        this.f5504f.setTag(null);
        m5876a(view);
        m1792h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5505g;
            this.f5505g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5505g != 0;
        }
    }

    /* renamed from: h */
    public void m1792h() {
        synchronized (this) {
            this.f5505g = 1L;
        }
        m5862e();
    }
}
