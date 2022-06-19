package org.bouncycastle.crypto.tls;

import java.util.Hashtable;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/DefaultTlsClient.class */
public abstract class DefaultTlsClient implements TlsClient {
    public TlsCipherFactory cipherFactory;
    public TlsClientContext context;
    public int selectedCipherSuite;
    public int selectedCompressionMethod;

    public DefaultTlsClient() {
        this(new DefaultTlsCipherFactory());
    }

    public DefaultTlsClient(TlsCipherFactory tlsCipherFactory) {
        this.cipherFactory = tlsCipherFactory;
    }

    public TlsKeyExchange createDHEKeyExchange(int i) {
        return new TlsDHEKeyExchange(this.context, i);
    }

    public TlsKeyExchange createDHKeyExchange(int i) {
        return new TlsDHKeyExchange(this.context, i);
    }

    public TlsKeyExchange createECDHEKeyExchange(int i) {
        return new TlsECDHEKeyExchange(this.context, i);
    }

    public TlsKeyExchange createECDHKeyExchange(int i) {
        return new TlsECDHKeyExchange(this.context, i);
    }

    public TlsKeyExchange createRSAKeyExchange() {
        return new TlsRSAKeyExchange(this.context);
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public TlsCipher getCipher() {
        TlsCipherFactory tlsCipherFactory;
        TlsClientContext tlsClientContext;
        int i;
        int i2 = this.selectedCipherSuite;
        if (i2 != 10 && i2 != 13 && i2 != 16 && i2 != 19 && i2 != 22) {
            switch (i2) {
                default:
                    switch (i2) {
                        default:
                            switch (i2) {
                                case CipherSuite.TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA /* 49155 */:
                                    break;
                                case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA /* 49156 */:
                                    break;
                                case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA /* 49157 */:
                                    break;
                                default:
                                    switch (i2) {
                                        case CipherSuite.TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA /* 49160 */:
                                            break;
                                        case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA /* 49161 */:
                                            break;
                                        case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA /* 49162 */:
                                            break;
                                        default:
                                            switch (i2) {
                                                case CipherSuite.TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA /* 49165 */:
                                                    break;
                                                case CipherSuite.TLS_ECDH_RSA_WITH_AES_128_CBC_SHA /* 49166 */:
                                                    break;
                                                case CipherSuite.TLS_ECDH_RSA_WITH_AES_256_CBC_SHA /* 49167 */:
                                                    break;
                                                default:
                                                    switch (i2) {
                                                        case CipherSuite.TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA /* 49170 */:
                                                            break;
                                                        case CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA /* 49171 */:
                                                            break;
                                                        case CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA /* 49172 */:
                                                            break;
                                                        default:
                                                            throw new TlsFatalAlert((short) 80);
                                                    }
                                            }
                                    }
                            }
                        case 53:
                        case 54:
                        case 55:
                        case 56:
                        case 57:
                            tlsCipherFactory = this.cipherFactory;
                            tlsClientContext = this.context;
                            i = 9;
                            break;
                    }
                case 47:
                case 48:
                case 49:
                case 50:
                case 51:
                    tlsCipherFactory = this.cipherFactory;
                    tlsClientContext = this.context;
                    i = 8;
                    break;
            }
            return tlsCipherFactory.createCipher(tlsClientContext, i, 2);
        }
        tlsCipherFactory = this.cipherFactory;
        tlsClientContext = this.context;
        i = 7;
        return tlsCipherFactory.createCipher(tlsClientContext, i, 2);
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public int[] getCipherSuites() {
        return new int[]{57, 56, 51, 50, 22, 19, 53, 47, 10};
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public Hashtable getClientExtensions() {
        return null;
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public TlsCompression getCompression() {
        if (this.selectedCompressionMethod == 0) {
            return new TlsNullCompression();
        }
        throw new TlsFatalAlert((short) 80);
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public short[] getCompressionMethods() {
        return new short[]{0};
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public TlsKeyExchange getKeyExchange() {
        int i = this.selectedCipherSuite;
        if (i != 10) {
            if (i != 13) {
                if (i != 16) {
                    if (i != 19) {
                        if (i != 22) {
                            switch (i) {
                                case 47:
                                    break;
                                case 48:
                                    break;
                                case 49:
                                    break;
                                case 50:
                                    break;
                                case 51:
                                    break;
                                default:
                                    switch (i) {
                                        case 53:
                                            break;
                                        case 54:
                                            break;
                                        case 55:
                                            break;
                                        case 56:
                                            break;
                                        case 57:
                                            break;
                                        default:
                                            switch (i) {
                                                case CipherSuite.TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA /* 49155 */:
                                                case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA /* 49156 */:
                                                case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA /* 49157 */:
                                                    return createECDHKeyExchange(16);
                                                default:
                                                    switch (i) {
                                                        case CipherSuite.TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA /* 49160 */:
                                                        case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA /* 49161 */:
                                                        case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA /* 49162 */:
                                                            return createECDHEKeyExchange(17);
                                                        default:
                                                            switch (i) {
                                                                case CipherSuite.TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA /* 49165 */:
                                                                case CipherSuite.TLS_ECDH_RSA_WITH_AES_128_CBC_SHA /* 49166 */:
                                                                case CipherSuite.TLS_ECDH_RSA_WITH_AES_256_CBC_SHA /* 49167 */:
                                                                    return createECDHKeyExchange(18);
                                                                default:
                                                                    switch (i) {
                                                                        case CipherSuite.TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA /* 49170 */:
                                                                        case CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA /* 49171 */:
                                                                        case CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA /* 49172 */:
                                                                            return createECDHEKeyExchange(19);
                                                                        default:
                                                                            throw new TlsFatalAlert((short) 80);
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                        }
                        return createDHEKeyExchange(5);
                    }
                    return createDHEKeyExchange(3);
                }
                return createDHKeyExchange(9);
            }
            return createDHKeyExchange(7);
        }
        return createRSAKeyExchange();
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public void init(TlsClientContext tlsClientContext) {
        this.context = tlsClientContext;
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public void notifySecureRenegotiation(boolean z) {
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public void notifySelectedCipherSuite(int i) {
        this.selectedCipherSuite = i;
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public void notifySelectedCompressionMethod(short s) {
        this.selectedCompressionMethod = s;
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public void notifySessionID(byte[] bArr) {
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public void processServerExtensions(Hashtable hashtable) {
    }
}
