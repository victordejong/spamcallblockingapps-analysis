package p193e.p194a.p1213s2.p1216h;

import com.truecaller.announce_caller_id.analytics.events.AnnounceCallerIdSettingsAction;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.s2.h.c */
/* loaded from: classes5-dex2jar.jar:e/a/s2/h/c.class */
public final class C20213c extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C20214d f56952b;

    /* renamed from: c */
    public final /* synthetic */ boolean f56953c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20213c(C20214d c20214d, boolean z) {
        super(0);
        this.f56952b = c20214d;
        this.f56953c = z;
    }

    public Object invoke() {
        this.f56952b.f56954b.mo11326z0(this.f56953c);
        this.f56952b.f56956d.mo11348n(this.f56953c ? AnnounceCallerIdSettingsAction.VOIP_ENABLED : AnnounceCallerIdSettingsAction.VOIP_DISABLED);
        return s.a;
    }
}
