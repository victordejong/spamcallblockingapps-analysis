package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.lifecycle.AbstractC0373v;
import d.h.l.h;
/* renamed from: androidx.fragment.app.e */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/e.class */
public class C0320e {

    /* renamed from: a */
    private final g<?> f1887a;

    private C0320e(g<?> gVar) {
        this.f1887a = gVar;
    }

    /* renamed from: b */
    public static C0320e m13295b(g<?> gVar) {
        h.d(gVar, "callbacks == null");
        return new C0320e(gVar);
    }

    /* renamed from: a */
    public void m13296a(Fragment fragment) {
        AbstractC0319d dVar = this.f1887a;
        ((g) dVar).e.m13190g(dVar, dVar, fragment);
    }

    /* renamed from: c */
    public void m13294c() {
        this.f1887a.e.m13168r();
    }

    /* renamed from: d */
    public void m13293d(Configuration configuration) {
        this.f1887a.e.m13166s(configuration);
    }

    /* renamed from: e */
    public boolean m13292e(MenuItem menuItem) {
        return this.f1887a.e.m13164t(menuItem);
    }

    /* renamed from: f */
    public void m13291f() {
        this.f1887a.e.m13162u();
    }

    /* renamed from: g */
    public boolean m13290g(Menu menu, MenuInflater menuInflater) {
        return this.f1887a.e.m13160v(menu, menuInflater);
    }

    /* renamed from: h */
    public void m13289h() {
        this.f1887a.e.m13158w();
    }

    /* renamed from: i */
    public void m13288i() {
        this.f1887a.e.m13154y();
    }

    /* renamed from: j */
    public void m13287j(boolean z) {
        this.f1887a.e.m13152z(z);
    }

    /* renamed from: k */
    public boolean m13286k(MenuItem menuItem) {
        return this.f1887a.e.m13253A(menuItem);
    }

    /* renamed from: l */
    public void m13285l(Menu menu) {
        this.f1887a.e.m13251B(menu);
    }

    /* renamed from: m */
    public void m13284m() {
        this.f1887a.e.m13247D();
    }

    /* renamed from: n */
    public void m13283n(boolean z) {
        this.f1887a.e.m13245E(z);
    }

    /* renamed from: o */
    public boolean m13282o(Menu menu) {
        return this.f1887a.e.m13243F(menu);
    }

    /* renamed from: p */
    public void m13281p() {
        this.f1887a.e.m13239H();
    }

    /* renamed from: q */
    public void m13280q() {
        this.f1887a.e.m13237I();
    }

    /* renamed from: r */
    public void m13279r() {
        this.f1887a.e.m13233K();
    }

    /* renamed from: s */
    public boolean m13278s() {
        return this.f1887a.e.m13221Q(true);
    }

    /* renamed from: t */
    public Fragment m13277t(String str) {
        return this.f1887a.e.m13203Z(str);
    }

    /* renamed from: u */
    public AbstractC0325j m13276u() {
        return this.f1887a.e;
    }

    /* renamed from: v */
    public void m13275v() {
        this.f1887a.e.m13248C0();
    }

    /* renamed from: w */
    public View m13274w(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f1887a.e.m13187h0().onCreateView(view, str, context, attributeSet);
    }

    /* renamed from: x */
    public void m13273x(Parcelable parcelable) {
        g<?> gVar = this.f1887a;
        if (gVar instanceof AbstractC0373v) {
            gVar.e.m13224O0(parcelable);
            return;
        }
        throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
    }

    /* renamed from: y */
    public Parcelable m13272y() {
        return this.f1887a.e.m13220Q0();
    }
}
