package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
/* renamed from: org.mistergroup.shouldianswer.a.er */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/er.class */
public class C2237er extends AbstractC2236eq {

    /* renamed from: l */
    private static final ViewDataBinding.C0639b f6197l = null;

    /* renamed from: m */
    private static final SparseIntArray f6198m = new SparseIntArray();

    /* renamed from: n */
    private final FrameLayout f6199n;

    /* renamed from: o */
    private long f6200o;

    static {
        f6198m.put(2131362205, 1);
        f6198m.put(2131362455, 2);
        f6198m.put(2131362185, 3);
        f6198m.put(2131362039, 4);
        f6198m.put(2131362040, 5);
        f6198m.put(2131362041, 6);
        f6198m.put(2131361954, 7);
        f6198m.put(2131361939, 8);
        f6198m.put(2131362323, 9);
    }

    public C2237er(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 10, f6197l, f6198m));
    }

    private C2237er(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Button) objArr[8], (Button) objArr[7], (CheckBox) objArr[4], (AppCompatTextView) objArr[5], (CheckBox) objArr[6], (LinearLayout) objArr[3], (LinearLayout) objArr[1], (TabLayout) objArr[9], (ViewPager) objArr[2]);
        this.f6200o = -1L;
        this.f6199n = (FrameLayout) objArr[0];
        this.f6199n.setTag(null);
        m5876a(view);
        m1731h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6200o;
            this.f6200o = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6200o != 0;
        }
    }

    /* renamed from: h */
    public void m1731h() {
        synchronized (this) {
            this.f6200o = 1L;
        }
        m5862e();
    }
}
