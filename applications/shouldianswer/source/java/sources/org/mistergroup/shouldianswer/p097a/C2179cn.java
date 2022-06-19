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
/* renamed from: org.mistergroup.shouldianswer.a.cn */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/cn.class */
public class C2179cn extends AbstractC2178cm {

    /* renamed from: t */
    private static final ViewDataBinding.C0639b f5874t = null;

    /* renamed from: u */
    private static final SparseIntArray f5875u = new SparseIntArray();

    /* renamed from: v */
    private final LinearLayout f5876v;

    /* renamed from: w */
    private long f5877w;

    static {
        f5875u.put(2131361864, 1);
        f5875u.put(2131362419, 2);
        f5875u.put(2131362224, 3);
        f5875u.put(2131362431, 4);
        f5875u.put(2131361914, 5);
        f5875u.put(2131362221, 6);
        f5875u.put(2131361990, 7);
        f5875u.put(2131361991, 8);
        f5875u.put(2131361992, 9);
        f5875u.put(2131362193, 10);
        f5875u.put(2131362085, 11);
        f5875u.put(2131362187, 12);
        f5875u.put(2131362087, 13);
        f5875u.put(2131362086, 14);
        f5875u.put(2131362088, 15);
        f5875u.put(2131362188, 16);
        f5875u.put(2131361919, 17);
    }

    public C2179cn(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 18, f5874t, f5875u));
    }

    private C2179cn(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (Button) objArr[5], (Button) objArr[17], (Button) objArr[7], (Button) objArr[8], (Button) objArr[9], (BetterEditText) objArr[11], (BetterEditText) objArr[14], (BetterEditText) objArr[13], (BetterEditText) objArr[15], (LinearLayout) objArr[12], (LinearLayout) objArr[16], (LinearLayout) objArr[10], (LinearLayout) objArr[6], (LinearLayout) objArr[3], (AppCompatTextView) objArr[2], (AppCompatTextView) objArr[4]);
        this.f5877w = -1L;
        this.f5876v = (LinearLayout) objArr[0];
        this.f5876v.setTag(null);
        m5876a(view);
        m1760h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f5877w;
            this.f5877w = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f5877w != 0;
        }
    }

    /* renamed from: h */
    public void m1760h() {
        synchronized (this) {
            this.f5877w = 1L;
        }
        m5862e();
    }
}
