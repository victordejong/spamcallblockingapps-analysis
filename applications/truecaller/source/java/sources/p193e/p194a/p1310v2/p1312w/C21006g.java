package p193e.p194a.p1310v2.p1312w;

import com.truecaller.attestation.AttestationEngine;
import com.truecaller.attestation.data.VerificationAttestationErrorResponseDto;
import com.truecaller.attestation.data.VerificationAttestationRequestDto;
import com.truecaller.common.network.util.KnownEndpoints;
import e.m.d.y.n;
import e.m.e.k;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import s1.z.c.l;
import u3.l0;
import x3.a0;
import x3.b;
/* renamed from: e.a.v2.w.g */
/* loaded from: classes5-dex2jar.jar:e/a/v2/w/g.class */
public final class C21006g {

    /* renamed from: a */
    public final k f59010a = new k();

    /* renamed from: a */
    public C21007h m10423a(String str, AttestationEngine attestationEngine, String str2, long j) {
        b<l0> bVar;
        l.e(str, "attestation");
        l.e(attestationEngine, "engine");
        l.e(str2, "requestId");
        int ordinal = attestationEngine.ordinal();
        if (ordinal == 1) {
            l.e(str, "attestation");
            l.e(str2, "requestId");
            bVar = ((AbstractC21004e) C8367d.m28632b(KnownEndpoints.DEVICE_SAFETY, AbstractC21004e.class, C21005f.f59009b)).m10425h(new VerificationAttestationRequestDto(str, str2, j));
        } else if (ordinal != 2) {
            throw new IllegalArgumentException(attestationEngine + " is not supported");
        } else {
            l.e(str, "attestation");
            l.e(str2, "requestId");
            bVar = ((AbstractC21004e) C8367d.m28632b(KnownEndpoints.DEVICE_SAFETY, AbstractC21004e.class, C21005f.f59009b)).m10431b(new VerificationAttestationRequestDto(str, str2, j));
        }
        a0 execute = bVar.execute();
        int i = execute.a.e;
        l.d(execute, "response");
        return execute.b() ? new C21007h(i, C21009j.f59013a) : new C21007h(i, (AbstractC21008i) n.E(execute, this.f59010a, VerificationAttestationErrorResponseDto.class));
    }
}
