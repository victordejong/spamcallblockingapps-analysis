package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import org.mistergroup.shouldianswer.components.LimitedScrollView;
/* renamed from: org.mistergroup.shouldianswer.a.f */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/f.class */
public class C2244f extends AbstractC2219e {

    /* renamed from: y */
    private static final ViewDataBinding.C0639b f6213y = null;

    /* renamed from: z */
    private static final SparseIntArray f6214z = new SparseIntArray();

    /* renamed from: A */
    private final LinearLayout f6215A;

    /* renamed from: B */
    private long f6216B;

    static {
        f6214z.put(2131362207, 1);
        f6214z.put(2131362150, 2);
        f6214z.put(2131362442, 3);
        f6214z.put(2131362436, 4);
        f6214z.put(2131361917, 5);
        f6214z.put(2131362284, 6);
        f6214z.put(2131362399, 7);
        f6214z.put(2131362204, 8);
        f6214z.put(2131362186, 9);
        f6214z.put(2131361952, 10);
        f6214z.put(2131362229, 11);
        f6214z.put(2131362264, 12);
        f6214z.put(2131362377, 13);
        f6214z.put(2131362226, 14);
        f6214z.put(2131362194, 15);
        f6214z.put(2131362214, 16);
        f6214z.put(2131362424, 17);
        f6214z.put(2131362151, 18);
        f6214z.put(2131362425, 19);
        f6214z.put(2131362152, 20);
        f6214z.put(2131361948, 21);
        f6214z.put(2131361947, 22);
    }

    public C2244f(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 23, f6213y, f6214z));
    }

    private C2244f(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (AppCompatImageButton) objArr[5], (AppCompatButton) objArr[22], (AppCompatButton) objArr[21], (Button) objArr[10], (ImageView) objArr[2], (ImageView) objArr[18], (ImageView) objArr[20], (LinearLayout) objArr[9], (LinearLayout) objArr[15], (LinearLayout) objArr[8], (LinearLayout) objArr[1], (LinearLayout) objArr[16], (LinearLayout) objArr[14], (AppCompatTextView) objArr[11], (ProgressBar) objArr[12], (LimitedScrollView) objArr[6], (AppCompatTextView) objArr[13], (AppCompatTextView) objArr[7], (AppCompatTextView) objArr[17], (AppCompatTextView) objArr[19], (AppCompatTextView) objArr[4], (AppCompatTextView) objArr[3]);
        this.f6216B = -1L;
        this.f6215A = (LinearLayout) objArr[0];
        this.f6215A.setTag(null);
        m5876a(view);
        m1727h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6216B;
            this.f6216B = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6216B != 0;
        }
    }

    /* renamed from: h */
    public void m1727h() {
        synchronized (this) {
            this.f6216B = 1L;
        }
        m5862e();
    }
}
