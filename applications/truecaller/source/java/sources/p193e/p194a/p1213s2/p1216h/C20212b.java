package p193e.p194a.p1213s2.p1216h;

import com.truecaller.announce_caller_id.analytics.events.AnnounceCallerIdSettingsAction;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.s2.h.b */
/* loaded from: classes5-dex2jar.jar:e/a/s2/h/b.class */
public final class C20212b extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C20214d f56950b;

    /* renamed from: c */
    public final /* synthetic */ boolean f56951c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20212b(C20214d c20214d, boolean z) {
        super(0);
        this.f56950b = c20214d;
        this.f56951c = z;
    }

    public Object invoke() {
        this.f56950b.f56954b.mo11343N0(this.f56951c);
        this.f56950b.f56956d.mo11348n(this.f56951c ? AnnounceCallerIdSettingsAction.PB_CONTACTS_ONLY_ENABLED : AnnounceCallerIdSettingsAction.PB_CONTACTS_ONLY_DISABLED);
        return s.a;
    }
}
