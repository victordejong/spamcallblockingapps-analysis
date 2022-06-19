package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.at */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/at.class */
public class C2131at extends AbstractC2130as {

    /* renamed from: j */
    private static final ViewDataBinding.C0639b f5628j = null;

    /* renamed from: k */
    private static final SparseIntArray f5629k = new SparseIntArray();

    /* renamed from: l */
    private long f5630l;

    static {
        f5629k.put(2131362141, 1);
        f5629k.put(2131362138, 2);
        f5629k.put(2131362137, 3);
        f5629k.put(2131362365, 4);
        f5629k.put(2131362441, 5);
        f5629k.put(2131362378, 6);
    }

    public C2131at(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 7, f5628j, f5629k));
    }

    private C2131at(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (ImageView) objArr[3], (ImageView) objArr[2], (ImageView) objArr[1], (LinearLayout) objArr[0], (AppCompatTextView) objArr[4], (AppCompatTextView) objArr[6], (AppCompatTextView) objArr[5]);
        this.f5630l = -1L;
        this.f5624f.setTag(null);
        m5876a(view);
        m1784h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5630l;
            this.f5630l = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5630l != 0;
        }
    }

    /* renamed from: h */
    public void m1784h() {
        synchronized (this) {
            this.f5630l = 1L;
        }
        m5862e();
    }
}
