package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
/* renamed from: org.mistergroup.shouldianswer.a.en */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/en.class */
public class C2233en extends AbstractC2232em {

    /* renamed from: h */
    private static final ViewDataBinding.C0639b f6180h = null;

    /* renamed from: i */
    private static final SparseIntArray f6181i = new SparseIntArray();

    /* renamed from: j */
    private final LinearLayout f6182j;

    /* renamed from: k */
    private long f6183k;

    static {
        f6181i.put(2131361864, 1);
        f6181i.put(2131362458, 2);
        f6181i.put(2131362263, 3);
        f6181i.put(2131362255, 4);
        f6181i.put(2131361968, 5);
    }

    public C2233en(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 6, f6180h, f6181i));
    }

    private C2233en(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (Button) objArr[5], (LinearLayout) objArr[4], (ProgressBar) objArr[3], (WebView) objArr[2]);
        this.f6183k = -1L;
        this.f6182j = (LinearLayout) objArr[0];
        this.f6182j.setTag(null);
        m5876a(view);
        m1733h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6183k;
            this.f6183k = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6183k != 0;
        }
    }

    /* renamed from: h */
    public void m1733h() {
        synchronized (this) {
            this.f6183k = 1L;
        }
        m5862e();
    }
}
