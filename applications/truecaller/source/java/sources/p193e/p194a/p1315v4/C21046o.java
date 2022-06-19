package p193e.p194a.p1315v4;

import android.app.NotificationManager;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.telephony.TelephonyManager;
import java.util.Objects;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1221t.p1230b.p1231c.C20358c;
import p193e.p194a.p1315v4.p1330u0.AbstractC21143g;
import p193e.p194a.p1315v4.p1333w0.AbstractC21160c;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.v4.o */
/* loaded from: classes12-dex2jar.jar:e/a/v4/o.class */
public final class C21046o extends C21032h {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21046o(f fVar, AbstractC19868j abstractC19868j, AbstractC19854f<AbstractC21165y> abstractC19854f, TelephonyManager telephonyManager, PackageManager packageManager, NotificationManager notificationManager, AbstractC21040l abstractC21040l, C21020b0 c21020b0, C21154v c21154v, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, C21018a0 c21018a0, C21017a c21017a, AbstractC19233h0 abstractC19233h0) {
        super(fVar, abstractC19868j, abstractC19854f, telephonyManager, packageManager, notificationManager, abstractC21040l, c21020b0, c21154v, abstractC8541a, abstractC8438a, c21018a0, c21017a, abstractC19233h0);
        l.e(fVar, "uiContext");
        l.e(abstractC19868j, "uiThread");
        l.e(abstractC19854f, "sdkHelperActorRef");
        l.e(telephonyManager, "telephonyManager");
        l.e(packageManager, "packageManager");
        l.e(notificationManager, "notificationManager");
        l.e(abstractC21040l, "eventsTrackerHolder");
        l.e(c21020b0, "sdkRepository");
        l.e(c21154v, "sdkAccountManager");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(c21018a0, "sdkLocaleManager");
        l.e(c21017a, "activityHelper");
        l.e(abstractC19233h0, "themedResourceProvider");
    }

    @Override // p193e.p194a.p1315v4.C21032h, p193e.p194a.p1315v4.AbstractC21030g
    /* renamed from: g */
    public void mo10383g() {
        super.mo10383g();
        C20358c c20358c = this.f59033c;
        if (c20358c == null || !c20358c.m11230a()) {
            AbstractC21143g abstractC21143g = this.f59035e;
            if (abstractC21143g == null) {
                l.l("sdkPartner");
                throw null;
            } else if (!abstractC21143g.mo10239v()) {
            } else {
                PV pv = this.f59029a;
                Objects.requireNonNull(pv, "null cannot be cast to non-null type com.truecaller.sdk.views.FullScreenConfirmView");
                ((AbstractC21160c) pv).mo10191m4(true ^ this.f59034d);
            }
        }
    }

    @Override // p193e.p194a.p1315v4.C21032h, p193e.p194a.p1315v4.AbstractC21030g
    /* renamed from: m */
    public void mo10382m() {
        super.mo10382m();
        try {
            PV pv = this.f59029a;
            if (pv == 0) {
                throw new NullPointerException("null cannot be cast to non-null type com.truecaller.sdk.views.FullScreenConfirmView");
            }
            AbstractC21160c abstractC21160c = (AbstractC21160c) pv;
            PackageManager packageManager = this.f59040j;
            AbstractC21143g abstractC21143g = this.f59035e;
            if (abstractC21143g == null) {
                l.l("sdkPartner");
                throw null;
            }
            Drawable applicationIcon = packageManager.getApplicationIcon(abstractC21143g.mo10225z());
            l.d(applicationIcon, "mPackageManager.getAppli…tner.getPartnerAppName())");
            abstractC21160c.mo10192T5(applicationIcon);
        } catch (PackageManager.NameNotFoundException e) {
        }
    }
}
