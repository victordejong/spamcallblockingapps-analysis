package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.el */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/el.class */
public class C2231el extends AbstractC2230ek {

    /* renamed from: g */
    private static final ViewDataBinding.C0639b f6171g = null;

    /* renamed from: h */
    private static final SparseIntArray f6172h = new SparseIntArray();

    /* renamed from: i */
    private final LinearLayout f6173i;

    /* renamed from: j */
    private long f6174j;

    static {
        f6172h.put(2131362150, 1);
        f6172h.put(2131362414, 2);
        f6172h.put(2131362366, 3);
        f6172h.put(2131362369, 4);
    }

    public C2231el(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 5, f6171g, f6172h));
    }

    private C2231el(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (ImageView) objArr[1], (AppCompatTextView) objArr[3], (AppCompatTextView) objArr[4], (AppCompatTextView) objArr[2]);
        this.f6174j = -1L;
        this.f6173i = (LinearLayout) objArr[0];
        this.f6173i.setTag(null);
        m5876a(view);
        m1734h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6174j;
            this.f6174j = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6174j != 0;
        }
    }

    /* renamed from: h */
    public void m1734h() {
        synchronized (this) {
            this.f6174j = 1L;
        }
        m5862e();
    }
}
