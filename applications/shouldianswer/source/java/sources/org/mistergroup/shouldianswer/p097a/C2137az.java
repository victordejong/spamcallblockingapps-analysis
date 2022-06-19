package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.az */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/az.class */
public class C2137az extends AbstractC2136ay {

    /* renamed from: e */
    private static final ViewDataBinding.C0639b f5685e = null;

    /* renamed from: f */
    private static final SparseIntArray f5686f = new SparseIntArray();

    /* renamed from: g */
    private final FrameLayout f5687g;

    /* renamed from: h */
    private long f5688h;

    static {
        f5686f.put(2131362369, 1);
        f5686f.put(2131361918, 2);
    }

    public C2137az(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 3, f5685e, f5686f));
    }

    private C2137az(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Button) objArr[2], (AppCompatTextView) objArr[1]);
        this.f5688h = -1L;
        this.f5687g = (FrameLayout) objArr[0];
        this.f5687g.setTag(null);
        m5876a(view);
        m1781h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5688h;
            this.f5688h = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5688h != 0;
        }
    }

    /* renamed from: h */
    public void m1781h() {
        synchronized (this) {
            this.f5688h = 1L;
        }
        m5862e();
    }
}
