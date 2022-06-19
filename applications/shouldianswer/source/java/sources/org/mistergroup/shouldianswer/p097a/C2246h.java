package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.h */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/h.class */
public class C2246h extends AbstractC2245g {

    /* renamed from: g */
    private static final ViewDataBinding.C0639b f6221g = null;

    /* renamed from: h */
    private static final SparseIntArray f6222h = new SparseIntArray();

    /* renamed from: i */
    private final LinearLayout f6223i;

    /* renamed from: j */
    private long f6224j;

    static {
        f6222h.put(2131362150, 1);
        f6222h.put(2131362442, 2);
        f6222h.put(2131362412, 3);
        f6222h.put(2131362369, 4);
    }

    public C2246h(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 5, f6221g, f6222h));
    }

    private C2246h(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (ImageView) objArr[1], (AppCompatTextView) objArr[4], (AppCompatTextView) objArr[3], (AppCompatTextView) objArr[2]);
        this.f6224j = -1L;
        this.f6223i = (LinearLayout) objArr[0];
        this.f6223i.setTag(null);
        m5876a(view);
        m1726h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6224j;
            this.f6224j = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6224j != 0;
        }
    }

    /* renamed from: h */
    public void m1726h() {
        synchronized (this) {
            this.f6224j = 1L;
        }
        m5862e();
    }
}
