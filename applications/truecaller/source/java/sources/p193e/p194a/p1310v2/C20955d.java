package p193e.p194a.p1310v2;

import com.truecaller.attestation.AttestationEngine;
import e.m.d.y.n;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1310v2.AbstractC20978o;
import p193e.p194a.p1310v2.p1311v.AbstractC20992a;
import p193e.p194a.p1310v2.p1311v.C20993b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.attestation.AttestationManagerImpl$attest$5", f = "AttestationManager.kt", l = {78}, m = "invokeSuspend")
/* renamed from: e.a.v2.d */
/* loaded from: classes5-dex2jar.jar:e/a/v2/d.class */
public final class C20955d extends i implements p<i0, d<? super AbstractC20978o<String>>, Object> {

    /* renamed from: e */
    public int f58904e;

    /* renamed from: f */
    public final /* synthetic */ C20956e f58905f;

    /* renamed from: g */
    public final /* synthetic */ String f58906g;

    /* renamed from: h */
    public final /* synthetic */ AttestationEngine f58907h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20955d(C20956e c20956e, String str, AttestationEngine attestationEngine, d dVar) {
        super(2, dVar);
        this.f58905f = c20956e;
        this.f58906g = str;
        this.f58907h = attestationEngine;
    }

    /* renamed from: i */
    public final d<s> m10469i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20955d(this.f58905f, this.f58906g, this.f58907h, dVar);
    }

    /* renamed from: k */
    public final Object m10468k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C20955d(this.f58905f, this.f58906g, this.f58907h, dVar).m10467s(s.a);
    }

    /* renamed from: s */
    public final Object m10467s(Object obj) {
        a aVar = a.a;
        int i = this.f58904e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC20964i abstractC20964i = this.f58905f.f58915h;
            AttestationEngine attestationEngine = this.f58907h;
            String str = this.f58906g;
            this.f58904e = 1;
            Object m10452b = ((C20965j) abstractC20964i).m10452b(attestationEngine, str, false, this);
            obj = m10452b;
            if (m10452b == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC20978o abstractC20978o = (AbstractC20978o) obj;
        if (abstractC20978o instanceof AbstractC20978o.C20980b) {
            n.I0(this.f58905f.f58912e, this.f58907h, true, false, (Integer) null, 8, (Object) null);
        } else if (abstractC20978o instanceof AbstractC20978o.C20979a) {
            AbstractC20992a abstractC20992a = this.f58905f.f58912e;
            ((C20993b) abstractC20992a).m10438a(this.f58907h, false, false, n.a0(((AbstractC20978o.C20979a) abstractC20978o).f58947a));
        }
        return obj;
    }
}
