package p193e.p194a.p1195s.p1207q.p1210g;

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
@e(c = "com.truecaller.callhero_assistant.onboarding.voice.OnboardingStepVoicePresenter$onAttachView$1", f = "OnboardingStepVoicePresenter.kt", l = {51}, m = "invokeSuspend")
/* renamed from: e.a.s.q.g.i */
/* loaded from: classes17-dex2jar.jar:e/a/s/q/g/i.class */
public final class C20157i extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f56802e;

    /* renamed from: f */
    public final /* synthetic */ C20158j f56803f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC20156h f56804g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20157i(C20158j c20158j, AbstractC20156h abstractC20156h, d dVar) {
        super(2, dVar);
        this.f56803f = c20158j;
        this.f56804g = abstractC20156h;
    }

    /* renamed from: i */
    public final d<s> m11478i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20157i(this.f56803f, this.f56804g, dVar);
    }

    /* renamed from: k */
    public final Object m11477k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C20157i(this.f56803f, this.f56804g, dVar).m11476s(s.a);
    }

    /* renamed from: s */
    public final Object m11476s(Object obj) {
        a aVar = a.a;
        int i = this.f56802e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC20187i abstractC20187i = this.f56803f.f56810i;
            this.f56802e = 1;
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
            C12864a2.m22554g0(this.f56803f.f56812k, 2131886719, null, 0, 6, null);
        } else {
            this.f56803f.f56805d = list;
            this.f56804g.mo11480c0();
        }
        return s.a;
    }
}
