package p193e.p194a.p1195s.p1201n.p1203b.p1204g;

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
/* renamed from: e.a.s.n.b.g.l */
/* loaded from: classes17-dex2jar.jar:e/a/s/n/b/g/l.class */
public final class C20096l extends AbstractC20574a<AbstractC20094j> implements AbstractC20093i {

    /* renamed from: d */
    public List<Voice> f56697d = s.a;

    /* renamed from: e */
    public String f56698e;

    /* renamed from: f */
    public String f56699f;

    /* renamed from: g */
    public boolean f56700g;

    /* renamed from: h */
    public boolean f56701h;

    /* renamed from: i */
    public final f f56702i;

    /* renamed from: j */
    public final AbstractC20187i f56703j;

    /* renamed from: k */
    public final AbstractC20168a f56704k;

    /* renamed from: l */
    public final AbstractC19237j0 f56705l;

    /* renamed from: m */
    public final AbstractC20177c f56706m;

    @e(c = "com.truecaller.callhero_assistant.inbox.settings.voice.VoiceSettingsPresenter$onVoiceClick$1", f = "VoiceSettingsPresenter.kt", l = {71}, m = "invokeSuspend")
    /* renamed from: e.a.s.n.b.g.l$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/b/g/l$a.class */
    public static final class C20097a extends i implements p<i0, d<? super s1.s>, Object> {

        /* renamed from: e */
        public int f56707e;

        /* renamed from: g */
        public final /* synthetic */ Voice f56709g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20097a(Voice voice, d dVar) {
            super(2, dVar);
            C20096l.this = r5;
            this.f56709g = voice;
        }

        /* renamed from: i */
        public final d<s1.s> m11551i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20097a(this.f56709g, dVar);
        }

        /* renamed from: k */
        public final Object m11550k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20097a(this.f56709g, dVar).m11549s(s1.s.a);
        }

        /* renamed from: s */
        public final Object m11549s(Object obj) {
            a aVar = a.a;
            int i = this.f56707e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC20168a abstractC20168a = C20096l.this.f56704k;
                UpdatePreferencesRequestDto updatePreferencesRequestDto = new UpdatePreferencesRequestDto(this.f56709g.getId(), null, 2, null);
                this.f56707e = 1;
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
            boolean booleanValue = ((Boolean) obj).booleanValue();
            AbstractC20094j abstractC20094j = (AbstractC20094j) C20096l.this.f57683a;
            if (abstractC20094j != null) {
                abstractC20094j.mo11566bz();
            }
            if (booleanValue) {
                C20096l.this.f56706m.mo11418v1(this.f56709g.getId());
            } else {
                C12864a2.m22554g0(C20096l.this.f56705l, 2131886719, null, 0, 6, null);
            }
            return s1.s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20096l(@Named("UI") f fVar, AbstractC20187i abstractC20187i, AbstractC20168a abstractC20168a, AbstractC19237j0 abstractC19237j0, AbstractC20177c abstractC20177c) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC20187i, "voiceRepository");
        l.e(abstractC20168a, "accountManager");
        l.e(abstractC19237j0, "toastUtil");
        l.e(abstractC20177c, "callAssistantSettings");
        this.f56702i = fVar;
        this.f56703j = abstractC20187i;
        this.f56704k = abstractC20168a;
        this.f56705l = abstractC19237j0;
        this.f56706m = abstractC20177c;
        this.f56698e = abstractC20177c.mo11433B0();
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.p1204g.AbstractC20092h
    /* renamed from: E0 */
    public String mo11560E0() {
        return this.f56698e;
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.p1204g.AbstractC20089e
    /* renamed from: E1 */
    public void mo11559E1(Voice voice) {
        l.e(voice, "voice");
        this.f56698e = voice.getId();
        AbstractC20094j abstractC20094j = (AbstractC20094j) this.f57683a;
        if (abstractC20094j != null) {
            abstractC20094j.mo11565c0();
        }
        AbstractC20094j abstractC20094j2 = (AbstractC20094j) this.f57683a;
        if (abstractC20094j2 != null) {
            abstractC20094j2.mo11564kn();
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C20097a(voice, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.p1204g.AbstractC20093i
    /* renamed from: L */
    public void mo11558L(boolean z) {
        this.f56700g = z;
        AbstractC20094j abstractC20094j = (AbstractC20094j) this.f57683a;
        if (abstractC20094j != null) {
            abstractC20094j.mo11565c0();
        }
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.p1204g.AbstractC20092h
    /* renamed from: Q7 */
    public String mo11557Q7() {
        return this.f56699f;
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.p1204g.AbstractC20089e
    /* renamed from: S3 */
    public void mo11556S3(Voice voice) {
        l.e(voice, "voice");
        if (l.a(this.f56699f, voice.getId())) {
            this.f56699f = null;
            AbstractC20094j abstractC20094j = (AbstractC20094j) this.f57683a;
            if (abstractC20094j != null) {
                abstractC20094j.mo11568H1();
            }
        } else {
            this.f56699f = voice.getId();
            AbstractC20094j abstractC20094j2 = (AbstractC20094j) this.f57683a;
            if (abstractC20094j2 != null) {
                abstractC20094j2.mo11567T4(voice.getPreview());
            }
        }
        AbstractC20094j abstractC20094j3 = (AbstractC20094j) this.f57683a;
        if (abstractC20094j3 != null) {
            abstractC20094j3.mo11565c0();
        }
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.p1204g.AbstractC20093i
    /* renamed from: T0 */
    public void mo11555T0(boolean z) {
        this.f56701h = z;
        AbstractC20094j abstractC20094j = (AbstractC20094j) this.f57683a;
        if (abstractC20094j != null) {
            abstractC20094j.mo11565c0();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.s.n.b.g.j, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC20094j abstractC20094j) {
        AbstractC20094j abstractC20094j2 = abstractC20094j;
        l.e(abstractC20094j2, "presenterView");
        this.f57683a = abstractC20094j2;
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C20095k(this, abstractC20094j2, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.p1204g.AbstractC20092h
    /* renamed from: s0 */
    public boolean mo11554s0() {
        return this.f56700g;
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.p1204g.AbstractC20092h
    /* renamed from: t0 */
    public boolean mo11553t0() {
        return this.f56701h;
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.p1204g.AbstractC20092h
    /* renamed from: x1 */
    public List<Voice> mo11552x1() {
        return this.f56697d;
    }
}
