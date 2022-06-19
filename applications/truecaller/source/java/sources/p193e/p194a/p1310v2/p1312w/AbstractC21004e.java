package p193e.p194a.p1310v2.p1312w;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.attestation.data.AttestationNonceDto;
import com.truecaller.attestation.data.AttestationRequestDto;
import com.truecaller.attestation.data.AttestationSuccessResponseDto;
import com.truecaller.attestation.data.VerificationAttestationRequestDto;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import u3.l0;
import x3.b;
import x3.h0.a;
import x3.h0.f;
import x3.h0.o;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bb\u0018��2\u00020\u0001J\u0015\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H'¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H'¢\u0006\u0004\b\u0006\u0010\u0005J\u0015\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H'¢\u0006\u0004\b\u0007\u0010\u0005J\u001f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00022\b\b\u0001\u0010\t\u001a\u00020\bH'¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u00022\b\b\u0001\u0010\t\u001a\u00020\bH'¢\u0006\u0004\b\r\u0010\fJ\u001f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\u00022\b\b\u0001\u0010\t\u001a\u00020\bH'¢\u0006\u0004\b\u000e\u0010\fJ\u001f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u00022\b\b\u0001\u0010\t\u001a\u00020\u000fH'¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\u00022\b\b\u0001\u0010\t\u001a\u00020\u000fH'¢\u0006\u0004\b\u0013\u0010\u0012¨\u0006\u0014"}, d2 = {"Le/a/v2/w/e;", "", "Lx3/b;", "Lcom/truecaller/attestation/data/AttestationNonceDto;", "f", "()Lx3/b;", AbstractC2405c.f7629a, "g", "Lcom/truecaller/attestation/data/AttestationRequestDto;", "requestDto", "Lcom/truecaller/attestation/data/AttestationSuccessResponseDto;", "a", "(Lcom/truecaller/attestation/data/AttestationRequestDto;)Lx3/b;", "e", "d", "Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;", "Lu3/l0;", "h", "(Lcom/truecaller/attestation/data/VerificationAttestationRequestDto;)Lx3/b;", C22021b.f61237c, "attestation_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.v2.w.e */
/* loaded from: classes5-dex2jar.jar:e/a/v2/w/e.class */
public interface AbstractC21004e {
    @o("/v1.1/attestation/android/verify")
    /* renamed from: a */
    b<AttestationSuccessResponseDto> m10432a(@a AttestationRequestDto attestationRequestDto);

    @o("/v1/prever/huawei/verify/")
    /* renamed from: b */
    b<l0> m10431b(@a VerificationAttestationRequestDto verificationAttestationRequestDto);

    @f("/v1/attestation/huawei/getNonce")
    /* renamed from: c */
    b<AttestationNonceDto> m10430c();

    @o("/v1/playintegrity/android/verify")
    /* renamed from: d */
    b<AttestationSuccessResponseDto> m10429d(@a AttestationRequestDto attestationRequestDto);

    @o("/v1/attestation/huawei/verify")
    /* renamed from: e */
    b<AttestationSuccessResponseDto> m10428e(@a AttestationRequestDto attestationRequestDto);

    @f("/v1/attestation/android/getNonce")
    /* renamed from: f */
    b<AttestationNonceDto> m10427f();

    @f("/v1/playintegrity/android/getNonce")
    /* renamed from: g */
    b<AttestationNonceDto> m10426g();

    @o("/v1/prever/safetynet/verify/")
    /* renamed from: h */
    b<l0> m10425h(@a VerificationAttestationRequestDto verificationAttestationRequestDto);
}
