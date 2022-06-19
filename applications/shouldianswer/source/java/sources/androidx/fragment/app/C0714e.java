package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.core.p022f.C0502e;
import androidx.lifecycle.AbstractC0927y;
/* renamed from: androidx.fragment.app.e */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/e.class */
public class C0714e {

    /* renamed from: a */
    private final AbstractC0716g<?> f2329a;

    private C0714e(AbstractC0716g<?> abstractC0716g) {
        this.f2329a = abstractC0716g;
    }

    /* renamed from: a */
    public static C0714e m5653a(AbstractC0716g<?> abstractC0716g) {
        return new C0714e((AbstractC0716g) C0502e.m6461a(abstractC0716g, "callbacks == null"));
    }

    /* renamed from: a */
    public View m5655a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f2329a.f2332b.onCreateView(view, str, context, attributeSet);
    }

    /* renamed from: a */
    public Fragment m5652a(String str) {
        return this.f2329a.f2332b.m5543b(str);
    }

    /* renamed from: a */
    public AbstractC0717h m5661a() {
        return this.f2329a.f2332b;
    }

    /* renamed from: a */
    public void m5660a(Configuration configuration) {
        this.f2329a.f2332b.m5585a(configuration);
    }

    /* renamed from: a */
    public void m5659a(Parcelable parcelable) {
        AbstractC0716g<?> abstractC0716g = this.f2329a;
        if (abstractC0716g instanceof AbstractC0927y) {
            abstractC0716g.f2332b.m5582a(parcelable);
            return;
        }
        throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
    }

    /* renamed from: a */
    public void m5654a(Fragment fragment) {
        LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i = this.f2329a.f2332b;
        AbstractC0716g<?> abstractC0716g = this.f2329a;
        layoutInflater$Factory2C0720i.m5566a(abstractC0716g, abstractC0716g, fragment);
    }

    /* renamed from: a */
    public void m5651a(boolean z) {
        this.f2329a.f2332b.m5556a(z);
    }

    /* renamed from: a */
    public boolean m5658a(Menu menu) {
        return this.f2329a.f2332b.m5581a(menu);
    }

    /* renamed from: a */
    public boolean m5657a(Menu menu, MenuInflater menuInflater) {
        return this.f2329a.f2332b.m5580a(menu, menuInflater);
    }

    /* renamed from: a */
    public boolean m5656a(MenuItem menuItem) {
        return this.f2329a.f2332b.m5579a(menuItem);
    }

    /* renamed from: b */
    public void m5650b() {
        this.f2329a.f2332b.m5502o();
    }

    /* renamed from: b */
    public void m5649b(Menu menu) {
        this.f2329a.f2332b.m5552b(menu);
    }

    /* renamed from: b */
    public void m5647b(boolean z) {
        this.f2329a.f2332b.m5540b(z);
    }

    /* renamed from: b */
    public boolean m5648b(MenuItem menuItem) {
        return this.f2329a.f2332b.m5551b(menuItem);
    }

    /* renamed from: c */
    public Parcelable m5646c() {
        return this.f2329a.f2332b.m5504n();
    }

    /* renamed from: d */
    public void m5645d() {
        this.f2329a.f2332b.m5500p();
    }

    /* renamed from: e */
    public void m5644e() {
        this.f2329a.f2332b.m5498q();
    }

    /* renamed from: f */
    public void m5643f() {
        this.f2329a.f2332b.m5496r();
    }

    /* renamed from: g */
    public void m5642g() {
        this.f2329a.f2332b.m5494s();
    }

    /* renamed from: h */
    public void m5641h() {
        this.f2329a.f2332b.m5492t();
    }

    /* renamed from: i */
    public void m5640i() {
        this.f2329a.f2332b.m5490u();
    }

    /* renamed from: j */
    public void m5639j() {
        this.f2329a.f2332b.m5486w();
    }

    /* renamed from: k */
    public void m5638k() {
        this.f2329a.f2332b.m5484x();
    }

    /* renamed from: l */
    public boolean m5637l() {
        return this.f2329a.f2332b.m5510k();
    }
}
