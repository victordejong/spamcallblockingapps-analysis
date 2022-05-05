package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.util.Hashtable;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/SRPTlsClient.class */
public class SRPTlsClient extends AbstractTlsClient {
    protected TlsSRPGroupVerifier groupVerifier;
    protected byte[] identity;
    protected byte[] password;

    public SRPTlsClient(TlsCipherFactory tlsCipherFactory, TlsSRPGroupVerifier tlsSRPGroupVerifier, byte[] bArr, byte[] bArr2) {
        super(tlsCipherFactory);
        this.groupVerifier = tlsSRPGroupVerifier;
        this.identity = Arrays.clone(bArr);
        this.password = Arrays.clone(bArr2);
    }

    public SRPTlsClient(TlsCipherFactory tlsCipherFactory, byte[] bArr, byte[] bArr2) {
        this(tlsCipherFactory, new DefaultTlsSRPGroupVerifier(), bArr, bArr2);
    }

    public SRPTlsClient(byte[] bArr, byte[] bArr2) {
        this(new DefaultTlsCipherFactory(), new DefaultTlsSRPGroupVerifier(), bArr, bArr2);
    }

    protected TlsKeyExchange createSRPKeyExchange(int i) {
        return new TlsSRPKeyExchange(i, this.supportedSignatureAlgorithms, this.groupVerifier, this.identity, this.password);
    }

    @Override // org.spongycastle.crypto.tls.TlsClient
    public TlsAuthentication getAuthentication() throws IOException {
        throw new TlsFatalAlert((short) 80);
    }

    @Override // org.spongycastle.crypto.tls.TlsClient
    public int[] getCipherSuites() {
        return new int[]{CipherSuite.TLS_SRP_SHA_RSA_WITH_AES_128_CBC_SHA};
    }

    @Override // org.spongycastle.crypto.tls.AbstractTlsClient, org.spongycastle.crypto.tls.TlsClient
    public Hashtable getClientExtensions() throws IOException {
        Hashtable ensureExtensionsInitialised = TlsExtensionsUtils.ensureExtensionsInitialised(super.getClientExtensions());
        TlsSRPUtils.addSRPExtension(ensureExtensionsInitialised, this.identity);
        return ensureExtensionsInitialised;
    }

    @Override // org.spongycastle.crypto.tls.TlsClient
    public TlsKeyExchange getKeyExchange() throws IOException {
        int keyExchangeAlgorithm = TlsUtils.getKeyExchangeAlgorithm(this.selectedCipherSuite);
        switch (keyExchangeAlgorithm) {
            case 21:
            case 22:
            case 23:
                return createSRPKeyExchange(keyExchangeAlgorithm);
            default:
                throw new TlsFatalAlert((short) 80);
        }
    }

    @Override // org.spongycastle.crypto.tls.AbstractTlsClient, org.spongycastle.crypto.tls.TlsClient
    public void processServerExtensions(Hashtable hashtable) throws IOException {
        if (TlsUtils.hasExpectedEmptyExtensionData(hashtable, TlsSRPUtils.EXT_SRP, (short) 47) || !requireSRPServerExtension()) {
            super.processServerExtensions(hashtable);
            return;
        }
        throw new TlsFatalAlert((short) 47);
    }

    protected boolean requireSRPServerExtension() {
        return false;
    }
}
