package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.util.Hashtable;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/SRPTlsServer.class */
public class SRPTlsServer extends AbstractTlsServer {
    protected TlsSRPLoginParameters loginParameters;
    protected byte[] srpIdentity;
    protected TlsSRPIdentityManager srpIdentityManager;

    public SRPTlsServer(TlsCipherFactory tlsCipherFactory, TlsSRPIdentityManager tlsSRPIdentityManager) {
        super(tlsCipherFactory);
        this.srpIdentity = null;
        this.loginParameters = null;
        this.srpIdentityManager = tlsSRPIdentityManager;
    }

    public SRPTlsServer(TlsSRPIdentityManager tlsSRPIdentityManager) {
        this(new DefaultTlsCipherFactory(), tlsSRPIdentityManager);
    }

    protected TlsKeyExchange createSRPKeyExchange(int i) {
        return new TlsSRPKeyExchange(i, this.supportedSignatureAlgorithms, this.srpIdentity, this.loginParameters);
    }

    @Override // org.spongycastle.crypto.tls.AbstractTlsServer
    protected int[] getCipherSuites() {
        return new int[]{CipherSuite.TLS_SRP_SHA_DSS_WITH_AES_256_CBC_SHA, CipherSuite.TLS_SRP_SHA_DSS_WITH_AES_128_CBC_SHA, CipherSuite.TLS_SRP_SHA_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_SRP_SHA_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_SRP_SHA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_SRP_SHA_WITH_AES_128_CBC_SHA};
    }

    @Override // org.spongycastle.crypto.tls.TlsServer
    public TlsCredentials getCredentials() throws IOException {
        switch (TlsUtils.getKeyExchangeAlgorithm(this.selectedCipherSuite)) {
            case 21:
                return null;
            case 22:
                return getDSASignerCredentials();
            case 23:
                return getRSASignerCredentials();
            default:
                throw new TlsFatalAlert((short) 80);
        }
    }

    protected TlsSignerCredentials getDSASignerCredentials() throws IOException {
        throw new TlsFatalAlert((short) 80);
    }

    @Override // org.spongycastle.crypto.tls.TlsServer
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

    protected TlsSignerCredentials getRSASignerCredentials() throws IOException {
        throw new TlsFatalAlert((short) 80);
    }

    @Override // org.spongycastle.crypto.tls.AbstractTlsServer, org.spongycastle.crypto.tls.TlsServer
    public int getSelectedCipherSuite() throws IOException {
        int selectedCipherSuite = super.getSelectedCipherSuite();
        if (TlsSRPUtils.isSRPCipherSuite(selectedCipherSuite)) {
            if (this.srpIdentity != null) {
                this.loginParameters = this.srpIdentityManager.getLoginParameters(this.srpIdentity);
            }
            if (this.loginParameters == null) {
                throw new TlsFatalAlert((short) 115);
            }
        }
        return selectedCipherSuite;
    }

    @Override // org.spongycastle.crypto.tls.AbstractTlsServer, org.spongycastle.crypto.tls.TlsServer
    public void processClientExtensions(Hashtable hashtable) throws IOException {
        super.processClientExtensions(hashtable);
        this.srpIdentity = TlsSRPUtils.getSRPExtension(hashtable);
    }
}
