package p193e.p194a.p1195s.p1201n.p1203b;

import com.truecaller.callhero_assistant.data.UpdatePreferencesRequestDto;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1195s.p1212s.AbstractC20168a;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callhero_assistant.inbox.settings.CallAssistantSettingsPresenter$updateScreenBlockListContacts$2", f = "CallAssistantSettingsPresenter.kt", l = {67}, m = "invokeSuspend")
/* renamed from: e.a.s.n.b.d */
/* loaded from: classes17-dex2jar.jar:e/a/s/n/b/d.class */
public final class C20074d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f56653e;

    /* renamed from: f */
    public final /* synthetic */ C20075e f56654f;

    /* renamed from: g */
    public final /* synthetic */ boolean f56655g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20074d(C20075e c20075e, boolean z, d dVar) {
        super(2, dVar);
        this.f56654f = c20075e;
        this.f56655g = z;
    }

    /* renamed from: i */
    public final d<s> m11584i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20074d(this.f56654f, this.f56655g, dVar);
    }

    /* renamed from: k */
    public final Object m11583k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C20074d(this.f56654f, this.f56655g, dVar).m11582s(s.a);
    }

    /* renamed from: s */
    public final Object m11582s(Object obj) {
        a aVar = a.a;
        int i = this.f56653e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC20168a abstractC20168a = this.f56654f.f56660h;
            UpdatePreferencesRequestDto updatePreferencesRequestDto = new UpdatePreferencesRequestDto(null, Boolean.valueOf(this.f56655g), 1, null);
            this.f56653e = 1;
            Object mo11448c = abstractC20168a.mo11448c(updatePreferencesRequestDto, this);
            obj = mo11448c;
            if (mo11448c == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            this.f56654f.f56659g.mo11419o1(this.f56655g);
        } else {
            C20075e c20075e = this.f56654f;
            AbstractC20073c abstractC20073c = (AbstractC20073c) c20075e.f57683a;
            if (abstractC20073c != null) {
                abstractC20073c.mo11585ju(c20075e.f56659g.mo11426O0());
            }
            C12864a2.m22554g0(this.f56654f.f56661i, 2131886719, null, 0, 6, null);
        }
        return s.a;
    }
}
