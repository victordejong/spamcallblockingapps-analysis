package com.truecaller.bizmon.governmentServices.p146ui.activities;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.MenuItem;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.airbnb.deeplinkdispatch.DeepLink;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p294b.p345k.p347b.p349b.C7981b;
import p193e.p194a.p294b.p345k.p351d.p353b.C8003a;
import p193e.p194a.p294b.p345k.p351d.p353b.C8009c;
import p193e.p194a.p294b.p357o.p358a.AbstractC8117a;
import p193e.p194a.p294b.p357o.p360c.p362b.C8143a;
import p193e.p194a.p294b.p357o.p364e.AbstractC8161i;
import p193e.p194a.p294b.p357o.p364e.C8162j;
import p193e.p194a.p294b.p357o.p365f.p366a.AbstractC8165c;
import p193e.p194a.p294b.p357o.p365f.p369d.C8186a;
import p193e.p194a.p294b.p357o.p365f.p369d.C8192c;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018�� 92\u00020\u00012\u00020\u00022\u00020\u0003:\u0001:B\u0007¢\u0006\u0004\b8\u0010*J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000e\u0010\fJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ'\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0011\u0010!\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b!\u0010\"J\u0011\u0010#\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b#\u0010\"J\u0017\u0010'\u001a\u00020&2\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0006H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0006H\u0016¢\u0006\u0004\b+\u0010*J\u0019\u0010.\u001a\u00020\u00062\b\u0010-\u001a\u0004\u0018\u00010,H\u0002¢\u0006\u0004\b.\u0010/R\"\u00107\u001a\u0002008\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106¨\u0006;"}, d2 = {"Lcom/truecaller/bizmon/governmentServices/ui/activities/GovernmentServicesActivity;", "Ln3/b/a/h;", "Le/a/b/o/e/i;", "Le/a/b/o/a/a;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "source", "R", "(Ljava/lang/String;)V", "stateName", "F2", "Le/a/b/o/c/b/a;", "district", "w4", "(Le/a/b/o/c/b/a;)V", "", "statedID", "x", "(J)V", "Le/a/b/k/b/b/b;", "y3", "(Le/a/b/k/b/b/b;)V", "districtId", "districtName", "X", "(JLjava/lang/String;)V", "stateId", "F", "(JJLjava/lang/String;)V", "getSource", "()Ljava/lang/String;", "C5", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "onBackPressed", "()V", "i8", "Landroidx/fragment/app/Fragment;", "fragment", "pa", "(Landroidx/fragment/app/Fragment;)V", "Le/a/b/o/e/j;", "d", "Le/a/b/o/e/j;", "getPresenter", "()Le/a/b/o/e/j;", "setPresenter", "(Le/a/b/o/e/j;)V", "presenter", "<init>", "e", "a", "bizmon_release"}, k = 1, mv = {1, 4, 1})
@DeepLink({"truecaller://covid_directory"})
/* renamed from: com.truecaller.bizmon.governmentServices.ui.activities.GovernmentServicesActivity */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/governmentServices/ui/activities/GovernmentServicesActivity.class */
public final class GovernmentServicesActivity extends AbstractC8165c implements AbstractC8161i, AbstractC8117a {

    /* renamed from: e */
    public static final C3491a f10299e = new C3491a(null);
    @Inject

    /* renamed from: d */
    public C8162j f10300d;

    /* renamed from: com.truecaller.bizmon.governmentServices.ui.activities.GovernmentServicesActivity$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/governmentServices/ui/activities/GovernmentServicesActivity$a.class */
    public static final class C3491a {
        public C3491a(f fVar) {
        }

        /* renamed from: a */
        public final Intent m35874a(Context context, String str) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(str, "source");
            Intent intent = new Intent(context, GovernmentServicesActivity.class);
            intent.putExtra("source", str);
            return intent;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8161i
    /* renamed from: C5 */
    public String mo28854C5() {
        String str = null;
        if (getIntent().getBooleanExtra(DeepLink.IS_DEEP_LINK, false)) {
            Intent intent = getIntent();
            str = null;
            if (intent != null) {
                Uri data = intent.getData();
                str = null;
                if (data != null) {
                    str = data.toString();
                }
            }
        }
        return str;
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8161i
    /* renamed from: F */
    public void mo28853F(long j, long j2, String str) {
        l.e(str, "districtName");
        Objects.requireNonNull(C8192c.f25327l);
        l.e(str, "districtName");
        Bundle bundle = new Bundle();
        bundle.putLong("extra_district_id", j);
        bundle.putLong("extra_state_id", j2);
        bundle.putString("extra_district_name", str);
        C8192c c8192c = new C8192c();
        c8192c.setArguments(bundle);
        m35875pa(c8192c);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8161i
    /* renamed from: F2 */
    public void mo28852F2(String str) {
        l.e(str, "stateName");
        Objects.requireNonNull(C8186a.f25315m);
        l.e(str, "stateName");
        Bundle bundle = new Bundle();
        bundle.putString("state_name", str);
        C8186a c8186a = new C8186a();
        c8186a.setArguments(bundle);
        m35875pa(c8186a);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8161i
    /* renamed from: R */
    public void mo28851R(String str) {
        l.e(str, "source");
        Objects.requireNonNull(C8009c.f24718m);
        l.e(str, "source");
        Bundle bundle = new Bundle();
        bundle.putString("source", str);
        C8009c c8009c = new C8009c();
        c8009c.setArguments(bundle);
        m35875pa(c8009c);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8161i
    /* renamed from: X */
    public void mo28850X(long j, String str) {
        l.e(str, "districtName");
        Objects.requireNonNull(C8003a.f24707l);
        l.e(str, "districtName");
        Bundle bundle = new Bundle();
        bundle.putLong("extra_district_id", j);
        bundle.putString("extra_district_name", str);
        C8003a c8003a = new C8003a();
        c8003a.setArguments(bundle);
        m35875pa(c8003a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8161i
    public String getSource() {
        Intent intent = getIntent();
        return intent != null ? intent.getStringExtra("source") : null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8161i
    /* renamed from: i8 */
    public void mo28849i8() {
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onBackPressed() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        if (supportFragmentManager.m42940M() <= 1) {
            finish();
        } else {
            getSupportFragmentManager().m42921c0();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        GovernmentServicesActivity.super.onCreate(bundle);
        C17422k.m16066m0(this, true);
        setContentView(C3478R.layout.activity_government_services);
        C8162j c8162j = this.f10300d;
        String str = null;
        if (c8162j == null) {
            l.l("presenter");
            throw null;
        }
        Objects.requireNonNull(c8162j);
        l.e(this, "presenterView");
        c8162j.f57683a = this;
        String source = getSource();
        if (source != null) {
            if (source.hashCode() == -1726517009 && source.equals("gov_services")) {
                mo28852F2("Karnataka");
            } else {
                mo28851R(source);
            }
        }
        String mo28854C5 = mo28854C5();
        if (mo28854C5 == null) {
            return;
        }
        if (l.a(mo28854C5, "truecaller://covid_directory")) {
            str = mo28854C5;
        }
        if (str == null) {
            return;
        }
        if (c8162j.f25283f.m11003B().isEnabled()) {
            mo28851R("deeplink");
        } else {
            mo28849i8();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        l.e(menuItem, "item");
        if (menuItem.getItemId() != 16908332) {
            z = GovernmentServicesActivity.super.onOptionsItemSelected(menuItem);
        } else {
            onBackPressed();
            z = true;
        }
        return z;
    }

    /* renamed from: pa */
    public final void m35875pa(Fragment fragment) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        int i = C3478R.C3480id.frameLayout;
        if (supportFragmentManager.m42943J(i) == null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            c26907a.mo1122k(i, fragment, fragment.getClass().getSimpleName(), 1);
            c26907a.m1128e(null);
            c26907a.mo1126g();
            return;
        }
        C26907a c26907a2 = new C26907a(getSupportFragmentManager());
        c26907a2.m1120m(i, fragment, fragment.getClass().getSimpleName());
        l.d(c26907a2, "supportFragmentManager.b…t::class.java.simpleName)");
        c26907a2.m1128e(null);
        c26907a2.mo1126g();
    }

    @Override // p193e.p194a.p294b.p357o.p358a.AbstractC8117a
    /* renamed from: w4 */
    public void mo28908w4(C8143a c8143a) {
        l.e(c8143a, "district");
        C8162j c8162j = this.f10300d;
        if (c8162j == null) {
            l.l("presenter");
            throw null;
        }
        l.e(c8143a, "district");
        AbstractC8161i abstractC8161i = (AbstractC8161i) c8162j.f57683a;
        if (abstractC8161i == null) {
            return;
        }
        abstractC8161i.mo28853F(c8143a.f25221a, c8143a.f25224d, c8143a.f25222b);
    }

    @Override // p193e.p194a.p294b.p357o.p358a.AbstractC8117a
    /* renamed from: x */
    public void mo28907x(long j) {
        C8162j c8162j = this.f10300d;
        if (c8162j == null) {
            l.l("presenter");
            throw null;
        }
        AbstractC8161i abstractC8161i = (AbstractC8161i) c8162j.f57683a;
        if (abstractC8161i == null) {
            return;
        }
        abstractC8161i.mo28853F(0L, j, "");
    }

    @Override // p193e.p194a.p294b.p357o.p358a.AbstractC8117a
    /* renamed from: y3 */
    public void mo28906y3(C7981b c7981b) {
        l.e(c7981b, "district");
        C8162j c8162j = this.f10300d;
        if (c8162j == null) {
            l.l("presenter");
            throw null;
        }
        l.e(c7981b, "district");
        AbstractC8161i abstractC8161i = (AbstractC8161i) c8162j.f57683a;
        if (abstractC8161i == null) {
            return;
        }
        abstractC8161i.mo28850X(c7981b.f24651a, c7981b.f24652b);
    }
}
