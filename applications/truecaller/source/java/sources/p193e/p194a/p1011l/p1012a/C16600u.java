package p193e.p194a.p1011l.p1012a;

import com.truecaller.clevertap.CleverTapManager;
import com.truecaller.premium.util.NotificationAccessSource;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.l.a.u */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/u.class */
public final class C16600u implements AbstractC16599t {

    /* renamed from: a */
    public final CleverTapManager f46632a;

    @Inject
    public C16600u(CleverTapManager cleverTapManager) {
        l.e(cleverTapManager, "cleverTapManager");
        this.f46632a = cleverTapManager;
    }

    @Override // p193e.p194a.p1011l.p1012a.AbstractC16599t
    /* renamed from: a */
    public void mo17202a(NotificationAccessSource notificationAccessSource) {
        l.e(notificationAccessSource, "source");
        this.f46632a.push("NotificationAccessRequested", C25225a.m3938Z1(new k("Source", notificationAccessSource.name())));
    }

    @Override // p193e.p194a.p1011l.p1012a.AbstractC16599t
    /* renamed from: b */
    public void mo17201b(NotificationAccessSource notificationAccessSource, boolean z) {
        l.e(notificationAccessSource, "source");
        this.f46632a.push("NotificationAccessResult", i.W(new k[]{new k("Source", notificationAccessSource.name()), new k("Result", z ? "Granted" : "Denied")}));
    }
}
