package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.al */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/al.class */
public class C2123al extends AbstractC2122ak {

    /* renamed from: s */
    private static final ViewDataBinding.C0639b f5596s = null;

    /* renamed from: t */
    private static final SparseIntArray f5597t = new SparseIntArray();

    /* renamed from: u */
    private final LinearLayout f5598u;

    /* renamed from: v */
    private long f5599v;

    static {
        f5597t.put(2131362192, 1);
        f5597t.put(2131362211, 2);
        f5597t.put(2131362391, 3);
        f5597t.put(2131361931, 4);
        f5597t.put(2131362380, 5);
        f5597t.put(2131362381, 6);
        f5597t.put(2131362382, 7);
        f5597t.put(2131362383, 8);
        f5597t.put(2131362384, 9);
        f5597t.put(2131362385, 10);
        f5597t.put(2131362386, 11);
        f5597t.put(2131362387, 12);
        f5597t.put(2131362388, 13);
        f5597t.put(2131362390, 14);
        f5597t.put(2131362379, 15);
        f5597t.put(2131362389, 16);
    }

    public C2123al(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 17, f5596s, f5597t));
    }

    private C2123al(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (ImageButton) objArr[4], (LinearLayout) objArr[1], (LinearLayout) objArr[2], (LinearLayout) objArr[15], (LinearLayout) objArr[5], (LinearLayout) objArr[6], (LinearLayout) objArr[7], (LinearLayout) objArr[8], (LinearLayout) objArr[9], (LinearLayout) objArr[10], (LinearLayout) objArr[11], (LinearLayout) objArr[12], (LinearLayout) objArr[13], (LinearLayout) objArr[16], (LinearLayout) objArr[14], (TextView) objArr[3]);
        this.f5599v = -1L;
        this.f5598u = (LinearLayout) objArr[0];
        this.f5598u.setTag(null);
        m5876a(view);
        m1788h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5599v;
            this.f5599v = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5599v != 0;
        }
    }

    /* renamed from: h */
    public void m1788h() {
        synchronized (this) {
            this.f5599v = 1L;
        }
        m5862e();
    }
}
