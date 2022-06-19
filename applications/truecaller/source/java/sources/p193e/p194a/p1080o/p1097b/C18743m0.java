package p193e.p194a.p1080o.p1097b;

import com.truecaller.data.entity.CallContextMessage;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import q3.a.x2.a1;
import q3.a.x2.k1;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.o.b.m0 */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/m0.class */
public final class C18743m0 implements AbstractC18741l0 {

    /* renamed from: a */
    public final a1<CallContextMessage> f52672a = k1.a((Object) null);

    /* renamed from: b */
    public final a<AbstractC8621z> f52673b;

    @Inject
    public C18743m0(a<AbstractC8621z> aVar) {
        l.e(aVar, "phoneNumberHelper");
        this.f52673b = aVar;
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18741l0
    /* renamed from: i */
    public a1<CallContextMessage> mo14564i() {
        return this.f52672a;
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18741l0
    /* renamed from: k */
    public Object mo14563k(String str, d<? super CallContextMessage> dVar) {
        CallContextMessage callContextMessage = (CallContextMessage) this.f52672a.getValue();
        if (callContextMessage != null) {
            if (l.a(callContextMessage.f11497b, str)) {
                return callContextMessage;
            }
            String mo28181j = ((AbstractC8621z) this.f52673b.get()).mo28181j(str);
            if (mo28181j != null && l.a(callContextMessage.f11497b, mo28181j)) {
                return callContextMessage;
            }
            return null;
        }
        return null;
    }
}
