package p193e.p194a.p195a.p228e1;

import android.content.Intent;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import s1.z.c.l;
/* renamed from: e.a.a.e1.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/e1/c.class */
public final class C6040c extends AbstractC6039b {

    /* renamed from: b */
    public final AbstractC19219a0 f20087b;

    /* renamed from: c */
    public final AbstractC19230g f20088c;

    /* renamed from: d */
    public final String f20089d;

    public C6040c(AbstractC19219a0 abstractC19219a0, AbstractC19230g abstractC19230g, String str) {
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(str, "settingContext");
        this.f20087b = abstractC19219a0;
        this.f20088c = abstractC19230g;
        this.f20089d = str;
    }

    @Override // p193e.p194a.p195a.p228e1.AbstractC6039b
    /* renamed from: Hj */
    public void mo31934Hj() {
        PV pv = this.f57683a;
        if (pv != 0) {
            AbstractC6041d abstractC6041d = (AbstractC6041d) pv;
            if (!this.f20088c.mo13802B() || !this.f20087b.mo13825h("android.permission.SEND_SMS")) {
                abstractC6041d.mo31931j2(this.f20089d);
                return;
            } else {
                abstractC6041d.mo31930t0();
                return;
            }
        }
        throw new IllegalStateException("Required value was null.".toString());
    }

    @Override // p193e.p194a.p195a.p228e1.AbstractC6039b
    public void onResume() {
        PV pv = this.f57683a;
        if (pv != 0) {
            AbstractC6041d abstractC6041d = (AbstractC6041d) pv;
            if (!this.f20087b.mo13825h("android.permission.READ_SMS") || !this.f20087b.mo13825h("android.permission.SEND_SMS") || !this.f20088c.mo13802B()) {
                return;
            }
            Intent mo31933A1 = abstractC6041d.mo31933A1();
            if (mo31933A1 != null) {
                abstractC6041d.startActivity(mo31933A1);
            } else {
                abstractC6041d.mo31932R2(this.f20089d);
            }
            abstractC6041d.finish();
            return;
        }
        throw new IllegalStateException("Required value was null.".toString());
    }
}
