package p193e.p194a.p195a.p200c;

import com.truecaller.C2752R;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.AbstractC19091q0;
import p193e.p194a.p1187r2.AbstractC19851d0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.conversation.ConversationActionModePresenterImpl$onDownloadAction$1", f = "ConversationActionModePresenter.kt", l = {498}, m = "invokeSuspend")
/* renamed from: e.a.a.c.k3 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k3.class */
public final class C5441k3 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f18547e;

    /* renamed from: f */
    public final /* synthetic */ C5373i3 f18548f;

    /* renamed from: g */
    public final /* synthetic */ Message f18549g;

    /* renamed from: e.a.a.c.k3$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/k3$a.class */
    public static final class C5442a<R> implements AbstractC19851d0<Boolean> {
        public C5442a() {
            C5441k3.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            AbstractC5522m3 abstractC5522m3 = (AbstractC5522m3) C5441k3.this.f18548f.f57683a;
            if (abstractC5522m3 != null) {
                abstractC5522m3.mo32353a(C2752R.string.ConversationFileSaved);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5441k3(C5373i3 c5373i3, Message message, d dVar) {
        super(2, dVar);
        this.f18548f = c5373i3;
        this.f18549g = message;
    }

    /* renamed from: i */
    public final d<s> m33123i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C5441k3(this.f18548f, this.f18549g, dVar);
    }

    /* renamed from: k */
    public final Object m33122k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C5441k3(this.f18548f, this.f18549g, dVar).m33121s(s.a);
    }

    /* renamed from: s */
    public final Object m33121s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f18547e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (this.f18548f.f18390y.mo13780q() < 29) {
                C5373i3 c5373i3 = this.f18548f;
                this.f18547e = 1;
                Object m33237Jj = c5373i3.m33237Jj(this);
                obj = m33237Jj;
                if (m33237Jj == aVar) {
                    return aVar;
                }
            }
            AbstractC19091q0 mo11854a = this.f18548f.f18386u.mo11854a();
            Entity[] entityArr = this.f18549g.f13394o;
            l.d(entityArr, "message.entities");
            mo11854a.mo14126h(entityArr).mo11830e(this.f18548f.f18373h, new C5442a());
            return sVar;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (!((Boolean) obj).booleanValue()) {
            return sVar;
        }
        AbstractC19091q0 mo11854a2 = this.f18548f.f18386u.mo11854a();
        Entity[] entityArr2 = this.f18549g.f13394o;
        l.d(entityArr2, "message.entities");
        mo11854a2.mo14126h(entityArr2).mo11830e(this.f18548f.f18373h, new C5442a());
        return sVar;
    }
}
