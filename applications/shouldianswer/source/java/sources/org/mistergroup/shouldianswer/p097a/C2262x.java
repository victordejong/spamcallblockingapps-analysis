package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.x */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/x.class */
public class C2262x extends AbstractC2261w {

    /* renamed from: j */
    private static final ViewDataBinding.C0639b f6316j = null;

    /* renamed from: k */
    private static final SparseIntArray f6317k = new SparseIntArray();

    /* renamed from: l */
    private long f6318l;

    static {
        f6317k.put(2131362148, 1);
        f6317k.put(2131362197, 2);
        f6317k.put(2131362403, 3);
        f6317k.put(2131362442, 4);
        f6317k.put(2131362129, 5);
        f6317k.put(2131362130, 6);
    }

    public C2262x(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 7, f6316j, f6317k));
    }

    private C2262x(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (ImageButton) objArr[5], (ImageButton) objArr[6], (ImageView) objArr[1], (LinearLayout) objArr[2], (FrameLayout) objArr[0], (AppCompatTextView) objArr[3], (AppCompatTextView) objArr[4]);
        this.f6318l = -1L;
        this.f6313g.setTag(null);
        m5876a(view);
        m1718h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6318l;
            this.f6318l = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6318l != 0;
        }
    }

    /* renamed from: h */
    public void m1718h() {
        synchronized (this) {
            this.f6318l = 1L;
        }
        m5862e();
    }
}
