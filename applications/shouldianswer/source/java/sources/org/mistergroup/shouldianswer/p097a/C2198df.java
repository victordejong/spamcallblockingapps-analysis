package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import org.mistergroup.shouldianswer.utils.BetterEditText;
/* renamed from: org.mistergroup.shouldianswer.a.df */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/df.class */
public class C2198df extends AbstractC2197de {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5959d = null;

    /* renamed from: e */
    private static final SparseIntArray f5960e = new SparseIntArray();

    /* renamed from: f */
    private final LinearLayout f5961f;

    /* renamed from: g */
    private long f5962g;

    static {
        f5960e.put(2131362084, 1);
    }

    public C2198df(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 2, f5959d, f5960e));
    }

    private C2198df(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (BetterEditText) objArr[1]);
        this.f5962g = -1L;
        this.f5961f = (LinearLayout) objArr[0];
        this.f5961f.setTag(null);
        m5876a(view);
        m1750h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5962g;
            this.f5962g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5962g != 0;
        }
    }

    /* renamed from: h */
    public void m1750h() {
        synchronized (this) {
            this.f5962g = 1L;
        }
        m5862e();
    }
}
