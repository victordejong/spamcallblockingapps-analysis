package okhttp3;

import java.security.cert.Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.a.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Ljava/security/cert/Certificate;", "invoke"}, k = 3, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/Handshake$peerCertificates$2.class */
final class Handshake$peerCertificates$2 extends r implements Function0<List<? extends Certificate>> {
    final /* synthetic */ Function0 $peerCertificatesFn;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Handshake$peerCertificates$2(Function0 function0) {
        super(0);
        this.$peerCertificatesFn = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends Certificate> invoke() {
        z zVar;
        try {
            zVar = (List) this.$peerCertificatesFn.invoke();
        } catch (SSLPeerUnverifiedException e) {
            zVar = z.f36608a;
        }
        return zVar;
    }
}
