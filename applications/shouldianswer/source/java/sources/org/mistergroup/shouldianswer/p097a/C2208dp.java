package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import org.mistergroup.shouldianswer.utils.BetterEditText;
/* renamed from: org.mistergroup.shouldianswer.a.dp */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/dp.class */
public class C2208dp extends AbstractC2207do {

    /* renamed from: E */
    private static final ViewDataBinding.C0639b f6023E = null;

    /* renamed from: F */
    private static final SparseIntArray f6024F = new SparseIntArray();

    /* renamed from: G */
    private final CoordinatorLayout f6025G;

    /* renamed from: H */
    private long f6026H;

    static {
        f6024F.put(2131361864, 1);
        f6024F.put(2131361902, 2);
        f6024F.put(2131362015, 3);
        f6024F.put(2131362019, 4);
        f6024F.put(2131362297, 5);
        f6024F.put(2131362338, 6);
        f6024F.put(2131362016, 7);
        f6024F.put(2131362017, 8);
        f6024F.put(2131362014, 9);
        f6024F.put(2131362013, 10);
        f6024F.put(2131362020, 11);
        f6024F.put(2131362021, 12);
        f6024F.put(2131362022, 13);
        f6024F.put(2131362018, 14);
        f6024F.put(2131361941, 15);
        f6024F.put(2131362269, 16);
        f6024F.put(2131362025, 17);
        f6024F.put(2131362037, 18);
        f6024F.put(2131362032, 19);
        f6024F.put(2131362034, 20);
        f6024F.put(2131362033, 21);
        f6024F.put(2131362038, 22);
        f6024F.put(2131361899, 23);
        f6024F.put(2131362089, 24);
        f6024F.put(2131361889, 25);
        f6024F.put(2131361900, 26);
        f6024F.put(2131362090, 27);
        f6024F.put(2131361888, 28);
    }

    public C2208dp(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 29, f6023E, f6024F));
    }

    private C2208dp(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (Button) objArr[28], (Button) objArr[25], (ImageButton) objArr[23], (ImageButton) objArr[26], (ImageButton) objArr[2], (ImageButton) objArr[15], (SwitchCompat) objArr[10], (SwitchCompat) objArr[9], (SwitchCompat) objArr[3], (SwitchCompat) objArr[7], (SwitchCompat) objArr[8], (SwitchCompat) objArr[14], (SwitchCompat) objArr[4], (SwitchCompat) objArr[11], (SwitchCompat) objArr[12], (SwitchCompat) objArr[13], (RadioButton) objArr[17], (RadioButton) objArr[19], (AppCompatTextView) objArr[21], (AppCompatTextView) objArr[20], (RadioButton) objArr[18], (SwitchCompat) objArr[22], (BetterEditText) objArr[24], (BetterEditText) objArr[27], (RadioGroup) objArr[16], (SeekBar) objArr[5], (AppCompatTextView) objArr[6]);
        this.f6026H = -1L;
        this.f6025G = (CoordinatorLayout) objArr[0];
        this.f6025G.setTag(null);
        m5876a(view);
        m1745h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6026H;
            this.f6026H = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6026H != 0;
        }
    }

    /* renamed from: h */
    public void m1745h() {
        synchronized (this) {
            this.f6026H = 1L;
        }
        m5862e();
    }
}
