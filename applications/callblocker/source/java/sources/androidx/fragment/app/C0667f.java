package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.core.p025g.C0527f;
import androidx.lifecycle.AbstractC0889v;
/* renamed from: androidx.fragment.app.f */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/f.class */
public class C0667f {

    /* renamed from: a */
    private final AbstractC0669h<?> f2367a;

    private C0667f(AbstractC0669h<?> abstractC0669h) {
        this.f2367a = abstractC0669h;
    }

    /* renamed from: a */
    public static C0667f m19861a(AbstractC0669h<?> abstractC0669h) {
        return new C0667f((AbstractC0669h) C0527f.m20643a(abstractC0669h, "callbacks == null"));
    }

    /* renamed from: a */
    public View m19863a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f2367a.f2370b.onCreateView(view, str, context, attributeSet);
    }

    /* renamed from: a */
    public Fragment m19860a(String str) {
        return this.f2367a.f2370b.m19752b(str);
    }

    /* renamed from: a */
    public AbstractC0670i m19869a() {
        return this.f2367a.f2370b;
    }

    /* renamed from: a */
    public void m19868a(Configuration configuration) {
        this.f2367a.f2370b.m19796a(configuration);
    }

    /* renamed from: a */
    public void m19867a(Parcelable parcelable) {
        if (!(this.f2367a instanceof AbstractC0889v)) {
            throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
        }
        this.f2367a.f2370b.m19793a(parcelable);
    }

    /* renamed from: a */
    public void m19862a(Fragment fragment) {
        this.f2367a.f2370b.m19777a(this.f2367a, this.f2367a, fragment);
    }

    /* renamed from: a */
    public void m19859a(boolean z) {
        this.f2367a.f2370b.m19765a(z);
    }

    /* renamed from: a */
    public boolean m19866a(Menu menu) {
        return this.f2367a.f2370b.m19792a(menu);
    }

    /* renamed from: a */
    public boolean m19865a(Menu menu, MenuInflater menuInflater) {
        return this.f2367a.f2370b.m19791a(menu, menuInflater);
    }

    /* renamed from: a */
    public boolean m19864a(MenuItem menuItem) {
        return this.f2367a.f2370b.m19790a(menuItem);
    }

    /* renamed from: b */
    public void m19858b() {
        this.f2367a.f2370b.m19711o();
    }

    /* renamed from: b */
    public void m19857b(Menu menu) {
        this.f2367a.f2370b.m19761b(menu);
    }

    /* renamed from: b */
    public void m19855b(boolean z) {
        this.f2367a.f2370b.m19749b(z);
    }

    /* renamed from: b */
    public boolean m19856b(MenuItem menuItem) {
        return this.f2367a.f2370b.m19760b(menuItem);
    }

    /* renamed from: c */
    public Parcelable m19854c() {
        return this.f2367a.f2370b.m19713n();
    }

    /* renamed from: d */
    public void m19853d() {
        this.f2367a.f2370b.m19709p();
    }

    /* renamed from: e */
    public void m19852e() {
        this.f2367a.f2370b.m19707q();
    }

    /* renamed from: f */
    public void m19851f() {
        this.f2367a.f2370b.m19705r();
    }

    /* renamed from: g */
    public void m19850g() {
        this.f2367a.f2370b.m19703s();
    }

    /* renamed from: h */
    public void m19849h() {
        this.f2367a.f2370b.m19701t();
    }

    /* renamed from: i */
    public void m19848i() {
        this.f2367a.f2370b.m19699u();
    }

    /* renamed from: j */
    public void m19847j() {
        this.f2367a.f2370b.m19695w();
    }

    /* renamed from: k */
    public void m19846k() {
        this.f2367a.f2370b.m19693x();
    }

    /* renamed from: l */
    public boolean m19845l() {
        return this.f2367a.f2370b.m19719k();
    }
}
