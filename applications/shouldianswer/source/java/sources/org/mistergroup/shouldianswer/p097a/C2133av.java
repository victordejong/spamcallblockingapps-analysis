package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
/* renamed from: org.mistergroup.shouldianswer.a.av */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/av.class */
public class C2133av extends AbstractC2132au {

    /* renamed from: U */
    private static final ViewDataBinding.C0639b f5675U = null;

    /* renamed from: V */
    private static final SparseIntArray f5676V = new SparseIntArray();

    /* renamed from: W */
    private final CoordinatorLayout f5677W;

    /* renamed from: X */
    private long f5678X;

    static {
        f5676V.put(2131362164, 1);
        f5676V.put(2131361864, 2);
        f5676V.put(2131362197, 3);
        f5676V.put(2131362392, 4);
        f5676V.put(2131362393, 5);
        f5676V.put(2131362399, 6);
        f5676V.put(2131362375, 7);
        f5676V.put(2131362423, 8);
        f5676V.put(2131362183, 9);
        f5676V.put(2131362361, 10);
        f5676V.put(2131361905, 11);
        f5676V.put(2131361978, 12);
        f5676V.put(2131361898, 13);
        f5676V.put(2131361994, 14);
        f5676V.put(2131361892, 15);
        f5676V.put(2131361993, 16);
        f5676V.put(2131362284, 17);
        f5676V.put(2131362005, 18);
        f5676V.put(2131362415, 19);
        f5676V.put(2131362416, 20);
        f5676V.put(2131361970, 21);
        f5676V.put(2131361972, 22);
        f5676V.put(2131361974, 23);
        f5676V.put(2131362008, 24);
        f5676V.put(2131361973, 25);
        f5676V.put(2131361975, 26);
        f5676V.put(2131362006, 27);
        f5676V.put(2131361971, 28);
        f5676V.put(2131362147, 29);
        f5676V.put(2131362149, 30);
        f5676V.put(2131362426, 31);
        f5676V.put(2131362427, 32);
        f5676V.put(2131361928, 33);
        f5676V.put(2131361934, 34);
        f5676V.put(2131362007, 35);
        f5676V.put(2131361929, 36);
        f5676V.put(2131361923, 37);
        f5676V.put(2131362004, 38);
        f5676V.put(2131362371, 39);
        f5676V.put(2131362372, 40);
        f5676V.put(2131362370, 41);
        f5676V.put(2131361984, 42);
        f5676V.put(2131362363, 43);
        f5676V.put(2131362184, 44);
    }

    public C2133av(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 45, f5675U, f5676V));
    }

    private C2133av(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[2], (AppCompatButton) objArr[15], (AppCompatButton) objArr[13], (AppCompatButton) objArr[11], (MaterialButton) objArr[37], (MaterialButton) objArr[33], (MaterialButton) objArr[36], (MaterialButton) objArr[34], (ImageButton) objArr[21], (ImageButton) objArr[28], (MaterialButton) objArr[22], (MaterialButton) objArr[25], (MaterialButton) objArr[23], (MaterialButton) objArr[26], (AppCompatButton) objArr[12], (MaterialButton) objArr[42], (AppCompatButton) objArr[16], (AppCompatButton) objArr[14], (MaterialCardView) objArr[38], (MaterialCardView) objArr[18], (MaterialCardView) objArr[27], (MaterialCardView) objArr[35], (MaterialCardView) objArr[24], (ImageView) objArr[29], (ImageView) objArr[30], (ImageView) objArr[1], (LinearLayout) objArr[9], (LinearLayout) objArr[44], (LinearLayout) objArr[3], (NestedScrollView) objArr[17], (AppCompatTextView) objArr[10], (AppCompatTextView) objArr[43], (AppCompatTextView) objArr[41], (AppCompatTextView) objArr[39], (AppCompatTextView) objArr[40], (AppCompatTextView) objArr[7], (AppCompatTextView) objArr[4], (AppCompatTextView) objArr[5], (AppCompatTextView) objArr[6], (AppCompatTextView) objArr[19], (AppCompatTextView) objArr[20], (AppCompatTextView) objArr[8], (AppCompatTextView) objArr[31], (AppCompatTextView) objArr[32]);
        this.f5678X = -1L;
        this.f5677W = (CoordinatorLayout) objArr[0];
        this.f5677W.setTag(null);
        m5876a(view);
        m1783h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5678X;
            this.f5678X = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5678X != 0;
        }
    }

    /* renamed from: h */
    public void m1783h() {
        synchronized (this) {
            this.f5678X = 1L;
        }
        m5862e();
    }
}
