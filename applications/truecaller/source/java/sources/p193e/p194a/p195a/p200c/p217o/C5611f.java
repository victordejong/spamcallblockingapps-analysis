package p193e.p194a.p195a.p200c.p217o;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.conversation.notifications.ConversationNotificationSettingsPresenter$onAttachView$1", f = "ConversationNotificationSettingsPresenter.kt", l = {53}, m = "invokeSuspend")
/* renamed from: e.a.a.c.o.f */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/o/f.class */
public final class C5611f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f18888e;

    /* renamed from: f */
    public final /* synthetic */ C5604e f18889f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5611f(C5604e c5604e, d dVar) {
        super(2, dVar);
        this.f18889f = c5604e;
    }

    /* renamed from: i */
    public final d<s> m32895i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C5611f(this.f18889f, dVar);
    }

    /* renamed from: k */
    public final Object m32894k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C5611f(this.f18889f, dVar).m32893s(s.a);
    }

    /* renamed from: s */
    public final Object m32893s(Object obj) {
        a aVar = a.a;
        int i = this.f18888e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C5604e c5604e = this.f18889f;
            this.f18888e = 1;
            if (c5604e.m32919Ij(this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
