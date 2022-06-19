package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import com.makeramen.roundedimageview.RoundedImageView;
/* renamed from: org.mistergroup.shouldianswer.a.ah */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/ah.class */
public class C2119ah extends AbstractC2118ag {

    /* renamed from: s */
    private static final ViewDataBinding.C0639b f5529s = null;

    /* renamed from: t */
    private static final SparseIntArray f5530t = new SparseIntArray();

    /* renamed from: u */
    private long f5531u;

    static {
        f5530t.put(2131362119, 1);
        f5530t.put(2131362143, 2);
        f5530t.put(2131362373, 3);
        f5530t.put(2131362153, 4);
        f5530t.put(2131362154, 5);
        f5530t.put(2131362138, 6);
        f5530t.put(2131362137, 7);
        f5530t.put(2131362365, 8);
        f5530t.put(2131362141, 9);
        f5530t.put(2131362139, 10);
        f5530t.put(2131362140, 11);
        f5530t.put(2131362378, 12);
        f5530t.put(2131362111, 13);
        f5530t.put(2131361905, 14);
        f5530t.put(2131362441, 15);
    }

    public C2119ah(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 16, f5529s, f5530t));
    }

    private C2119ah(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (ImageButton) objArr[14], (FrameLayout) objArr[13], (FrameLayout) objArr[1], (ImageView) objArr[7], (ImageView) objArr[6], (ImageView) objArr[10], (ImageView) objArr[11], (ImageView) objArr[9], (RoundedImageView) objArr[2], (ImageView) objArr[4], (ImageView) objArr[5], (LinearLayout) objArr[0], (AppCompatTextView) objArr[8], (AppCompatTextView) objArr[3], (AppCompatTextView) objArr[12], (AppCompatTextView) objArr[15]);
        this.f5531u = -1L;
        this.f5524n.setTag(null);
        m5876a(view);
        m1790h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5531u;
            this.f5531u = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5531u != 0;
        }
    }

    /* renamed from: h */
    public void m1790h() {
        synchronized (this) {
            this.f5531u = 1L;
        }
        m5862e();
    }
}
