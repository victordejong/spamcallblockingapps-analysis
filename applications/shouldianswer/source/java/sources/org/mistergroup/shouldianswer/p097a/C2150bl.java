package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.bl */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/bl.class */
public class C2150bl extends AbstractC2149bk {

    /* renamed from: p */
    private static final ViewDataBinding.C0639b f5734p = null;

    /* renamed from: q */
    private static final SparseIntArray f5735q = new SparseIntArray();

    /* renamed from: r */
    private final LinearLayout f5736r;

    /* renamed from: s */
    private long f5737s;

    static {
        f5735q.put(2131361864, 1);
        f5735q.put(2131361949, 2);
        f5735q.put(2131361997, 3);
        f5735q.put(2131361999, 4);
        f5735q.put(2131361998, 5);
        f5735q.put(2131362002, 6);
        f5735q.put(2131362001, 7);
        f5735q.put(2131361995, 8);
        f5735q.put(2131362079, 9);
        f5735q.put(2131361938, 10);
        f5735q.put(2131362213, 11);
        f5735q.put(2131361933, 12);
        f5735q.put(2131361996, 13);
    }

    public C2150bl(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 14, f5734p, f5735q));
    }

    private C2150bl(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (Button) objArr[12], (Button) objArr[10], (ImageButton) objArr[2], (ImageButton) objArr[8], (Button) objArr[13], (Button) objArr[3], (Button) objArr[5], (Button) objArr[4], (Button) objArr[7], (Button) objArr[6], (View) objArr[9], (LinearLayout) objArr[11]);
        this.f5737s = -1L;
        this.f5736r = (LinearLayout) objArr[0];
        this.f5736r.setTag(null);
        m5876a(view);
        m1774h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5737s;
            this.f5737s = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5737s != 0;
        }
    }

    /* renamed from: h */
    public void m1774h() {
        synchronized (this) {
            this.f5737s = 1L;
        }
        m5862e();
    }
}
