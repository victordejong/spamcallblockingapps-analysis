package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ToggleButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.makeramen.roundedimageview.RoundedImageView;
import org.mistergroup.shouldianswer.components.LimitedScrollView;
/* renamed from: org.mistergroup.shouldianswer.a.aj */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/aj.class */
public class C2121aj extends AbstractC2120ai {

    /* renamed from: V */
    private static final ViewDataBinding.C0639b f5577V = null;

    /* renamed from: W */
    private static final SparseIntArray f5578W = new SparseIntArray();

    /* renamed from: X */
    private long f5579X;

    static {
        f5578W.put(2131362142, 1);
        f5578W.put(2131362212, 2);
        f5578W.put(2131361951, 3);
        f5578W.put(2131361930, 4);
        f5578W.put(2131361977, 5);
        f5578W.put(2131361887, 6);
        f5578W.put(2131361961, 7);
        f5578W.put(2131361904, 8);
        f5578W.put(2131362104, 9);
        f5578W.put(2131362190, 10);
        f5578W.put(2131362364, 11);
        f5578W.put(2131362121, 12);
        f5578W.put(2131362143, 13);
        f5578W.put(2131362373, 14);
        f5578W.put(2131362146, 15);
        f5578W.put(2131362442, 16);
        f5578W.put(2131362225, 17);
        f5578W.put(2131362145, 18);
        f5578W.put(2131362436, 19);
        f5578W.put(2131362394, 20);
        f5578W.put(2131362120, 21);
        f5578W.put(2131362144, 22);
        f5578W.put(2131362374, 23);
        f5578W.put(2131362284, 24);
        f5578W.put(2131362399, 25);
        f5578W.put(2131362204, 26);
        f5578W.put(2131362186, 27);
        f5578W.put(2131361952, 28);
        f5578W.put(2131362229, 29);
        f5578W.put(2131362264, 30);
        f5578W.put(2131362377, 31);
        f5578W.put(2131362226, 32);
        f5578W.put(2131362194, 33);
        f5578W.put(2131362214, 34);
        f5578W.put(2131362424, 35);
        f5578W.put(2131362151, 36);
        f5578W.put(2131362425, 37);
        f5578W.put(2131362152, 38);
        f5578W.put(2131361947, 39);
        f5578W.put(2131362195, 40);
        f5578W.put(2131362217, 41);
        f5578W.put(2131362438, 42);
        f5578W.put(2131362136, 43);
        f5578W.put(2131362437, 44);
    }

    public C2121aj(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 45, f5577V, f5578W));
    }

    private C2121aj(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Button) objArr[6], (ToggleButton) objArr[8], (Button) objArr[4], (Button) objArr[39], (ToggleButton) objArr[3], (Button) objArr[28], (ToggleButton) objArr[7], (ToggleButton) objArr[5], (FloatingActionButton) objArr[9], (FrameLayout) objArr[21], (FrameLayout) objArr[12], (ImageView) objArr[43], (ImageView) objArr[1], (RoundedImageView) objArr[13], (RoundedImageView) objArr[22], (ImageView) objArr[18], (ImageView) objArr[15], (ImageView) objArr[36], (ImageView) objArr[38], (LinearLayout) objArr[27], (LinearLayout) objArr[10], (LinearLayout) objArr[33], (LinearLayout) objArr[40], (LinearLayout) objArr[26], (FrameLayout) objArr[0], (LinearLayout) objArr[2], (LinearLayout) objArr[34], (LinearLayout) objArr[41], (LinearLayout) objArr[17], (LinearLayout) objArr[32], (AppCompatTextView) objArr[29], (ProgressBar) objArr[30], (LimitedScrollView) objArr[24], (AppCompatTextView) objArr[11], (AppCompatTextView) objArr[14], (AppCompatTextView) objArr[23], (AppCompatTextView) objArr[31], (AppCompatTextView) objArr[20], (AppCompatTextView) objArr[25], (AppCompatTextView) objArr[35], (AppCompatTextView) objArr[37], (AppCompatTextView) objArr[19], (AppCompatTextView) objArr[44], (AppCompatTextView) objArr[42], (AppCompatTextView) objArr[16]);
        this.f5579X = -1L;
        this.f5532A.setTag(null);
        m5876a(view);
        m1789h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5579X;
            this.f5579X = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5579X != 0;
        }
    }

    /* renamed from: h */
    public void m1789h() {
        synchronized (this) {
            this.f5579X = 1L;
        }
        m5862e();
    }
}
