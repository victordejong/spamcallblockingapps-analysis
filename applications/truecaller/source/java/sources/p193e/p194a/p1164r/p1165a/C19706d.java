package p193e.p194a.p1164r.p1165a;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.wizard.backup.analyitcs.WizardGDriveAccountRecoveryEvent;
import com.truecaller.wizard.backup.analyitcs.WizardGDriveAccountRecoveryEvent$Action;
import e.a.r.a.j.a;
import e.m.d.y.n;
import javax.inject.Inject;
import p193e.p194a.p1146q2.AbstractC19462a;
import s1.z.c.l;
/* renamed from: e.a.r.a.d */
/* loaded from: classes16-dex2jar.jar:e/a/r/a/d.class */
public final class C19706d {

    /* renamed from: a */
    public final AbstractC19462a f54733a;

    @Inject
    public C19706d(AbstractC19462a abstractC19462a) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f54733a = abstractC19462a;
    }

    /* renamed from: a */
    public final void m12967a(WizardGDriveAccountRecoveryEvent$Action wizardGDriveAccountRecoveryEvent$Action) {
        n.B0(new WizardGDriveAccountRecoveryEvent(wizardGDriveAccountRecoveryEvent$Action), this.f54733a);
    }

    /* renamed from: b */
    public final void m12966b(String str) {
        n.B0(new a(str), this.f54733a);
    }
}
