package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.bd */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/bd.class */
public class C2142bd extends AbstractC2141bc {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5700d = null;

    /* renamed from: e */
    private static final SparseIntArray f5701e = new SparseIntArray();

    /* renamed from: f */
    private final LinearLayout f5702f;

    /* renamed from: g */
    private long f5703g;

    static {
        f5701e.put(2131362440, 1);
    }

    public C2142bd(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 2, f5700d, f5701e));
    }

    private C2142bd(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (AppCompatTextView) objArr[1]);
        this.f5703g = -1L;
        this.f5702f = (LinearLayout) objArr[0];
        this.f5702f.setTag(null);
        m5876a(view);
        m1778h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5703g;
            this.f5703g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5703g != 0;
        }
    }

    /* renamed from: h */
    public void m1778h() {
        synchronized (this) {
            this.f5703g = 1L;
        }
        m5862e();
    }
}
