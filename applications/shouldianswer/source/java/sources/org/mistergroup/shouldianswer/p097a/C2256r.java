package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
/* renamed from: org.mistergroup.shouldianswer.a.r */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/r.class */
public class C2256r extends AbstractC2255q {

    /* renamed from: t */
    private static final ViewDataBinding.C0639b f6260t = null;

    /* renamed from: u */
    private static final SparseIntArray f6261u = new SparseIntArray();

    /* renamed from: v */
    private final CoordinatorLayout f6262v;

    /* renamed from: w */
    private long f6263w;

    static {
        f6261u.put(2131362175, 1);
        f6261u.put(2131362211, 2);
        f6261u.put(2131362414, 3);
        f6261u.put(2131361895, 4);
        f6261u.put(2131362380, 5);
        f6261u.put(2131362381, 6);
        f6261u.put(2131362382, 7);
        f6261u.put(2131362383, 8);
        f6261u.put(2131362384, 9);
        f6261u.put(2131362385, 10);
        f6261u.put(2131362386, 11);
        f6261u.put(2131362387, 12);
        f6261u.put(2131362388, 13);
        f6261u.put(2131362390, 14);
        f6261u.put(2131362379, 15);
        f6261u.put(2131362389, 16);
        f6261u.put(2131362103, 17);
    }

    public C2256r(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 18, f6260t, f6261u));
    }

    private C2256r(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (ImageButton) objArr[4], (FloatingActionButton) objArr[17], (RecyclerView) objArr[1], (LinearLayout) objArr[2], (LinearLayout) objArr[15], (LinearLayout) objArr[5], (LinearLayout) objArr[6], (LinearLayout) objArr[7], (LinearLayout) objArr[8], (LinearLayout) objArr[9], (LinearLayout) objArr[10], (LinearLayout) objArr[11], (LinearLayout) objArr[12], (LinearLayout) objArr[13], (LinearLayout) objArr[16], (LinearLayout) objArr[14], (TextView) objArr[3]);
        this.f6263w = -1L;
        this.f6262v = (CoordinatorLayout) objArr[0];
        this.f6262v.setTag(null);
        m5876a(view);
        m1721h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6263w;
            this.f6263w = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6263w != 0;
        }
    }

    /* renamed from: h */
    public void m1721h() {
        synchronized (this) {
            this.f6263w = 1L;
        }
        m5862e();
    }
}
