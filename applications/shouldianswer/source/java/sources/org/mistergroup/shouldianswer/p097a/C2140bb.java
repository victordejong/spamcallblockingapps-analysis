package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: org.mistergroup.shouldianswer.a.bb */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/bb.class */
public class C2140bb extends AbstractC2139ba {

    /* renamed from: f */
    private static final ViewDataBinding.C0639b f5695f = null;

    /* renamed from: g */
    private static final SparseIntArray f5696g = new SparseIntArray();

    /* renamed from: h */
    private final LinearLayout f5697h;

    /* renamed from: i */
    private long f5698i;

    static {
        f5696g.put(2131361864, 1);
        f5696g.put(2131362270, 2);
        f5696g.put(2131362263, 3);
    }

    public C2140bb(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 4, f5695f, f5696g));
    }

    private C2140bb(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (ProgressBar) objArr[3], (RecyclerView) objArr[2]);
        this.f5698i = -1L;
        this.f5697h = (LinearLayout) objArr[0];
        this.f5697h.setTag(null);
        m5876a(view);
        m1779h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5698i;
            this.f5698i = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5698i != 0;
        }
    }

    /* renamed from: h */
    public void m1779h() {
        synchronized (this) {
            this.f5698i = 1L;
        }
        m5862e();
    }
}
