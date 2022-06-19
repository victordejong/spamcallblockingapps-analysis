package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.bh */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/bh.class */
public class C2146bh extends AbstractC2145bg {

    /* renamed from: g */
    private static final ViewDataBinding.C0639b f5713g = null;

    /* renamed from: h */
    private static final SparseIntArray f5714h = new SparseIntArray();

    /* renamed from: i */
    private final LinearLayout f5715i;

    /* renamed from: j */
    private long f5716j;

    static {
        f5714h.put(2131362150, 1);
        f5714h.put(2131362442, 2);
        f5714h.put(2131362412, 3);
        f5714h.put(2131362369, 4);
    }

    public C2146bh(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 5, f5713g, f5714h));
    }

    private C2146bh(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (ImageView) objArr[1], (AppCompatTextView) objArr[4], (AppCompatTextView) objArr[3], (AppCompatTextView) objArr[2]);
        this.f5716j = -1L;
        this.f5715i = (LinearLayout) objArr[0];
        this.f5715i.setTag(null);
        m5876a(view);
        m1776h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5716j;
            this.f5716j = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5716j != 0;
        }
    }

    /* renamed from: h */
    public void m1776h() {
        synchronized (this) {
            this.f5716j = 1L;
        }
        m5862e();
    }
}
