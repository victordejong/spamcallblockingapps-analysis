package p193e.p194a.p195a.p286y0;

import android.graphics.Bitmap;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p373a.p375a0.C8239a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.notifications.RegularMessagingNotificationsManagerImpl$getConversationIcon$3", f = "RegularMessagingNotificationsManager.kt", l = {455}, m = "invokeSuspend")
/* renamed from: e.a.a.y0.c0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/y0/c0.class */
public final class C7304c0 extends i implements p<i0, d<? super Bitmap>, Object> {

    /* renamed from: e */
    public int f23303e;

    /* renamed from: f */
    public final /* synthetic */ C7306d0 f23304f;

    /* renamed from: g */
    public final /* synthetic */ int f23305g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7304c0(C7306d0 c7306d0, int i, d dVar) {
        super(2, dVar);
        this.f23304f = c7306d0;
        this.f23305g = i;
    }

    /* renamed from: i */
    public final d<s> m29813i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7304c0(this.f23304f, this.f23305g, dVar);
    }

    /* renamed from: k */
    public final Object m29812k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7304c0(this.f23304f, this.f23305g, dVar).m29811s(s.a);
    }

    /* renamed from: s */
    public final Object m29811s(Object obj) {
        a aVar = a.a;
        int i = this.f23303e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C8239a c8239a = (C8239a) this.f23304f.f23312f.get();
            int i2 = this.f23305g;
            this.f23303e = 1;
            Object m28760rk = c8239a.m28760rk(i2, this);
            obj = m28760rk;
            if (m28760rk == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return obj;
    }
}
