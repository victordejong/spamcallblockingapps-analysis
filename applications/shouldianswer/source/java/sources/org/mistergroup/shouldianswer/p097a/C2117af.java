package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ToggleButton;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.af */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/af.class */
public class C2117af extends AbstractC2116ae {

    /* renamed from: f */
    private static final ViewDataBinding.C0639b f5509f = null;

    /* renamed from: g */
    private static final SparseIntArray f5510g = new SparseIntArray();

    /* renamed from: h */
    private final LinearLayout f5511h;

    /* renamed from: i */
    private long f5512i;

    static {
        f5510g.put(2131361935, 1);
        f5510g.put(2131361937, 2);
        f5510g.put(2131361936, 3);
    }

    public C2117af(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 4, f5509f, f5510g));
    }

    private C2117af(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (ToggleButton) objArr[1], (ToggleButton) objArr[3], (ToggleButton) objArr[2]);
        this.f5512i = -1L;
        this.f5511h = (LinearLayout) objArr[0];
        this.f5511h.setTag(null);
        m5876a(view);
        m1791h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5512i;
            this.f5512i = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5512i != 0;
        }
    }

    /* renamed from: h */
    public void m1791h() {
        synchronized (this) {
            this.f5512i = 1L;
        }
        m5862e();
    }
}
