package com.truecaller.insights.p168ui.p169qa.view;

import android.content.Context;
import android.os.Bundle;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p419m.p421b.AbstractC8510a;
import p193e.p194a.p437c.p438a.p446c.p448e.C8784a;
import p193e.p194a.p437c.p438a.p446c.p448e.C8789d;
import p193e.p194a.p437c.p438a.p494m.p495a.AbstractC9246a;
import p193e.p194a.p437c.p438a.p494m.p495a.C9248b;
import p193e.p194a.p437c.p438a.p494m.p495a.C9251c;
import p193e.p194a.p437c.p438a.p494m.p497c.C9293a;
import p193e.p194a.p437c.p438a.p494m.p497c.C9298b;
import p193e.p194a.p437c.p438a.p494m.p497c.C9303c0;
import p193e.p194a.p437c.p438a.p494m.p497c.C9309e;
import p193e.p194a.p437c.p438a.p494m.p497c.C9314f;
import p193e.p194a.p437c.p438a.p494m.p497c.C9322i;
import p193e.p194a.p437c.p438a.p494m.p497c.C9336o;
import p193e.p194a.p437c.p438a.p494m.p497c.C9345u;
import p193e.p194a.p437c.p438a.p494m.p497c.C9356w;
import p193e.p194a.p437c.p438a.p494m.p497c.C9364x;
import p193e.p194a.p437c.p438a.p494m.p497c.C9367z;
import p193e.p194a.p437c.p548h.p549k.AbstractC10261a;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p572l.p573a.AbstractC10452b;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/insights/ui/qa/view/InsightsQAActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.qa.view.InsightsQAActivity */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/qa/view/InsightsQAActivity.class */
public final class InsightsQAActivity extends h {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        Fragment fragment;
        C10480a.m26076E2(this);
        InsightsQAActivity.super.onCreate(bundle);
        if (bundle != null) {
            return;
        }
        String stringExtra = getIntent().getStringExtra("qaPageToOpen");
        String stringExtra2 = getIntent().getStringExtra("extras_param");
        if (stringExtra == null) {
            return;
        }
        if (!(AbstractC9246a.C9247a.f28130a != null)) {
            AbstractC8412c m15209q = C18334g0.m15209q(this);
            AbstractC10451a abstractC10451a = (AbstractC10451a) C22128a.m8726C1(AbstractC10451a.class, "EntryPointAccessors.from…htsComponent::class.java)");
            C8784a c8784a = new C8784a();
            AbstractC10261a abstractC10261a = (AbstractC10261a) C22128a.m8726C1(AbstractC10261a.class, "EntryPointAccessors.from…onsComponent::class.java)");
            AbstractC10452b abstractC10452b = (AbstractC10452b) C22128a.m8726C1(AbstractC10452b.class, "EntryPointAccessors.from…PayComponent::class.java)");
            AbstractC8510a abstractC8510a = (AbstractC8510a) C22128a.m8726C1(AbstractC8510a.class, "EntryPointAccessors.from…ntsComponent::class.java)");
            C9251c c9251c = new C9251c();
            C8789d c8789d = new C8789d();
            C25225a.m3846s(abstractC10451a, AbstractC10451a.class);
            C25225a.m3846s(m15209q, AbstractC8412c.class);
            C25225a.m3846s(abstractC10261a, AbstractC10261a.class);
            C25225a.m3846s(abstractC10452b, AbstractC10452b.class);
            C25225a.m3846s(abstractC8510a, AbstractC8510a.class);
            C9248b c9248b = new C9248b(c8784a, c9251c, c8789d, abstractC10451a, m15209q, abstractC10261a, abstractC10452b, abstractC8510a, null);
            l.d(c9248b, "DaggerBusinessInsightsQA…                 .build()");
            l.e(c9248b, "<set-?>");
            AbstractC9246a.C9247a.f28130a = c9248b;
        }
        switch (stringExtra.hashCode()) {
            case -1542764875:
                if (stringExtra.equals("FtsFragment")) {
                    fragment = new C9298b();
                    break;
                }
                Toast.makeText((Context) this, (CharSequence) "Please provide a valid QA_PAGE_TO_OPEN option to open the required page", 1).show();
                fragment = null;
                break;
            case -1160696077:
                if (stringExtra.equals("InsightsBrandSearchTester")) {
                    fragment = new C9293a();
                    break;
                }
                Toast.makeText((Context) this, (CharSequence) "Please provide a valid QA_PAGE_TO_OPEN option to open the required page", 1).show();
                fragment = null;
                break;
            case -562673557:
                if (stringExtra.equals("InsightsCategorizerSeedFetch")) {
                    fragment = new C9309e();
                    break;
                }
                Toast.makeText((Context) this, (CharSequence) "Please provide a valid QA_PAGE_TO_OPEN option to open the required page", 1).show();
                fragment = null;
                break;
            case -254198094:
                if (stringExtra.equals("InsightsAddressFiltersFragment")) {
                    Objects.requireNonNull(C9345u.f28398f);
                    if (stringExtra2 == null) {
                        throw new IllegalArgumentException("Address is null");
                    }
                    fragment = new C9345u();
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("address", stringExtra2);
                    fragment.setArguments(bundle2);
                    break;
                }
                Toast.makeText((Context) this, (CharSequence) "Please provide a valid QA_PAGE_TO_OPEN option to open the required page", 1).show();
                fragment = null;
                break;
            case -212132730:
                if (stringExtra.equals("InsightsReminders")) {
                    fragment = new C9356w();
                    break;
                }
                Toast.makeText((Context) this, (CharSequence) "Please provide a valid QA_PAGE_TO_OPEN option to open the required page", 1).show();
                fragment = null;
                break;
            case 577271001:
                if (stringExtra.equals("InsightsUpdatesClassifierSeedFetch")) {
                    fragment = new C9314f();
                    break;
                }
                Toast.makeText((Context) this, (CharSequence) "Please provide a valid QA_PAGE_TO_OPEN option to open the required page", 1).show();
                fragment = null;
                break;
            case 614306529:
                if (stringExtra.equals("InsightRowFFTester")) {
                    fragment = new C9364x();
                    break;
                }
                Toast.makeText((Context) this, (CharSequence) "Please provide a valid QA_PAGE_TO_OPEN option to open the required page", 1).show();
                fragment = null;
                break;
            case 1232706939:
                if (stringExtra.equals("TotalSmartCardsShownDialog")) {
                    fragment = new C9303c0();
                    break;
                }
                Toast.makeText((Context) this, (CharSequence) "Please provide a valid QA_PAGE_TO_OPEN option to open the required page", 1).show();
                fragment = null;
                break;
            case 1380045928:
                if (stringExtra.equals("InsightsMalanaSeed")) {
                    fragment = new C9336o();
                    break;
                }
                Toast.makeText((Context) this, (CharSequence) "Please provide a valid QA_PAGE_TO_OPEN option to open the required page", 1).show();
                fragment = null;
                break;
            case 2065857583:
                if (stringExtra.equals("InsightsSmsFeatureFilterTester")) {
                    fragment = new C9367z();
                    break;
                }
                Toast.makeText((Context) this, (CharSequence) "Please provide a valid QA_PAGE_TO_OPEN option to open the required page", 1).show();
                fragment = null;
                break;
            case 2141318274:
                if (stringExtra.equals("InsightsUpdatesClassifierTest")) {
                    fragment = new C9322i();
                    break;
                }
                Toast.makeText((Context) this, (CharSequence) "Please provide a valid QA_PAGE_TO_OPEN option to open the required page", 1).show();
                fragment = null;
                break;
            default:
                Toast.makeText((Context) this, (CharSequence) "Please provide a valid QA_PAGE_TO_OPEN option to open the required page", 1).show();
                fragment = null;
                break;
        }
        if (fragment == null) {
            return;
        }
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        c26907a.m1120m(16908290, fragment, null);
        c26907a.mo1127f();
    }
}
