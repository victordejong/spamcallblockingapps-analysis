package p193e.p194a.p1195s.p1201n.p1203b.p1204g;

import com.truecaller.callhero_assistant.data.Voice;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1195s.p1212s.AbstractC20187i;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callhero_assistant.inbox.settings.voice.VoiceSettingsPresenter$onAttachView$1", f = "VoiceSettingsPresenter.kt", l = {54}, m = "invokeSuspend")
/* renamed from: e.a.s.n.b.g.k */
/* loaded from: classes17-dex2jar.jar:e/a/s/n/b/g/k.class */
public final class C20095k extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f56694e;

    /* renamed from: f */
    public final /* synthetic */ C20096l f56695f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC20094j f56696g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20095k(C20096l c20096l, AbstractC20094j abstractC20094j, d dVar) {
        super(2, dVar);
        this.f56695f = c20096l;
        this.f56696g = abstractC20094j;
    }

    /* renamed from: i */
    public final d<s> m11563i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20095k(this.f56695f, this.f56696g, dVar);
    }

    /* renamed from: k */
    public final Object m11562k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C20095k(this.f56695f, this.f56696g, dVar).m11561s(s.a);
    }

    /* renamed from: s */
    public final Object m11561s(Object obj) {
        a aVar = a.a;
        int i = this.f56694e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC20187i abstractC20187i = this.f56695f.f56703j;
            this.f56694e = 1;
            Object mo11403b = abstractC20187i.mo11403b(this);
            obj = mo11403b;
            if (mo11403b == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        List<Voice> list = (List) obj;
        if (list == null) {
            C12864a2.m22554g0(this.f56695f.f56705l, 2131886719, null, 0, 6, null);
        } else {
            this.f56695f.f56697d = list;
            this.f56696g.mo11565c0();
        }
        return s.a;
    }
}
