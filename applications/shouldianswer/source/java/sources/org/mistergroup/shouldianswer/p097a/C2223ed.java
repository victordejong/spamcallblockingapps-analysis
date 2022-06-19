package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.ed */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/ed.class */
public class C2223ed extends AbstractC2222ec {

    /* renamed from: P */
    private static final ViewDataBinding.C0639b f6144P = null;

    /* renamed from: Q */
    private static final SparseIntArray f6145Q = new SparseIntArray();

    /* renamed from: R */
    private final LinearLayout f6146R;

    /* renamed from: S */
    private long f6147S;

    static {
        f6145Q.put(2131361864, 1);
        f6145Q.put(2131361964, 2);
        f6145Q.put(2131361966, 3);
        f6145Q.put(2131361916, 4);
        f6145Q.put(2131362433, 5);
        f6145Q.put(2131362269, 6);
        f6145Q.put(2131362023, 7);
        f6145Q.put(2131361886, 8);
        f6145Q.put(2131362031, 9);
        f6145Q.put(2131361960, 10);
        f6145Q.put(2131362029, 11);
        f6145Q.put(2131361956, 12);
        f6145Q.put(2131362182, 13);
        f6145Q.put(2131361891, 14);
        f6145Q.put(2131361913, 15);
        f6145Q.put(2131362430, 16);
        f6145Q.put(2131362268, 17);
        f6145Q.put(2131362198, 18);
        f6145Q.put(2131362028, 19);
        f6145Q.put(2131361943, 20);
        f6145Q.put(2131362035, 21);
        f6145Q.put(2131361962, 22);
        f6145Q.put(2131362420, 23);
        f6145Q.put(2131362030, 24);
        f6145Q.put(2131361988, 25);
        f6145Q.put(2131362413, 26);
        f6145Q.put(2131362216, 27);
        f6145Q.put(2131362428, 28);
        f6145Q.put(2131362178, 29);
        f6145Q.put(2131361878, 30);
        f6145Q.put(2131362179, 31);
        f6145Q.put(2131361879, 32);
        f6145Q.put(2131362181, 33);
        f6145Q.put(2131361883, 34);
        f6145Q.put(2131361884, 35);
        f6145Q.put(2131362180, 36);
        f6145Q.put(2131361880, 37);
        f6145Q.put(2131362188, 38);
        f6145Q.put(2131361919, 39);
    }

    public C2223ed(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 40, f6144P, f6145Q));
    }

    private C2223ed(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (Button) objArr[30], (Button) objArr[32], (Button) objArr[37], (ImageButton) objArr[34], (Button) objArr[35], (ImageButton) objArr[8], (ImageButton) objArr[14], (Button) objArr[15], (Button) objArr[4], (Button) objArr[39], (ImageButton) objArr[20], (ImageButton) objArr[12], (ImageButton) objArr[10], (ImageButton) objArr[22], (ImageButton) objArr[2], (ImageButton) objArr[3], (ImageButton) objArr[25], (RadioButton) objArr[7], (RadioButton) objArr[19], (RadioButton) objArr[11], (RadioButton) objArr[24], (RadioButton) objArr[9], (RadioButton) objArr[21], (LinearLayout) objArr[29], (LinearLayout) objArr[31], (LinearLayout) objArr[36], (LinearLayout) objArr[33], (LinearLayout) objArr[13], (LinearLayout) objArr[38], (LinearLayout) objArr[18], (LinearLayout) objArr[27], (RadioGroup) objArr[17], (RadioGroup) objArr[6], (AppCompatTextView) objArr[26], (AppCompatTextView) objArr[23], (AppCompatTextView) objArr[28], (AppCompatTextView) objArr[16], (AppCompatTextView) objArr[5]);
        this.f6147S = -1L;
        this.f6146R = (LinearLayout) objArr[0];
        this.f6146R.setTag(null);
        m5876a(view);
        m1738h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6147S;
            this.f6147S = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6147S != 0;
        }
    }

    /* renamed from: h */
    public void m1738h() {
        synchronized (this) {
            this.f6147S = 1L;
        }
        m5862e();
    }
}
