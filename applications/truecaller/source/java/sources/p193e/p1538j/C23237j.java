package p193e.p1538j;

import com.facebook.appevents.C1099y;
import com.facebook.appevents.C1100z;
import com.facebook.internal.C1115a0;
import com.facebook.internal.C1127d0;
import com.facebook.internal.p037u0.p040m.C1220a;
import s1.z.c.l;
/* renamed from: e.j.j */
/* loaded from: classes2-dex2jar.jar:e/j/j.class */
public final /* synthetic */ class C23237j implements C1115a0.AbstractC1116a {

    /* renamed from: a */
    public static final /* synthetic */ C23237j f64317a = new C23237j();

    @Override // com.facebook.internal.C1115a0.AbstractC1116a
    /* renamed from: a */
    public final void mo7331a(boolean z) {
        C23228f0 c23228f0 = C23228f0.f64291a;
        if (!z || C1220a.m41623b(C1100z.class)) {
            return;
        }
        try {
            C1127d0 c1127d0 = C1127d0.f3107a;
            C1099y c1099y = new C1099y();
            l.e(c1099y, "callback");
            C1127d0.f3112f.add(c1099y);
            C1127d0.m41741c();
        } catch (Throwable th) {
            C1220a.m41624a(th, C1100z.class);
        }
    }
}
