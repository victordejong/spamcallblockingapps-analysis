package p012b.p063m.p064a;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.fragment.app.Fragment;
import p012b.p042i.p053o.C0948h;
import p012b.p068o.AbstractC1126s;
/* renamed from: b.m.a.d */
/* loaded from: classes-dex2jar.jar:b/m/a/d.class */
public class C1056d {

    /* renamed from: a */
    public final AbstractC1058f<?> f4433a;

    public C1056d(AbstractC1058f<?> fVar) {
        this.f4433a = fVar;
    }

    /* renamed from: a */
    public static C1056d m34939a(AbstractC1058f<?> fVar) {
        C0948h.m35441a(fVar, "callbacks == null");
        return new C1056d(fVar);
    }

    /* renamed from: a */
    public View m34941a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f4433a.f4439e.onCreateView(view, str, context, attributeSet);
    }

    /* renamed from: a */
    public Fragment m34938a(String str) {
        return this.f4433a.f4439e.m34829b(str);
    }

    /* renamed from: a */
    public void m34947a() {
        this.f4433a.f4439e.m34796k();
    }

    /* renamed from: a */
    public void m34946a(Configuration configuration) {
        this.f4433a.f4439e.m34871a(configuration);
    }

    /* renamed from: a */
    public void m34945a(Parcelable parcelable) {
        AbstractC1058f<?> fVar = this.f4433a;
        if (fVar instanceof AbstractC1126s) {
            fVar.f4439e.m34868a(parcelable);
            return;
        }
        throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
    }

    /* renamed from: a */
    public void m34944a(Menu menu) {
        this.f4433a.f4439e.m34867a(menu);
    }

    /* renamed from: a */
    public void m34940a(Fragment fragment) {
        AbstractC1058f<?> fVar = this.f4433a;
        fVar.f4439e.m34852a(fVar, fVar, fragment);
    }

    /* renamed from: a */
    public void m34937a(boolean z) {
        this.f4433a.f4439e.m34842a(z);
    }

    /* renamed from: a */
    public boolean m34943a(Menu menu, MenuInflater menuInflater) {
        return this.f4433a.f4439e.m34866a(menu, menuInflater);
    }

    /* renamed from: a */
    public boolean m34942a(MenuItem menuItem) {
        return this.f4433a.f4439e.m34865a(menuItem);
    }

    /* renamed from: b */
    public void m34936b() {
        this.f4433a.f4439e.m34794l();
    }

    /* renamed from: b */
    public void m34933b(boolean z) {
        this.f4433a.f4439e.m34826b(z);
    }

    /* renamed from: b */
    public boolean m34935b(Menu menu) {
        return this.f4433a.f4439e.m34838b(menu);
    }

    /* renamed from: b */
    public boolean m34934b(MenuItem menuItem) {
        return this.f4433a.f4439e.m34837b(menuItem);
    }

    /* renamed from: c */
    public void m34932c() {
        this.f4433a.f4439e.m34792m();
    }

    /* renamed from: d */
    public void m34931d() {
        this.f4433a.f4439e.m34788o();
    }

    /* renamed from: e */
    public void m34930e() {
        this.f4433a.f4439e.m34786p();
    }

    /* renamed from: f */
    public void m34929f() {
        this.f4433a.f4439e.m34782r();
    }

    /* renamed from: g */
    public void m34928g() {
        this.f4433a.f4439e.m34780s();
    }

    /* renamed from: h */
    public void m34927h() {
        this.f4433a.f4439e.m34778t();
    }

    /* renamed from: i */
    public boolean m34926i() {
        return this.f4433a.f4439e.m34772w();
    }

    /* renamed from: j */
    public AbstractC1059g m34925j() {
        return this.f4433a.f4439e;
    }

    /* renamed from: k */
    public void m34924k() {
        this.f4433a.f4439e.m34884D();
    }

    /* renamed from: l */
    public Parcelable m34923l() {
        return this.f4433a.f4439e.m34882F();
    }
}
