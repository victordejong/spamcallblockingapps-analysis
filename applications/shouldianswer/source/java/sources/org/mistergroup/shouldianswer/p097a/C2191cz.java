package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import org.mistergroup.shouldianswer.utils.BetterEditText;
/* renamed from: org.mistergroup.shouldianswer.a.cz */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/cz.class */
public class C2191cz extends AbstractC2190cy {

    /* renamed from: y */
    private static final ViewDataBinding.C0639b f5942y = null;

    /* renamed from: z */
    private static final SparseIntArray f5943z = new SparseIntArray();

    /* renamed from: A */
    private final CoordinatorLayout f5944A;

    /* renamed from: B */
    private long f5945B;

    static {
        f5943z.put(2131361864, 1);
        f5943z.put(2131362199, 2);
        f5943z.put(2131361924, 3);
        f5943z.put(2131361920, 4);
        f5943z.put(2131362177, 5);
        f5943z.put(2131362444, 6);
        f5943z.put(2131361932, 7);
        f5943z.put(2131361982, 8);
        f5943z.put(2131362202, 9);
        f5943z.put(2131362409, 10);
        f5943z.put(2131361987, 11);
        f5943z.put(2131362191, 12);
        f5943z.put(2131362083, 13);
        f5943z.put(2131361927, 14);
        f5943z.put(2131362082, 15);
        f5943z.put(2131361925, 16);
        f5943z.put(2131361926, 17);
        f5943z.put(2131362189, 18);
        f5943z.put(2131362095, 19);
        f5943z.put(2131362081, 20);
        f5943z.put(2131361921, 21);
        f5943z.put(2131361922, 22);
    }

    public C2191cz(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 23, f5942y, f5943z));
    }

    private C2191cz(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (Button) objArr[4], (Button) objArr[21], (Button) objArr[22], (Button) objArr[3], (Button) objArr[16], (Button) objArr[17], (Button) objArr[14], (Button) objArr[7], (Button) objArr[8], (Button) objArr[11], (BetterEditText) objArr[20], (BetterEditText) objArr[15], (BetterEditText) objArr[13], (BetterEditText) objArr[19], (LinearLayout) objArr[5], (LinearLayout) objArr[18], (LinearLayout) objArr[12], (LinearLayout) objArr[2], (LinearLayout) objArr[9], (AppCompatTextView) objArr[10], (AppCompatTextView) objArr[6]);
        this.f5945B = -1L;
        this.f5944A = (CoordinatorLayout) objArr[0];
        this.f5944A.setTag(null);
        m5876a(view);
        m1754h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5945B;
            this.f5945B = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5945B != 0;
        }
    }

    /* renamed from: h */
    public void m1754h() {
        synchronized (this) {
            this.f5945B = 1L;
        }
        m5862e();
    }
}
