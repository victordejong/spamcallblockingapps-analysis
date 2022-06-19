package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.n */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/n.class */
public class C2252n extends AbstractC2251m {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f6235d = null;

    /* renamed from: e */
    private static final SparseIntArray f6236e = new SparseIntArray();

    /* renamed from: f */
    private final LinearLayout f6237f;

    /* renamed from: g */
    private long f6238g;

    static {
        f6236e.put(2131362404, 1);
    }

    public C2252n(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 2, f6235d, f6236e));
    }

    private C2252n(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (AppCompatTextView) objArr[1]);
        this.f6238g = -1L;
        this.f6237f = (LinearLayout) objArr[0];
        this.f6237f.setTag(null);
        m5876a(view);
        m1723h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6238g;
            this.f6238g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6238g != 0;
        }
    }

    /* renamed from: h */
    public void m1723h() {
        synchronized (this) {
            this.f6238g = 1L;
        }
        m5862e();
    }
}
