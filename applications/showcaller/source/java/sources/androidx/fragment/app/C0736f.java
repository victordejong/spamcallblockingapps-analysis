package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.lifecycle.AbstractC0819u;
import p020b.p041h.p049k.C1597h;
/* renamed from: androidx.fragment.app.f */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/f.class */
public class C0736f {

    /* renamed from: a */
    private final AbstractC0738h<?> f3503a;

    private C0736f(AbstractC0738h<?> abstractC0738h) {
        this.f3503a = abstractC0738h;
    }

    /* renamed from: b */
    public static C0736f m32623b(AbstractC0738h<?> abstractC0738h) {
        return new C0736f((AbstractC0738h) C1597h.m29658f(abstractC0738h, "callbacks == null"));
    }

    /* renamed from: a */
    public void m32624a(Fragment fragment) {
        AbstractC0738h<?> abstractC0738h = this.f3503a;
        abstractC0738h.f3509h.m32782j(abstractC0738h, abstractC0738h, fragment);
    }

    /* renamed from: c */
    public void m32622c() {
        this.f3503a.f3509h.m32743y();
    }

    /* renamed from: d */
    public void m32621d(Configuration configuration) {
        this.f3503a.f3509h.m32861A(configuration);
    }

    /* renamed from: e */
    public boolean m32620e(MenuItem menuItem) {
        return this.f3503a.f3509h.m32859B(menuItem);
    }

    /* renamed from: f */
    public void m32619f() {
        this.f3503a.f3509h.m32857C();
    }

    /* renamed from: g */
    public boolean m32618g(Menu menu, MenuInflater menuInflater) {
        return this.f3503a.f3509h.m32855D(menu, menuInflater);
    }

    /* renamed from: h */
    public void m32617h() {
        this.f3503a.f3509h.m32853E();
    }

    /* renamed from: i */
    public void m32616i() {
        this.f3503a.f3509h.m32849G();
    }

    /* renamed from: j */
    public void m32615j(boolean z) {
        this.f3503a.f3509h.m32847H(z);
    }

    /* renamed from: k */
    public boolean m32614k(MenuItem menuItem) {
        return this.f3503a.f3509h.m32843J(menuItem);
    }

    /* renamed from: l */
    public void m32613l(Menu menu) {
        this.f3503a.f3509h.m32841K(menu);
    }

    /* renamed from: m */
    public void m32612m() {
        this.f3503a.f3509h.m32837M();
    }

    /* renamed from: n */
    public void m32611n(boolean z) {
        this.f3503a.f3509h.m32835N(z);
    }

    /* renamed from: o */
    public boolean m32610o(Menu menu) {
        return this.f3503a.f3509h.m32833O(menu);
    }

    /* renamed from: p */
    public void m32609p() {
        this.f3503a.f3509h.m32829Q();
    }

    /* renamed from: q */
    public void m32608q() {
        this.f3503a.f3509h.m32827R();
    }

    /* renamed from: r */
    public void m32607r() {
        this.f3503a.f3509h.m32823T();
    }

    /* renamed from: s */
    public boolean m32606s() {
        return this.f3503a.f3509h.m32808a0(true);
    }

    /* renamed from: t */
    public FragmentManager m32605t() {
        return this.f3503a.f3509h;
    }

    /* renamed from: u */
    public void m32604u() {
        this.f3503a.f3509h.m32824S0();
    }

    /* renamed from: v */
    public View m32603v(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f3503a.f3509h.m32748v0().onCreateView(view, str, context, attributeSet);
    }

    /* renamed from: w */
    public void m32602w(Parcelable parcelable) {
        AbstractC0738h<?> abstractC0738h = this.f3503a;
        if (abstractC0738h instanceof AbstractC0819u) {
            abstractC0738h.f3509h.m32792f1(parcelable);
            return;
        }
        throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
    }

    /* renamed from: x */
    public Parcelable m32601x() {
        return this.f3503a.f3509h.m32786h1();
    }
}
