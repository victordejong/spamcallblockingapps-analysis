package p193e.p194a.p1195s.p1207q.p1210g;

import com.truecaller.callhero_assistant.data.UpdatePreferencesRequestDto;
import com.truecaller.callhero_assistant.data.Voice;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19237j0;
import p193e.p194a.p1195s.p1212s.AbstractC20168a;
import p193e.p194a.p1195s.p1212s.AbstractC20177c;
import p193e.p194a.p1195s.p1212s.AbstractC20187i;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import q3.a.j0;
import s1.u.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.s.q.g.j */
/* loaded from: classes17-dex2jar.jar:e/a/s/q/g/j.class */
public final class C20158j extends AbstractC20574a<AbstractC20156h> implements AbstractC20155g {

    /* renamed from: d */
    public List<Voice> f56805d = s.a;

    /* renamed from: e */
    public String f56806e;

    /* renamed from: f */
    public boolean f56807f;

    /* renamed from: g */
    public boolean f56808g;

    /* renamed from: h */
    public final f f56809h;

    /* renamed from: i */
    public final AbstractC20187i f56810i;

    /* renamed from: j */
    public final AbstractC20168a f56811j;

    /* renamed from: k */
    public final AbstractC19237j0 f56812k;

    /* renamed from: l */
    public final AbstractC20177c f56813l;

    @e(c = "com.truecaller.callhero_assistant.onboarding.voice.OnboardingStepVoicePresenter$onChooseClick$1", f = "OnboardingStepVoicePresenter.kt", l = {78}, m = "invokeSuspend")
    /* renamed from: e.a.s.q.g.j$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/g/j$a.class */
    public static final class C20159a extends i implements p<i0, d<? super s1.s>, Object> {

        /* renamed from: e */
        public int f56814e;

        /* renamed from: g */
        public final /* synthetic */ String f56816g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20159a(String str, d dVar) {
            super(2, dVar);
            C20158j.this = r5;
            this.f56816g = str;
        }

        /* renamed from: i */
        public final d<s1.s> m11467i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20159a(this.f56816g, dVar);
        }

        /* renamed from: k */
        public final Object m11466k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20159a(this.f56816g, dVar).m11465s(s1.s.a);
        }

        /* renamed from: s */
        public final Object m11465s(Object obj) {
            a aVar = a.a;
            int i = this.f56814e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC20168a abstractC20168a = C20158j.this.f56811j;
                UpdatePreferencesRequestDto updatePreferencesRequestDto = new UpdatePreferencesRequestDto(this.f56816g, null, 2, null);
                this.f56814e = 1;
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
                C20158j.this.f56813l.mo11418v1(this.f56816g);
                AbstractC20156h abstractC20156h = (AbstractC20156h) C20158j.this.f57683a;
                if (abstractC20156h != null) {
                    abstractC20156h.mo11482T();
                }
            } else {
                C12864a2.m22554g0(C20158j.this.f56812k, 2131886719, null, 0, 6, null);
                AbstractC20156h abstractC20156h2 = (AbstractC20156h) C20158j.this.f57683a;
                if (abstractC20156h2 != null) {
                    abstractC20156h2.mo11479mb(true);
                }
            }
            return s1.s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20158j(@Named("UI") f fVar, AbstractC20187i abstractC20187i, AbstractC20168a abstractC20168a, AbstractC19237j0 abstractC19237j0, AbstractC20177c abstractC20177c) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC20187i, "voiceRepository");
        l.e(abstractC20168a, "accountManager");
        l.e(abstractC19237j0, "toastUtil");
        l.e(abstractC20177c, "callAssistantSettings");
        this.f56809h = fVar;
        this.f56810i = abstractC20187i;
        this.f56811j = abstractC20168a;
        this.f56812k = abstractC19237j0;
        this.f56813l = abstractC20177c;
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20154f
    /* renamed from: E0 */
    public String mo11475E0() {
        return this.f56806e;
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20151c
    /* renamed from: E1 */
    public void mo11474E1(Voice voice) {
        l.e(voice, "voice");
        if (!this.f56808g || !l.a(this.f56806e, voice.getId())) {
            AbstractC20156h abstractC20156h = (AbstractC20156h) this.f57683a;
            if (abstractC20156h != null) {
                abstractC20156h.mo11481T4(voice.getPreview());
            }
        } else {
            AbstractC20156h abstractC20156h2 = (AbstractC20156h) this.f57683a;
            if (abstractC20156h2 != null) {
                abstractC20156h2.mo11484H1();
            }
        }
        this.f56806e = voice.getId();
        AbstractC20156h abstractC20156h3 = (AbstractC20156h) this.f57683a;
        if (abstractC20156h3 != null) {
            abstractC20156h3.mo11480c0();
        }
        AbstractC20156h abstractC20156h4 = (AbstractC20156h) this.f57683a;
        if (abstractC20156h4 != null) {
            abstractC20156h4.mo11483Qe(voice.getName());
        }
        AbstractC20156h abstractC20156h5 = (AbstractC20156h) this.f57683a;
        if (abstractC20156h5 != null) {
            abstractC20156h5.mo11479mb(true);
        }
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20155g
    /* renamed from: L */
    public void mo11473L(boolean z) {
        this.f56807f = z;
        AbstractC20156h abstractC20156h = (AbstractC20156h) this.f57683a;
        if (abstractC20156h != null) {
            abstractC20156h.mo11480c0();
        }
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20155g
    /* renamed from: S7 */
    public void mo11472S7() {
        String str = this.f56806e;
        if (str != null) {
            AbstractC20156h abstractC20156h = (AbstractC20156h) this.f57683a;
            if (abstractC20156h != null) {
                abstractC20156h.mo11479mb(false);
            }
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C20159a(str, null), 3, (Object) null);
        }
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20155g
    /* renamed from: T0 */
    public void mo11471T0(boolean z) {
        this.f56808g = z;
        AbstractC20156h abstractC20156h = (AbstractC20156h) this.f57683a;
        if (abstractC20156h != null) {
            abstractC20156h.mo11480c0();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.s.q.g.h, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC20156h abstractC20156h) {
        AbstractC20156h abstractC20156h2 = abstractC20156h;
        l.e(abstractC20156h2, "presenterView");
        this.f57683a = abstractC20156h2;
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C20157i(this, abstractC20156h2, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20154f
    /* renamed from: s0 */
    public boolean mo11470s0() {
        return this.f56807f;
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20154f
    /* renamed from: t0 */
    public boolean mo11469t0() {
        return this.f56808g;
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20154f
    /* renamed from: x1 */
    public List<Voice> mo11468x1() {
        return this.f56805d;
    }
}
