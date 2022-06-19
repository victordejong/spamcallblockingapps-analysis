package com.truecaller.p183ui;

import android.content.Intent;
import android.os.Bundle;
import com.truecaller.C2752R;
import com.truecaller.common.C3656R;
import com.truecaller.common.tag.TagService;
import com.truecaller.log.AssertionUtil;
import com.truecaller.referral.ReferralManager;
import com.truecaller.wizard.WizardVerificationMode;
import javax.inject.Inject;
import javax.inject.Provider;
import o3.a;
import org.apache.avro.AvroRuntimeException;
import p1727n3.p1807k.p1808a.AbstractServiceC26431i;
import p1727n3.p1807k.p1808a.C26458x;
import p193e.p194a.p1050l5.p1051a.C17629l0;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1159q4.C19651l0;
import p193e.p194a.p1164r.p1170c.AbstractC19749u;
import p193e.p194a.p1164r.p1173e.AbstractC19756b;
import p193e.p194a.p1164r.p1175q.AbstractC19763h;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p682e.AbstractC13255f1;
import p193e.p194a.p682e.C12864a2;
/* renamed from: com.truecaller.ui.WizardActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/WizardActivity.class */
public class WizardActivity extends AbstractC13255f1 {
    @Inject

    /* renamed from: j */
    public Provider<AbstractC19854f<AbstractC19463a0>> f15675j;
    @Inject

    /* renamed from: k */
    public Provider<AbstractC8541a> f15676k;
    @Inject

    /* renamed from: l */
    public AbstractC19763h f15677l;
    @Inject

    /* renamed from: m */
    public AbstractC19756b f15678m;
    @Inject

    /* renamed from: n */
    public a<AbstractC19749u> f15679n;
    @Inject

    /* renamed from: o */
    public Provider<WizardVerificationMode> f15680o;

    /* renamed from: Ja */
    public AbstractC8541a m34550Ja() {
        return (AbstractC8541a) this.f15676k.get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        WizardActivity.super.onCreate(bundle);
        setResult(0);
        int i = C19651l0.f54576d;
        ReferralManager m13085OA = C19651l0.m13085OA(getSupportFragmentManager(), "ReferralManagerImpl");
        if (m13085OA != null) {
            ((C19651l0) m13085OA).f54579c.m13069Hj(getApplicationContext());
        }
        if (getIntent().getStringExtra("EXTRA_REG_NUDGE") != null) {
            C18334g0.m15276B0("signUpOrigin", "notificationRegNudge");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ra */
    public void m34549ra() {
        WizardActivity.super.ra();
        setResult(-1);
        try {
            String stringExtra = getIntent().getStringExtra("EXTRA_REG_NUDGE");
            if (stringExtra != null) {
                AbstractC19463a0 abstractC19463a0 = (AbstractC19463a0) ((AbstractC19854f) this.f15675j.get()).mo11854a();
                C17629l0.C17631b m15911a = C17629l0.m15911a();
                m15911a.m15908c("RegistrationNudge");
                m15911a.m15909b(stringExtra);
                abstractC19463a0.mo13111a(m15911a.build());
            } else if (C18334g0.m15277B("regNudgeBadgeSet", false)) {
                C12864a2.m22562c0(getApplicationContext(), 0);
                AbstractC19463a0 abstractC19463a02 = (AbstractC19463a0) ((AbstractC19854f) this.f15675j.get()).mo11854a();
                C17629l0.C17631b m15911a2 = C17629l0.m15911a();
                m15911a2.m15908c("RegistrationNudge");
                m15911a2.m15909b("Badge");
                abstractC19463a02.mo13111a(m15911a2.build());
            }
        } catch (AvroRuntimeException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
        if (getIntent() == null || !getIntent().hasExtra("extraRequestCode")) {
            TruecallerInit.m34565Xa(this, "calls", "wizard");
        }
        finish();
    }

    /* renamed from: ta */
    public AbstractC19749u m34548ta() {
        return (AbstractC19749u) this.f15679n.get();
    }

    /* renamed from: va */
    public AbstractC19756b m34547va() {
        return this.f15678m;
    }

    /* renamed from: wa */
    public AbstractC19763h m34546wa() {
        return this.f15677l;
    }

    /* renamed from: xa */
    public WizardVerificationMode m34545xa() {
        return (WizardVerificationMode) this.f15680o.get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: za */
    public void m34544za() {
        WizardActivity.super.za();
        int i = TagService.f10954a;
        Intent intent = new Intent();
        intent.putExtra("action", 0);
        AbstractServiceC26431i.enqueueWork(getApplicationContext(), TagService.class, C3656R.C3658id.tag_service_job_id, intent);
        new C26458x(this).m1816b(C2752R.C2754id.dialer_reminder_notification_id);
    }
}
