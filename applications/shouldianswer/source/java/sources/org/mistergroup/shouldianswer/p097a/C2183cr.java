package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import org.mistergroup.shouldianswer.utils.BetterEditText;
/* renamed from: org.mistergroup.shouldianswer.a.cr */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/cr.class */
public class C2183cr extends AbstractC2182cq {

    /* renamed from: u */
    private static final ViewDataBinding.C0639b f5900u = null;

    /* renamed from: v */
    private static final SparseIntArray f5901v = new SparseIntArray();

    /* renamed from: w */
    private final LinearLayout f5902w;

    /* renamed from: x */
    private long f5903x;

    static {
        f5901v.put(2131362218, 1);
        f5901v.put(2131361864, 2);
        f5901v.put(2131362419, 3);
        f5901v.put(2131362222, 4);
        f5901v.put(2131362431, 5);
        f5901v.put(2131361914, 6);
        f5901v.put(2131362219, 7);
        f5901v.put(2131361911, 8);
        f5901v.put(2131361910, 9);
        f5901v.put(2131361912, 10);
        f5901v.put(2131361906, 11);
        f5901v.put(2131361908, 12);
        f5901v.put(2131361907, 13);
        f5901v.put(2131361909, 14);
        f5901v.put(2131362193, 15);
        f5901v.put(2131362085, 16);
        f5901v.put(2131362188, 17);
        f5901v.put(2131361919, 18);
    }

    public C2183cr(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 19, f5900u, f5901v));
    }

    private C2183cr(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[2], (Button) objArr[11], (Button) objArr[13], (Button) objArr[12], (Button) objArr[14], (Button) objArr[9], (Button) objArr[8], (Button) objArr[10], (Button) objArr[6], (Button) objArr[18], (BetterEditText) objArr[16], (LinearLayout) objArr[17], (LinearLayout) objArr[15], (LinearLayout) objArr[1], (LinearLayout) objArr[7], (LinearLayout) objArr[4], (AppCompatTextView) objArr[3], (AppCompatTextView) objArr[5]);
        this.f5903x = -1L;
        this.f5902w = (LinearLayout) objArr[0];
        this.f5902w.setTag(null);
        m5876a(view);
        m1758h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5903x;
            this.f5903x = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5903x != 0;
        }
    }

    /* renamed from: h */
    public void m1758h() {
        synchronized (this) {
            this.f5903x = 1L;
        }
        m5862e();
    }
}
