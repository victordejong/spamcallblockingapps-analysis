package p459j.p460a.p521j0.p522u.p526e;

import java.util.Map;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.AbstractC14272h;
import p459j.p460a.p582w0.p590x4.C14296p;
import p626l.C14985o;
import p626l.p632u.C15005e0;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\bÆ\u0002\u0018��2\u00020\u0001:\u0002\u0018\u0019B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0014\u001a\u00020\u00152\b\b\u0001\u0010\u0016\u001a\u00020\u0004H\u0007J\b\u0010\u0017\u001a\u00020\u0015H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\tX\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\tX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\tX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\tX\u0086T¢\u0006\u0002\n��R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001a"}, m815d2 = {"Lgogolook/callgogolook2/phone/call/iap/IapPostCedPromoTracking;", "", "()V", "ACTION_BACK", "", "ACTION_CLOSE", "ACTION_GREY", "ACTION_POSITIVE_CTA", "EVENT_POST_CALL_END_PROMO", "", "EXTREME_MODE_OFF", "EXTREME_MODE_ON", "KEY_ACTION", "KEY_DURATION", "KEY_EXTREME_MODE", "KEY_VERSION", "cacheHelper", "Lgogolook/callgogolook2/phone/call/iap/IapPostCedPromoTracking$EventHelper;", "timeProbe", "Lgogolook/callgogolook2/util/debug/TimeProbe;", "actionEnd", "", "action", "start", "Action", "EventHelper", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.j0.u.e.a */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/e/a.class */
public final class C12715a {

    /* renamed from: a */
    public static C12716a f28701a;

    /* renamed from: b */
    public static C13930d f28702b;

    /* renamed from: j.a.j0.u.e.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/e/a$a.class */
    public static final class C12716a extends AbstractC14272h {
        @Override // p459j.p460a.p582w0.p590x4.AbstractC14272h
        /* renamed from: a */
        public void mo1618a(C14296p.C14297a.C14298a aVar) {
            C15149k.m377b(aVar, "builder");
            C14296p.m1830a("whoscall_post_call_end_promo", aVar.m1811a());
        }

        @Override // p459j.p460a.p582w0.p590x4.AbstractC14272h
        /* renamed from: i */
        public Map<String, Object> mo1940i() {
            return C15005e0.m624a(C14985o.m644a("ver", 1), C14985o.m644a("action", 0), C14985o.m644a("extreme_mode", 0), C14985o.m644a("duration", 0));
        }
    }

    static {
        new C12715a();
    }

    /* renamed from: a */
    public static final void m5472a() {
        C13930d dVar = new C13930d();
        dVar.m3018e();
        f28702b = dVar;
        C12716a aVar = new C12716a();
        aVar.m1949a("extreme_mode", Integer.valueOf(C14021h2.m2780f() ? 1 : 0));
        f28701a = aVar;
    }

    /* renamed from: a */
    public static final void m5471a(int i) {
        C12716a aVar = f28701a;
        if (aVar != null) {
            aVar.m1949a("action", Integer.valueOf(i));
            C13930d dVar = f28702b;
            if (dVar != null) {
                dVar.m3017f();
                aVar.m1949a("duration", Integer.valueOf(dVar.m3022b()));
            }
            aVar.m1945c();
            if (aVar != null) {
                f28702b = null;
                f28701a = null;
            }
        }
    }
}
