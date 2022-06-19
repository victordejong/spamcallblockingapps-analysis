package p193e.p194a.p1310v2.p1312w;

import com.truecaller.attestation.AttestationEngine;
import com.truecaller.attestation.data.AttestationErrorResponseDto;
import com.truecaller.attestation.data.AttestationNonceDto;
import com.truecaller.attestation.data.AttestationRequestDto;
import com.truecaller.attestation.data.AttestationSuccessResponseDto;
import com.truecaller.common.network.util.KnownEndpoints;
import e.m.d.y.n;
import e.m.e.k;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import s1.g;
import s1.i;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.l;
import s1.z.c.m;
import x3.a0;
import x3.b;
/* renamed from: e.a.v2.w.b */
/* loaded from: classes5-dex2jar.jar:e/a/v2/w/b.class */
public final class C21000b implements AbstractC20999a {

    /* renamed from: a */
    public final g f59004a = C25225a.m3978P1(C21001a.f59006b);

    /* renamed from: b */
    public final AbstractC19230g f59005b;

    /* renamed from: e.a.v2.w.b$a */
    /* loaded from: classes5-dex2jar.jar:e/a/v2/w/b$a.class */
    public static final class C21001a extends m implements a<k> {

        /* renamed from: b */
        public static final C21001a f59006b = new C21001a();

        public C21001a() {
            super(0);
        }

        public Object invoke() {
            return new k();
        }
    }

    @Inject
    public C21000b(AbstractC19230g abstractC19230g) {
        l.e(abstractC19230g, "deviceInfoUtil");
        this.f59005b = abstractC19230g;
    }

    /* renamed from: a */
    public a0<AttestationNonceDto> m10434a(AttestationEngine attestationEngine) {
        b<AttestationNonceDto> bVar;
        l.e(attestationEngine, "engine");
        int ordinal = attestationEngine.ordinal();
        if (ordinal == 0) {
            bVar = ((AbstractC21004e) C8367d.m28633a(KnownEndpoints.DEVICE_SAFETY, AbstractC21004e.class)).m10426g();
        } else if (ordinal == 1) {
            bVar = ((AbstractC21004e) C8367d.m28633a(KnownEndpoints.DEVICE_SAFETY, AbstractC21004e.class)).m10427f();
        } else if (ordinal != 2) {
            throw new i();
        } else {
            bVar = ((AbstractC21004e) C8367d.m28633a(KnownEndpoints.DEVICE_SAFETY, AbstractC21004e.class)).m10430c();
        }
        a0<AttestationNonceDto> execute = bVar.execute();
        l.d(execute, "when (engine) {\n        …ity()\n        }.execute()");
        return execute;
    }

    /* renamed from: b */
    public C21002c m10433b(String str, AttestationEngine attestationEngine) {
        b<AttestationSuccessResponseDto> bVar;
        l.e(str, "attestation");
        l.e(attestationEngine, "engine");
        int ordinal = attestationEngine.ordinal();
        if (ordinal == 0) {
            boolean mo13788i = this.f59005b.mo13788i();
            l.e(str, "attestation");
            bVar = ((AbstractC21004e) C8367d.m28633a(KnownEndpoints.DEVICE_SAFETY, AbstractC21004e.class)).m10429d(new AttestationRequestDto(str, mo13788i));
        } else if (ordinal == 1) {
            l.e(str, "attestation");
            bVar = ((AbstractC21004e) C8367d.m28633a(KnownEndpoints.DEVICE_SAFETY, AbstractC21004e.class)).m10432a(new AttestationRequestDto(str, false, 2, (f) null));
        } else if (ordinal != 2) {
            throw new i();
        } else {
            l.e(str, "attestation");
            bVar = ((AbstractC21004e) C8367d.m28633a(KnownEndpoints.DEVICE_SAFETY, AbstractC21004e.class)).m10428e(new AttestationRequestDto(str, false, 2, (f) null));
        }
        a0 execute = bVar.execute();
        int i = execute.a.e;
        l.d(execute, "response");
        return execute.b() ? new C21002c(i, (AbstractC21003d) execute.b) : new C21002c(i, (AbstractC21003d) n.E(execute, (k) this.f59004a.getValue(), AttestationErrorResponseDto.class));
    }
}
