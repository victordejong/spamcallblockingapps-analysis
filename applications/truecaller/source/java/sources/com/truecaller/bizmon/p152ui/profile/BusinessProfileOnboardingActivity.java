package com.truecaller.bizmon.p152ui.profile;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import java.util.HashMap;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p294b.p331b.p334c.View$OnClickListenerC7878e;
import p193e.p194a.p294b.p331b.p334c.p335u.C7905c;
import p193e.p194a.p294b.p355m.C8108w;
import s1.g;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018��  2\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u001f\u0010\u000fJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R(\u0010\u0010\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\b\u0010\t\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001d\u0010\u0016\u001a\u00020\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006!"}, d2 = {"Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Le/a/u3/g;", "a", "Le/a/u3/g;", "getFeaturesRegistry", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "getFeaturesRegistry$annotations", "()V", "featuresRegistry", "Le/a/b/m/w;", AbstractC2405c.f7629a, "Ls1/g;", "pa", "()Le/a/b/m/w;", "binding", "Le/a/q2/a;", C22021b.f61237c, "Le/a/q2/a;", "getAnalytics", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "<init>", "d", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.bizmon.ui.profile.BusinessProfileOnboardingActivity */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity.class */
public final class BusinessProfileOnboardingActivity extends h {

    /* renamed from: d */
    public static final C3529b f10393d = new C3529b(null);
    @Inject

    /* renamed from: a */
    public C20592g f10394a;
    @Inject

    /* renamed from: b */
    public AbstractC19462a f10395b;

    /* renamed from: c */
    public final g f10396c = C25225a.m3982O1(s1.h.c, new C3528a(this));

    /* renamed from: com.truecaller.bizmon.ui.profile.BusinessProfileOnboardingActivity$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity$a.class */
    public static final class C3528a extends m implements a<C8108w> {

        /* renamed from: b */
        public final /* synthetic */ h f10397b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3528a(h hVar) {
            super(0);
            this.f10397b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f10397b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C3478R.layout.business_profile_activity_onboarding, (ViewGroup) null, false);
            int i = C3478R.C3480id.continueButton;
            Button button = (Button) inflate.findViewById(i);
            if (button != null) {
                i = C3478R.C3480id.toolbar;
                Toolbar toolbar = (Toolbar) inflate.findViewById(i);
                if (toolbar != null) {
                    return new C8108w((FrameLayout) inflate, button, toolbar);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.BusinessProfileOnboardingActivity$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity$b.class */
    public static final class C3529b {
        public C3529b(f fVar) {
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.BusinessProfileOnboardingActivity$c */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity$c.class */
    public static final class View$OnClickListenerC3530c implements View.OnClickListener {
        public View$OnClickListenerC3530c() {
            BusinessProfileOnboardingActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [android.content.Context, com.truecaller.bizmon.ui.profile.BusinessProfileOnboardingActivity, java.lang.Object, android.app.Activity] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ?? r0 = BusinessProfileOnboardingActivity.this;
            C3529b c3529b = BusinessProfileOnboardingActivity.f10393d;
            boolean booleanExtra = r0.getIntent().getBooleanExtra("arg_from_wizard", false);
            boolean booleanExtra2 = r0.getIntent().getBooleanExtra("arg_migrating", false);
            l.e((Object) r0, AnalyticsConstants.CONTEXT);
            Intent intent = new Intent((Context) r0, CreateBusinessProfileActivity.class);
            intent.putExtra("arg_from_wizard", booleanExtra);
            intent.putExtra("arg_editing", false);
            intent.putExtra("arg_migrating", booleanExtra2);
            intent.setFlags(33554432);
            r0.startActivity(intent);
            r0.finish();
        }
    }

    /* renamed from: qa */
    public static final Intent m35832qa(Context context, boolean z) {
        l.e(context, AnalyticsConstants.CONTEXT);
        Intent intent = new Intent(context, BusinessProfileOnboardingActivity.class);
        intent.putExtra("arg_from_wizard", z);
        intent.putExtra("arg_migrating", false);
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16064n0(this, false, 1);
        BusinessProfileOnboardingActivity.super.onCreate(bundle);
        C8108w m35833pa = m35833pa();
        l.d(m35833pa, "binding");
        setContentView(m35833pa.f25150a);
        C7905c c7905c = (C7905c) C18334g0.m15217m(this);
        C20592g mo12343i5 = c7905c.f24504a.mo12343i5();
        Objects.requireNonNull(mo12343i5, "Cannot return null from a non-@Nullable component method");
        this.f10394a = mo12343i5;
        AbstractC19462a mo12776C4 = c7905c.f24505b.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        this.f10395b = mo12776C4;
        C20592g c20592g = this.f10394a;
        if (c20592g == null) {
            l.l("featuresRegistry");
            throw null;
        } else if (!c20592g.m10945w().isEnabled()) {
            finish();
        } else {
            if (getIntent().getBooleanExtra("arg_from_wizard", false)) {
                AbstractC19462a abstractC19462a = this.f10395b;
                if (abstractC19462a == null) {
                    l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                    throw null;
                }
                HashMap hashMap = new HashMap();
                hashMap.put("Action", "BusinessProfileOnboarding");
                AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("WizardAction", null, hashMap, null);
                l.d(c19505a, "AnalyticsEvent.Builder(W…                 .build()");
                abstractC19462a.mo13271e(c19505a);
            }
            setSupportActionBar(m35833pa().f25152c);
            AbstractC25393a supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.mo3553n(true);
            }
            AbstractC25393a supportActionBar2 = getSupportActionBar();
            if (supportActionBar2 != null) {
                supportActionBar2.mo3552o(true);
            }
            m35833pa().f25152c.setNavigationOnClickListener(new View$OnClickListenerC7878e(this));
            m35833pa().f25151b.setOnClickListener(new View$OnClickListenerC3530c());
        }
    }

    /* renamed from: pa */
    public final C8108w m35833pa() {
        return (C8108w) this.f10396c.getValue();
    }
}
