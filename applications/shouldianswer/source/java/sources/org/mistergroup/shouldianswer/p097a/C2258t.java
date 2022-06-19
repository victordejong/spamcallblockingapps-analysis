package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: org.mistergroup.shouldianswer.a.t */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/t.class */
public class C2258t extends AbstractC2257s {

    /* renamed from: I */
    private static final ViewDataBinding.C0639b f6296I = null;

    /* renamed from: J */
    private static final SparseIntArray f6297J = new SparseIntArray();

    /* renamed from: K */
    private final FrameLayout f6298K;

    /* renamed from: L */
    private long f6299L;

    static {
        f6297J.put(2131362175, 1);
        f6297J.put(2131362196, 2);
        f6297J.put(2131362356, 3);
        f6297J.put(2131362358, 4);
        f6297J.put(2131362362, 5);
        f6297J.put(2131362376, 6);
        f6297J.put(2131362395, 7);
        f6297J.put(2131362398, 8);
        f6297J.put(2131362400, 9);
        f6297J.put(2131362401, 10);
        f6297J.put(2131362402, 11);
        f6297J.put(2131362406, 12);
        f6297J.put(2131362407, 13);
        f6297J.put(2131362408, 14);
        f6297J.put(2131362410, 15);
        f6297J.put(2131362411, 16);
        f6297J.put(2131362417, 17);
        f6297J.put(2131362418, 18);
        f6297J.put(2131362421, 19);
        f6297J.put(2131362422, 20);
        f6297J.put(2131362429, 21);
        f6297J.put(2131362439, 22);
        f6297J.put(2131362443, 23);
        f6297J.put(2131362445, 24);
        f6297J.put(2131362446, 25);
        f6297J.put(2131362447, 26);
        f6297J.put(2131362448, 27);
        f6297J.put(2131362449, 28);
        f6297J.put(2131362203, 29);
        f6297J.put(2131362209, 30);
        f6297J.put(2131362210, 31);
        f6297J.put(2131361893, 32);
    }

    public C2258t(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 33, f6296I, f6297J));
    }

    private C2258t(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Button) objArr[32], (RecyclerView) objArr[1], (LinearLayout) objArr[2], (LinearLayout) objArr[29], (LinearLayout) objArr[30], (LinearLayout) objArr[31], (AppCompatTextView) objArr[3], (AppCompatTextView) objArr[4], (AppCompatTextView) objArr[5], (AppCompatTextView) objArr[6], (AppCompatTextView) objArr[7], (AppCompatTextView) objArr[8], (AppCompatTextView) objArr[9], (AppCompatTextView) objArr[10], (AppCompatTextView) objArr[11], (AppCompatTextView) objArr[12], (AppCompatTextView) objArr[13], (AppCompatTextView) objArr[14], (AppCompatTextView) objArr[15], (AppCompatTextView) objArr[16], (AppCompatTextView) objArr[17], (AppCompatTextView) objArr[18], (AppCompatTextView) objArr[19], (AppCompatTextView) objArr[20], (AppCompatTextView) objArr[21], (AppCompatTextView) objArr[22], (AppCompatTextView) objArr[23], (AppCompatTextView) objArr[24], (AppCompatTextView) objArr[25], (AppCompatTextView) objArr[26], (AppCompatTextView) objArr[27], (AppCompatTextView) objArr[28]);
        this.f6299L = -1L;
        this.f6298K = (FrameLayout) objArr[0];
        this.f6298K.setTag(null);
        m5876a(view);
        m1720h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6299L;
            this.f6299L = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6299L != 0;
        }
    }

    /* renamed from: h */
    public void m1720h() {
        synchronized (this) {
            this.f6299L = 1L;
        }
        m5862e();
    }
}
