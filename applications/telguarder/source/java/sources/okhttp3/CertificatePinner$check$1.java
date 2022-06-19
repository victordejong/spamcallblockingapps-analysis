package okhttp3;

import java.security.cert.X509Certificate;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\f\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, m400d2 = {"<anonymous>", "", "Ljava/security/cert/X509Certificate;", "invoke"}, m399k = 3, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okhttp3/CertificatePinner$check$1.class */
public final class CertificatePinner$check$1 extends Lambda implements Function0<List<? extends X509Certificate>> {
    final /* synthetic */ String $hostname;
    final /* synthetic */ List $peerCertificates;
    final /* synthetic */ CertificatePinner this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificatePinner$check$1(CertificatePinner certificatePinner, List list, String str) {
        super(0);
        this.this$0 = certificatePinner;
        this.$peerCertificates = list;
        this.$hostname = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (r6 != null) goto L7;
     */
    @Override // kotlin.jvm.functions.Function0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<? extends java.security.cert.X509Certificate> invoke() {
        /*
            r5 = this;
            r0 = r5
            okhttp3.CertificatePinner r0 = r0.this$0
            okhttp3.internal.tls.CertificateChainCleaner r0 = r0.getCertificateChainCleaner$okhttp()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L20
            r0 = r6
            r1 = r5
            java.util.List r1 = r1.$peerCertificates
            r2 = r5
            java.lang.String r2 = r2.$hostname
            java.util.List r0 = r0.clean(r1, r2)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L20
            goto L25
        L20:
            r0 = r5
            java.util.List r0 = r0.$peerCertificates
            r6 = r0
        L25:
            r0 = r6
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            r7 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r7
            r3 = 10
            int r2 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r2, r3)
            r1.<init>(r2)
            java.util.Collection r0 = (java.util.Collection) r0
            r6 = r0
            r0 = r7
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L42:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L6a
            r0 = r7
            java.lang.Object r0 = r0.next()
            java.security.cert.Certificate r0 = (java.security.cert.Certificate) r0
            r8 = r0
            r0 = r8
            java.lang.String r1 = "null cannot be cast to non-null type java.security.cert.X509Certificate"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r6
            r1 = r8
            java.security.cert.X509Certificate r1 = (java.security.cert.X509Certificate) r1
            boolean r0 = r0.add(r1)
            goto L42
        L6a:
            r0 = r6
            java.util.List r0 = (java.util.List) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.CertificatePinner$check$1.invoke():java.util.List");
    }
}
