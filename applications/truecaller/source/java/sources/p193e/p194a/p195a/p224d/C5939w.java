package p193e.p194a.p195a.p224d;

import android.net.Uri;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.newconversation.NewConversationPresenter;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.newconversation.NewConversationPresenter$createImGroup$1", f = "NewConversationPresenter.kt", l = {783}, m = "invokeSuspend")
/* renamed from: e.a.a.d.w */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/w.class */
public final class C5939w extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f19825e;

    /* renamed from: f */
    public final /* synthetic */ NewConversationPresenter f19826f;

    /* renamed from: g */
    public final /* synthetic */ List f19827g;

    /* renamed from: h */
    public final /* synthetic */ String f19828h;

    /* renamed from: i */
    public final /* synthetic */ Uri f19829i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5939w(NewConversationPresenter newConversationPresenter, List list, String str, Uri uri, d dVar) {
        super(2, dVar);
        this.f19826f = newConversationPresenter;
        this.f19827g = list;
        this.f19828h = str;
        this.f19829i = uri;
    }

    /* renamed from: i */
    public final d<s> m32137i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C5939w(this.f19826f, this.f19827g, this.f19828h, this.f19829i, dVar);
    }

    /* renamed from: k */
    public final Object m32136k(Object obj, Object obj2) {
        return m32137i(obj, (d) obj2).m32135s(s.a);
    }

    /* renamed from: s */
    public final Object m32135s(Object obj) {
        a aVar = a.a;
        int i = this.f19825e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            NewConversationPresenter newConversationPresenter = this.f19826f;
            List<? extends Participant> list = this.f19827g;
            String str = this.f19828h;
            Uri uri = this.f19829i;
            this.f19825e = 1;
            if (newConversationPresenter.m34947Oj(list, str, uri, this) == aVar) {
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
