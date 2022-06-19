package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.bf */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/bf.class */
public class C2144bf extends AbstractC2143be {

    /* renamed from: d */
    private static final ViewDataBinding.C0639b f5705d = null;

    /* renamed from: e */
    private static final SparseIntArray f5706e = new SparseIntArray();

    /* renamed from: f */
    private final LinearLayout f5707f;

    /* renamed from: g */
    private long f5708g;

    static {
        f5706e.put(2131361953, 1);
    }

    public C2144bf(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 2, f5705d, f5706e));
    }

    private C2144bf(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Button) objArr[1]);
        this.f5708g = -1L;
        this.f5707f = (LinearLayout) objArr[0];
        this.f5707f.setTag(null);
        m5876a(view);
        m1777h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5708g;
            this.f5708g = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5708g != 0;
        }
    }

    /* renamed from: h */
    public void m1777h() {
        synchronized (this) {
            this.f5708g = 1L;
        }
        m5862e();
    }
}
