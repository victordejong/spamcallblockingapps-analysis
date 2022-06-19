package p193e.p194a.p1195s;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.truecaller.C2752R;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Provider;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1195s.p1196a.C19997a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b!\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000b\u0010\tJ\u000f\u0010\f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\f\u0010\tJ\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u000e\u0010\u000fR.\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00010\u00108\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u0011\u0010\u0012\u0012\u0004\b\u0017\u0010\t\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006\""}, d2 = {"Le/a/s/c;", "Landroidx/fragment/app/Fragment;", "Le/a/s/f;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "pv", "()V", "p2", "onResume", "onDestroyView", "fragment", "QA", "(Landroidx/fragment/app/Fragment;)V", "Ljavax/inject/Provider;", "f", "Ljavax/inject/Provider;", "getCallAssistantCallScreeningFragment", "()Ljavax/inject/Provider;", "setCallAssistantCallScreeningFragment", "(Ljavax/inject/Provider;)V", "getCallAssistantCallScreeningFragment$annotations", "callAssistantCallScreeningFragment", "Le/a/s/g;", "e", "Le/a/s/g;", "getPresenter", "()Le/a/s/g;", "setPresenter", "(Le/a/s/g;)V", "presenter", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.s.c */
/* loaded from: classes6-dex2jar.jar:e/a/s/c.class */
public final class C20010c extends AbstractC20020j implements AbstractC20014f {
    @Inject

    /* renamed from: e */
    public C20015g f56541e;
    @Inject

    /* renamed from: f */
    public Provider<Fragment> f56542f;

    public C20010c() {
        super(C2752R.layout.fragment_call_assistant);
    }

    /* renamed from: QA */
    public final void m11666QA(Fragment fragment) {
        C26907a c26907a = new C26907a(getChildFragmentManager());
        c26907a.f75332p = true;
        c26907a.m1120m(2131363814, fragment, null);
        c26907a.mo1126g();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C20010c.super.onCreate(bundle);
        C20015g c20015g = this.f56541e;
        if (c20015g == null) {
            l.l("presenter");
            throw null;
        }
        Objects.requireNonNull(c20015g);
        l.e(this, "presenterView");
        c20015g.f57683a = this;
        c20015g.m11662Hj();
    }

    public void onDestroyView() {
        C20015g c20015g = this.f56541e;
        if (c20015g == null) {
            l.l("presenter");
            throw null;
        }
        c20015g.f57683a = null;
        C20010c.super.onDestroyView();
    }

    public void onResume() {
        C20010c.super.onResume();
        C20015g c20015g = this.f56541e;
        if (c20015g != null) {
            c20015g.m11662Hj();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1195s.AbstractC20014f
    /* renamed from: p2 */
    public void mo11664p2() {
        m11666QA(new C19997a());
    }

    @Override // p193e.p194a.p1195s.AbstractC20014f
    /* renamed from: pv */
    public void mo11663pv() {
        Provider<Fragment> provider = this.f56542f;
        if (provider == null) {
            l.l("callAssistantCallScreeningFragment");
            throw null;
        }
        Object obj = provider.get();
        l.d(obj, "callAssistantCallScreeningFragment.get()");
        m11666QA((Fragment) obj);
    }
}
