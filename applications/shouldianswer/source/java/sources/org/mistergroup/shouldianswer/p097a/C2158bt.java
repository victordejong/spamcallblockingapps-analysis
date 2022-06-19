package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.bt */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/bt.class */
public class C2158bt extends AbstractC2157bs {

    /* renamed from: v */
    private static final ViewDataBinding.C0639b f5771v = null;

    /* renamed from: w */
    private static final SparseIntArray f5772w = new SparseIntArray();

    /* renamed from: x */
    private final FrameLayout f5773x;

    /* renamed from: y */
    private long f5774y;

    static {
        f5772w.put(2131361864, 1);
        f5772w.put(2131362182, 2);
        f5772w.put(2131361891, 3);
        f5772w.put(2131362198, 4);
        f5772w.put(2131362028, 5);
        f5772w.put(2131361943, 6);
        f5772w.put(2131362035, 7);
        f5772w.put(2131361962, 8);
        f5772w.put(2131362205, 9);
        f5772w.put(2131362428, 10);
        f5772w.put(2131362178, 11);
        f5772w.put(2131361878, 12);
        f5772w.put(2131362179, 13);
        f5772w.put(2131361879, 14);
        f5772w.put(2131362181, 15);
        f5772w.put(2131361884, 16);
        f5772w.put(2131362180, 17);
        f5772w.put(2131361882, 18);
        f5772w.put(2131361881, 19);
    }

    public C2158bt(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 20, f5771v, f5772w));
    }

    private C2158bt(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (Button) objArr[12], (Button) objArr[14], (Button) objArr[19], (Button) objArr[18], (Button) objArr[16], (ImageButton) objArr[3], (ImageButton) objArr[6], (ImageButton) objArr[8], (RadioButton) objArr[5], (RadioButton) objArr[7], (LinearLayout) objArr[11], (LinearLayout) objArr[13], (LinearLayout) objArr[17], (LinearLayout) objArr[15], (LinearLayout) objArr[2], (LinearLayout) objArr[4], (LinearLayout) objArr[9], (AppCompatTextView) objArr[10]);
        this.f5774y = -1L;
        this.f5773x = (FrameLayout) objArr[0];
        this.f5773x.setTag(null);
        m5876a(view);
        m1770h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5774y;
            this.f5774y = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5774y != 0;
        }
    }

    /* renamed from: h */
    public void m1770h() {
        synchronized (this) {
            this.f5774y = 1L;
        }
        m5862e();
    }
}
