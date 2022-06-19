package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.cf */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/cf.class */
public class C2171cf extends AbstractC2170ce {

    /* renamed from: k */
    private static final ViewDataBinding.C0639b f5823k = null;

    /* renamed from: l */
    private static final SparseIntArray f5824l = new SparseIntArray();

    /* renamed from: m */
    private final FrameLayout f5825m;

    /* renamed from: n */
    private long f5826n;

    static {
        f5824l.put(2131361864, 1);
        f5824l.put(2131362205, 2);
        f5824l.put(2131362428, 3);
        f5824l.put(2131362181, 4);
        f5824l.put(2131361884, 5);
        f5824l.put(2131362180, 6);
        f5824l.put(2131361882, 7);
        f5824l.put(2131361881, 8);
    }

    public C2171cf(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 9, f5823k, f5824l));
    }

    private C2171cf(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (Button) objArr[8], (Button) objArr[7], (Button) objArr[5], (LinearLayout) objArr[6], (LinearLayout) objArr[4], (LinearLayout) objArr[2], (AppCompatTextView) objArr[3]);
        this.f5826n = -1L;
        this.f5825m = (FrameLayout) objArr[0];
        this.f5825m.setTag(null);
        m5876a(view);
        m1764h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5826n;
            this.f5826n = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5826n != 0;
        }
    }

    /* renamed from: h */
    public void m1764h() {
        synchronized (this) {
            this.f5826n = 1L;
        }
        m5862e();
    }
}
