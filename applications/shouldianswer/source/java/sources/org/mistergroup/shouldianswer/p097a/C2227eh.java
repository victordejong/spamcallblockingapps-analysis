package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import org.mistergroup.shouldianswer.utils.BetterEditText;
/* renamed from: org.mistergroup.shouldianswer.a.eh */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/eh.class */
public class C2227eh extends AbstractC2226eg {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f6153d = null;

    /* renamed from: e */
    private static final SparseIntArray f6154e = new SparseIntArray();

    /* renamed from: f */
    private final LinearLayout f6155f;

    /* renamed from: g */
    private long f6156g;

    static {
        f6154e.put(2131362084, 1);
    }

    public C2227eh(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 2, f6153d, f6154e));
    }

    private C2227eh(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (BetterEditText) objArr[1]);
        this.f6156g = -1L;
        this.f6155f = (LinearLayout) objArr[0];
        this.f6155f.setTag(null);
        m5876a(view);
        m1736h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6156g;
            this.f6156g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6156g != 0;
        }
    }

    /* renamed from: h */
    public void m1736h() {
        synchronized (this) {
            this.f6156g = 1L;
        }
        m5862e();
    }
}
