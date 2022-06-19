package p193e.p194a.p195a.p244k.p245a;

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
@e(c = "com.truecaller.messaging.transport.im.ImUnreadRemindersManagerImpl$fetchAvatar$4", f = "ImUnreadRemindersManager.kt", l = {231}, m = "invokeSuspend")
/* renamed from: e.a.a.k.a.s0 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/s0.class */
public final class C6624s0 extends i implements p<i0, d<? super Bitmap>, Object> {

    /* renamed from: e */
    public int f21866e;

    /* renamed from: f */
    public final /* synthetic */ C6636v0 f21867f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6624s0(C6636v0 c6636v0, d dVar) {
        super(2, dVar);
        this.f21867f = c6636v0;
    }

    /* renamed from: i */
    public final d<s> m30642i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C6624s0(this.f21867f, dVar);
    }

    /* renamed from: k */
    public final Object m30641k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C6624s0(this.f21867f, dVar).m30640s(s.a);
    }

    /* renamed from: s */
    public final Object m30640s(Object obj) {
        a aVar = a.a;
        int i = this.f21866e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f21866e = 1;
            Object m28759sk = C8239a.m28759sk((C8239a) this.f21867f.f21910k.get(), 0, this, 1);
            obj = m28759sk;
            if (m28759sk == aVar) {
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
