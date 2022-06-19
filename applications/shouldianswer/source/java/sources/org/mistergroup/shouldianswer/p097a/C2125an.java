package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.Chronometer;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.an */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/an.class */
public class C2125an extends AbstractC2124am {

    /* renamed from: l */
    private static final ViewDataBinding.C0639b f5609l = null;

    /* renamed from: m */
    private static final SparseIntArray f5610m = new SparseIntArray();

    /* renamed from: n */
    private final LinearLayout f5611n;

    /* renamed from: o */
    private long f5612o;

    static {
        f5610m.put(2131362435, 1);
        f5610m.put(2131362368, 2);
        f5610m.put(2131362367, 3);
        f5610m.put(2131362442, 4);
        f5610m.put(2131362440, 5);
        f5610m.put(2131362155, 6);
        f5610m.put(2131361967, 7);
        f5610m.put(2131361876, 8);
        f5610m.put(2131361932, 9);
    }

    public C2125an(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 10, f5609l, f5610m));
    }

    private C2125an(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Button) objArr[8], (Button) objArr[9], (Button) objArr[7], (ImageView) objArr[6], (Chronometer) objArr[3], (TextView) objArr[2], (TextView) objArr[1], (TextView) objArr[5], (TextView) objArr[4]);
        this.f5612o = -1L;
        this.f5611n = (LinearLayout) objArr[0];
        this.f5611n.setTag(null);
        m5876a(view);
        m1787h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5612o;
            this.f5612o = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5612o != 0;
        }
    }

    /* renamed from: h */
    public void m1787h() {
        synchronized (this) {
            this.f5612o = 1L;
        }
        m5862e();
    }
}
