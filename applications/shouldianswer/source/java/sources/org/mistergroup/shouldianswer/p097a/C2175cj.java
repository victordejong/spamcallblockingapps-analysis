package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import org.mistergroup.shouldianswer.utils.BetterEditText;
/* renamed from: org.mistergroup.shouldianswer.a.cj */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/cj.class */
public class C2175cj extends AbstractC2174ci {

    /* renamed from: u */
    private static final ViewDataBinding.C0639b f5849u = null;

    /* renamed from: v */
    private static final SparseIntArray f5850v = new SparseIntArray();

    /* renamed from: w */
    private final FrameLayout f5851w;

    /* renamed from: x */
    private long f5852x;

    static {
        f5850v.put(2131361864, 1);
        f5850v.put(2131362223, 2);
        f5850v.put(2131362432, 3);
        f5850v.put(2131361915, 4);
        f5850v.put(2131362220, 5);
        f5850v.put(2131361944, 6);
        f5850v.put(2131361945, 7);
        f5850v.put(2131361946, 8);
        f5850v.put(2131362200, 9);
        f5850v.put(2131362093, 10);
        f5850v.put(2131362091, 11);
        f5850v.put(2131362092, 12);
        f5850v.put(2131362405, 13);
        f5850v.put(2131362188, 14);
        f5850v.put(2131361979, 15);
        f5850v.put(2131362434, 16);
        f5850v.put(2131362215, 17);
        f5850v.put(2131362263, 18);
    }

    public C2175cj(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 19, f5849u, f5850v));
    }

    private C2175cj(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (Button) objArr[4], (Button) objArr[6], (Button) objArr[7], (Button) objArr[8], (Button) objArr[15], (BetterEditText) objArr[11], (BetterEditText) objArr[12], (BetterEditText) objArr[10], (LinearLayout) objArr[14], (LinearLayout) objArr[9], (LinearLayout) objArr[17], (LinearLayout) objArr[5], (LinearLayout) objArr[2], (ProgressBar) objArr[18], (AppCompatTextView) objArr[13], (AppCompatTextView) objArr[3], (AppCompatTextView) objArr[16]);
        this.f5852x = -1L;
        this.f5851w = (FrameLayout) objArr[0];
        this.f5851w.setTag(null);
        m5876a(view);
        m1762h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5852x;
            this.f5852x = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5852x != 0;
        }
    }

    /* renamed from: h */
    public void m1762h() {
        synchronized (this) {
            this.f5852x = 1L;
        }
        m5862e();
    }
}
