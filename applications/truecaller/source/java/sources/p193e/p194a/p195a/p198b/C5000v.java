package p193e.p194a.p195a.p198b;

import com.truecaller.messaging.data.types.Conversation;
import java.util.ArrayList;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.messaginglist.MessagingListPresenterImpl$onDeleteSelectedItems$1", f = "MessagingListPresenterImpl.kt", l = {1670}, m = "invokeSuspend")
/* renamed from: e.a.a.b.v */
/* loaded from: classes7-dex2jar.jar:e/a/a/b/v.class */
public final class C5000v extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f17099e;

    /* renamed from: f */
    public final /* synthetic */ C4984s f17100f;

    /* renamed from: g */
    public final /* synthetic */ int f17101g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5000v(C4984s c4984s, int i, d dVar) {
        super(2, dVar);
        this.f17100f = c4984s;
        this.f17101g = i;
    }

    /* renamed from: i */
    public final d<s> m34022i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C5000v(this.f17100f, this.f17101g, dVar);
    }

    /* renamed from: k */
    public final Object m34021k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C5000v(this.f17100f, this.f17101g, dVar).m34020s(s.a);
    }

    /* renamed from: s */
    public final Object m34020s(Object obj) {
        a aVar = a.a;
        int i = this.f17099e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC6248w abstractC6248w = (AbstractC6248w) this.f17100f.f17017N.get();
            Conversation[] conversationArr = this.f17100f.f17046n;
            ArrayList arrayList = new ArrayList(conversationArr.length);
            for (Conversation conversation : conversationArr) {
                arrayList.add(new Long(conversation.f13199a));
            }
            this.f17099e = 1;
            Object mo31581B = abstractC6248w.mo31581B(arrayList, this);
            obj = mo31581B;
            if (mo31581B == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        C4984s c4984s = this.f17100f;
        AbstractC4981r abstractC4981r = (AbstractC4981r) c4984s.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34120au(c4984s.f17046n.length, booleanValue, this.f17101g);
        }
        return s.a;
    }
}
