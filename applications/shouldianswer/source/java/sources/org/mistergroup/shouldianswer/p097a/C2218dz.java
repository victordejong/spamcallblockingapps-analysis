package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.dz */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/dz.class */
public class C2218dz extends AbstractC2217dy {

    /* renamed from: q */
    private static final ViewDataBinding.C0639b f6075q = null;

    /* renamed from: r */
    private static final SparseIntArray f6076r = new SparseIntArray();

    /* renamed from: s */
    private final CoordinatorLayout f6077s;

    /* renamed from: t */
    private long f6078t;

    static {
        f6076r.put(2131361864, 1);
        f6076r.put(2131362228, 2);
        f6076r.put(2131362269, 3);
        f6076r.put(2131362048, 4);
        f6076r.put(2131362049, 5);
        f6076r.put(2131362047, 6);
        f6076r.put(2131362227, 7);
        f6076r.put(2131362050, 8);
        f6076r.put(2131362044, 9);
        f6076r.put(2131361986, 10);
        f6076r.put(2131362027, 11);
        f6076r.put(2131361942, 12);
        f6076r.put(2131362026, 13);
        f6076r.put(2131361985, 14);
    }

    public C2218dz(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 15, f6075q, f6076r));
    }

    private C2218dz(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (ImageButton) objArr[12], (ImageButton) objArr[14], (ImageButton) objArr[10], (SwitchCompat) objArr[13], (SwitchCompat) objArr[11], (SwitchCompat) objArr[9], (RadioButton) objArr[6], (RadioButton) objArr[4], (RadioButton) objArr[5], (SwitchCompat) objArr[8], (LinearLayout) objArr[7], (LinearLayout) objArr[2], (RadioGroup) objArr[3]);
        this.f6078t = -1L;
        this.f6077s = (CoordinatorLayout) objArr[0];
        this.f6077s.setTag(null);
        m5876a(view);
        m1740h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6078t;
            this.f6078t = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6078t != 0;
        }
    }

    /* renamed from: h */
    public void m1740h() {
        synchronized (this) {
            this.f6078t = 1L;
        }
        m5862e();
    }
}
