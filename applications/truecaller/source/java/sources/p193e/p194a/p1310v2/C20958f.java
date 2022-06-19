package p193e.p194a.p1310v2;

import com.truecaller.attestation.AttestationEngine;
import com.truecaller.attestation.data.AttestationNonceDto;
import java.io.IOException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1130q0.C19259e;
import p193e.p194a.p1310v2.p1312w.C21000b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
import x3.a0;
@e(c = "com.truecaller.attestation.AttestationManagerImpl$fetchNonce$response$1", f = "AttestationManager.kt", l = {93}, m = "invokeSuspend")
/* renamed from: e.a.v2.f */
/* loaded from: classes5-dex2jar.jar:e/a/v2/f.class */
public final class C20958f extends i implements p<i0, d<? super a0<AttestationNonceDto>>, Object> {

    /* renamed from: e */
    public int f58918e;

    /* renamed from: f */
    public final /* synthetic */ C20956e f58919f;

    /* renamed from: g */
    public final /* synthetic */ AttestationEngine f58920g;

    /* renamed from: e.a.v2.f$a */
    /* loaded from: classes5-dex2jar.jar:e/a/v2/f$a.class */
    public static final class C20959a extends m implements l<Integer, a0<AttestationNonceDto>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20959a() {
            super(1);
            C20958f.this = r4;
        }

        /* renamed from: d */
        public Object m10459d(Object obj) {
            a0<AttestationNonceDto> a0Var;
            ((Number) obj).intValue();
            try {
                C20958f c20958f = C20958f.this;
                a0Var = ((C21000b) c20958f.f58919f.f58914g).m10434a(c20958f.f58920g);
            } catch (IOException e) {
                a0Var = null;
            }
            return a0Var;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20958f(C20956e c20956e, AttestationEngine attestationEngine, d dVar) {
        super(2, dVar);
        this.f58919f = c20956e;
        this.f58920g = attestationEngine;
    }

    /* renamed from: i */
    public final d<s> m10462i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C20958f(this.f58919f, this.f58920g, dVar);
    }

    /* renamed from: k */
    public final Object m10461k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        return new C20958f(this.f58919f, this.f58920g, dVar).m10460s(s.a);
    }

    /* renamed from: s */
    public final Object m10460s(Object obj) {
        a aVar = a.a;
        int i = this.f58918e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C20956e c20956e = this.f58919f;
            C19259e c19259e = c20956e.f58910c;
            long j = c20956e.f58916i;
            C20959a c20959a = new C20959a();
            this.f58918e = 1;
            Object m13731b = c19259e.m13731b(2, j, c20959a, this);
            obj = m13731b;
            if (m13731b == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return obj;
    }
}
