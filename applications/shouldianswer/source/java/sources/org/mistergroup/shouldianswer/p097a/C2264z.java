package org.mistergroup.shouldianswer.p097a;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.AbstractC0650e;
import androidx.databinding.ViewDataBinding;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
/* renamed from: org.mistergroup.shouldianswer.a.z */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/a/z.class */
public class C2264z extends AbstractC2263y {

    /* renamed from: t */
    private static final ViewDataBinding.C0639b f6336t = null;

    /* renamed from: u */
    private static final SparseIntArray f6337u = new SparseIntArray();

    /* renamed from: v */
    private long f6338v;

    static {
        f6337u.put(2131361864, 1);
        f6337u.put(2131362003, 2);
        f6337u.put(2131362156, 3);
        f6337u.put(2131362360, 4);
        f6337u.put(2131362359, 5);
        f6337u.put(2131361897, 6);
        f6337u.put(2131361896, 7);
        f6337u.put(2131362455, 8);
        f6337u.put(2131362103, 9);
        f6337u.put(2131361872, 10);
        f6337u.put(2131362168, 11);
        f6337u.put(2131361981, 12);
        f6337u.put(2131361918, 13);
        f6337u.put(2131361969, 14);
        f6337u.put(2131361950, 15);
        f6337u.put(2131361873, 16);
    }

    public C2264z(AbstractC0650e abstractC0650e, View view) {
        this(abstractC0650e, view, m5872a(abstractC0650e, view, 17, f6336t, f6337u));
    }

    private C2264z(AbstractC0650e abstractC0650e, View view, Object[] objArr) {
        super(abstractC0650e, view, 0, (Toolbar) objArr[1], (BottomNavigationView) objArr[10], (AppCompatButton) objArr[16], (MaterialButton) objArr[7], (MaterialButton) objArr[6], (AppCompatButton) objArr[13], (AppCompatButton) objArr[15], (AppCompatButton) objArr[14], (AppCompatButton) objArr[12], (MaterialCardView) objArr[2], (DrawerLayout) objArr[0], (FloatingActionButton) objArr[9], (ImageView) objArr[3], (LinearLayout) objArr[11], (AppCompatTextView) objArr[5], (AppCompatTextView) objArr[4], (ViewPager) objArr[8]);
        this.f6338v = -1L;
        this.f6329m.setTag(null);
        m5876a(view);
        m1715h();
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: b */
    protected void mo1717b() {
        synchronized (this) {
            long j = this.f6338v;
            this.f6338v = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    /* renamed from: c */
    public boolean mo1716c() {
        synchronized (this) {
            return this.f6338v != 0;
        }
    }

    /* renamed from: h */
    public void m1715h() {
        synchronized (this) {
            this.f6338v = 1L;
        }
        m5862e();
    }
}
