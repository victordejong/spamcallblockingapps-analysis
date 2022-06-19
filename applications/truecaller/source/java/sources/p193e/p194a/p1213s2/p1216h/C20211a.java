package p193e.p194a.p1213s2.p1216h;

import com.truecaller.announce_caller_id.analytics.events.AnnounceCallerIdSettingsAction;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.s2.h.a */
/* loaded from: classes5-dex2jar.jar:e/a/s2/h/a.class */
public final class C20211a extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C20214d f56948b;

    /* renamed from: c */
    public final /* synthetic */ boolean f56949c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20211a(C20214d c20214d, boolean z) {
        super(0);
        this.f56948b = c20214d;
        this.f56949c = z;
    }

    public Object invoke() {
        this.f56948b.f56954b.mo11337e0(this.f56949c);
        this.f56948b.f56956d.mo11348n(this.f56949c ? AnnounceCallerIdSettingsAction.HEADSET_ENABLED : AnnounceCallerIdSettingsAction.HEADSET_DISABLED);
        return s.a;
    }
}
