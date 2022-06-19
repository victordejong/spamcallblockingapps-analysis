package org.bouncycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.crypto.prng.ThreadedSeedGenerator;
import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsProtocolHandler.class */
public class TlsProtocolHandler {
    private static final short CS_CERTIFICATE_REQUEST_RECEIVED = 5;
    private static final short CS_CERTIFICATE_VERIFY_SEND = 8;
    private static final short CS_CLIENT_CHANGE_CIPHER_SPEC_SEND = 9;
    private static final short CS_CLIENT_FINISHED_SEND = 10;
    private static final short CS_CLIENT_HELLO_SEND = 1;
    private static final short CS_CLIENT_KEY_EXCHANGE_SEND = 7;
    private static final short CS_DONE = 12;
    private static final short CS_SERVER_CERTIFICATE_RECEIVED = 3;
    private static final short CS_SERVER_CHANGE_CIPHER_SPEC_RECEIVED = 11;
    private static final short CS_SERVER_HELLO_DONE_RECEIVED = 6;
    private static final short CS_SERVER_HELLO_RECEIVED = 2;
    private static final short CS_SERVER_KEY_EXCHANGE_RECEIVED = 4;
    private static final String TLS_ERROR_MESSAGE = "Internal TLS error, this could be an attack";
    private ByteQueue alertQueue;
    private boolean appDataReady;
    private ByteQueue applicationDataQueue;
    private TlsAuthentication authentication;
    private CertificateRequest certificateRequest;
    private ByteQueue changeCipherSpecQueue;
    private Hashtable clientExtensions;
    private boolean closed;
    private short connection_state;
    private boolean failedWithError;
    private ByteQueue handshakeQueue;
    private TlsKeyExchange keyExchange;
    private int[] offeredCipherSuites;
    private short[] offeredCompressionMethods;
    private SecureRandom random;

    /* renamed from: rs */
    private RecordStream f7602rs;
    private SecurityParameters securityParameters;
    private TlsClient tlsClient;
    private TlsClientContextImpl tlsClientContext;
    private TlsInputStream tlsInputStream;
    private TlsOutputStream tlsOutputStream;
    private static final Integer EXT_RenegotiationInfo = new Integer(65281);
    private static final byte[] emptybuf = new byte[0];

    public TlsProtocolHandler(InputStream inputStream, OutputStream outputStream) {
        this(inputStream, outputStream, createSecureRandom());
    }

    public TlsProtocolHandler(InputStream inputStream, OutputStream outputStream, SecureRandom secureRandom) {
        this.applicationDataQueue = new ByteQueue();
        this.changeCipherSpecQueue = new ByteQueue();
        this.alertQueue = new ByteQueue();
        this.handshakeQueue = new ByteQueue();
        this.tlsInputStream = null;
        this.tlsOutputStream = null;
        this.closed = false;
        this.failedWithError = false;
        this.appDataReady = false;
        this.securityParameters = null;
        this.tlsClientContext = null;
        this.tlsClient = null;
        this.offeredCipherSuites = null;
        this.offeredCompressionMethods = null;
        this.keyExchange = null;
        this.authentication = null;
        this.certificateRequest = null;
        this.connection_state = (short) 0;
        this.f7602rs = new RecordStream(this, inputStream, outputStream);
        this.random = secureRandom;
    }

    private static boolean arrayContains(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private static boolean arrayContains(short[] sArr, short s) {
        for (short s2 : sArr) {
            if (s2 == s) {
                return true;
            }
        }
        return false;
    }

    private static byte[] createRenegotiationInfo(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        TlsUtils.writeOpaque8(bArr, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    private static SecureRandom createSecureRandom() {
        ThreadedSeedGenerator threadedSeedGenerator = new ThreadedSeedGenerator();
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.setSeed(threadedSeedGenerator.generateSeed(20, true));
        return secureRandom;
    }

    private void failWithError(short s, short s2) {
        if (!this.closed) {
            this.closed = true;
            if (s == 2) {
                this.failedWithError = true;
            }
            sendAlert(s, s2);
            this.f7602rs.close();
            if (s == 2) {
                throw new IOException(TLS_ERROR_MESSAGE);
            }
            return;
        }
        throw new IOException(TLS_ERROR_MESSAGE);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x005a -> B:11:0x004f). Please submit an issue!!! */
    private void processAlert() {
        while (this.alertQueue.size() >= 2) {
            byte[] bArr = new byte[2];
            this.alertQueue.read(bArr, 0, 2, 0);
            this.alertQueue.removeData(2);
            short s = bArr[0];
            short s2 = bArr[1];
            if (s == 2) {
                this.failedWithError = true;
                this.closed = true;
                try {
                    this.f7602rs.close();
                } catch (Exception e) {
                }
                throw new IOException(TLS_ERROR_MESSAGE);
            } else if (s2 == 0) {
                failWithError((short) 1, (short) 0);
            }
        }
    }

    private void processApplicationData() {
    }

    private void processChangeCipherSpec() {
        while (this.changeCipherSpecQueue.size() > 0) {
            byte[] bArr = new byte[1];
            this.changeCipherSpecQueue.read(bArr, 0, 1, 0);
            this.changeCipherSpecQueue.removeData(1);
            if (bArr[0] != 1) {
                failWithError((short) 2, (short) 10);
            }
            if (this.connection_state != 10) {
                failWithError((short) 2, (short) 40);
            }
            this.f7602rs.serverClientSpecReceived();
            this.connection_state = (short) 11;
        }
    }

    private void processHandshake() {
        boolean z;
        do {
            z = false;
            if (this.handshakeQueue.size() >= 4) {
                byte[] bArr = new byte[4];
                this.handshakeQueue.read(bArr, 0, 4, 0);
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                short readUint8 = TlsUtils.readUint8(byteArrayInputStream);
                int readUint24 = TlsUtils.readUint24(byteArrayInputStream);
                int i = readUint24 + 4;
                z = false;
                if (this.handshakeQueue.size() >= i) {
                    byte[] bArr2 = new byte[readUint24];
                    this.handshakeQueue.read(bArr2, 0, readUint24, 4);
                    this.handshakeQueue.removeData(i);
                    if (readUint8 != 0 && readUint8 != 20) {
                        this.f7602rs.updateHandshakeData(bArr, 0, 4);
                        this.f7602rs.updateHandshakeData(bArr2, 0, readUint24);
                    }
                    processHandshakeMessage(readUint8, bArr2);
                    z = true;
                }
            }
        } while (z);
    }

    private void processHandshakeMessage(short s, byte[] bArr) {
        Certificate certificate;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        if (s == 0) {
            if (this.connection_state != 12) {
                return;
            }
            sendAlert((short) 1, (short) 100);
            return;
        }
        if (s != 2) {
            if (s != 20) {
                TlsSignerCredentials tlsSignerCredentials = null;
                switch (s) {
                    case 11:
                        if (this.connection_state != 2) {
                            failWithError((short) 2, (short) 10);
                        } else {
                            Certificate parse = Certificate.parse(byteArrayInputStream);
                            assertEmpty(byteArrayInputStream);
                            this.keyExchange.processServerCertificate(parse);
                            TlsAuthentication authentication = this.tlsClient.getAuthentication();
                            this.authentication = authentication;
                            authentication.notifyServerCertificate(parse);
                        }
                        this.connection_state = (short) 3;
                        return;
                    case 12:
                        short s2 = this.connection_state;
                        if (s2 == 2) {
                            this.keyExchange.skipServerCertificate();
                            this.authentication = null;
                        } else if (s2 != 3) {
                            failWithError((short) 2, (short) 10);
                            this.connection_state = (short) 4;
                            return;
                        }
                        this.keyExchange.processServerKeyExchange(byteArrayInputStream);
                        assertEmpty(byteArrayInputStream);
                        this.connection_state = (short) 4;
                        return;
                    case 13:
                        short s3 = this.connection_state;
                        if (s3 == 3) {
                            this.keyExchange.skipServerKeyExchange();
                        } else if (s3 != 4) {
                            failWithError((short) 2, (short) 10);
                            this.connection_state = (short) 5;
                            return;
                        }
                        if (this.authentication == null) {
                            failWithError((short) 2, (short) 40);
                        }
                        int readUint8 = TlsUtils.readUint8(byteArrayInputStream);
                        short[] sArr = new short[readUint8];
                        for (int i = 0; i < readUint8; i++) {
                            sArr[i] = TlsUtils.readUint8(byteArrayInputStream);
                        }
                        byte[] readOpaque16 = TlsUtils.readOpaque16(byteArrayInputStream);
                        assertEmpty(byteArrayInputStream);
                        Vector vector = new Vector();
                        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(readOpaque16);
                        while (byteArrayInputStream2.available() > 0) {
                            vector.addElement(X500Name.getInstance(ASN1Object.fromByteArray(TlsUtils.readOpaque16(byteArrayInputStream2))));
                        }
                        CertificateRequest certificateRequest = new CertificateRequest(sArr, vector);
                        this.certificateRequest = certificateRequest;
                        this.keyExchange.validateCertificateRequest(certificateRequest);
                        this.connection_state = (short) 5;
                        return;
                    case 14:
                        short s4 = this.connection_state;
                        if (s4 == 3) {
                            this.keyExchange.skipServerKeyExchange();
                        } else if (s4 != 4 && s4 != 5) {
                            failWithError((short) 2, (short) 40);
                            return;
                        }
                        assertEmpty(byteArrayInputStream);
                        this.connection_state = (short) 6;
                        CertificateRequest certificateRequest2 = this.certificateRequest;
                        if (certificateRequest2 == null) {
                            this.keyExchange.skipClientCredentials();
                        } else {
                            TlsCredentials clientCredentials = this.authentication.getClientCredentials(certificateRequest2);
                            TlsKeyExchange tlsKeyExchange = this.keyExchange;
                            if (clientCredentials == null) {
                                tlsKeyExchange.skipClientCredentials();
                                certificate = Certificate.EMPTY_CHAIN;
                            } else {
                                tlsKeyExchange.processClientCredentials(clientCredentials);
                                certificate = clientCredentials.getCertificate();
                            }
                            sendClientCertificate(certificate);
                            tlsSignerCredentials = clientCredentials;
                        }
                        sendClientKeyExchange();
                        this.connection_state = (short) 7;
                        if (tlsSignerCredentials != null && (tlsSignerCredentials instanceof TlsSignerCredentials)) {
                            sendCertificateVerify(tlsSignerCredentials.generateCertificateSignature(this.f7602rs.getCurrentHash()));
                            this.connection_state = (short) 8;
                        }
                        this.f7602rs.writeMessage((short) 20, new byte[]{1}, 0, 1);
                        this.connection_state = (short) 9;
                        byte[] generatePremasterSecret = this.keyExchange.generatePremasterSecret();
                        SecurityParameters securityParameters = this.securityParameters;
                        securityParameters.masterSecret = TlsUtils.PRF(generatePremasterSecret, "master secret", TlsUtils.concat(securityParameters.clientRandom, securityParameters.serverRandom), 48);
                        Arrays.fill(generatePremasterSecret, (byte) 0);
                        this.f7602rs.clientCipherSpecDecided(this.tlsClient.getCompression(), this.tlsClient.getCipher());
                        byte[] PRF = TlsUtils.PRF(this.securityParameters.masterSecret, "client finished", this.f7602rs.getCurrentHash(), 12);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        TlsUtils.writeUint8((short) 20, byteArrayOutputStream);
                        TlsUtils.writeOpaque24(PRF, byteArrayOutputStream);
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        this.f7602rs.writeMessage((short) 22, byteArray, 0, byteArray.length);
                        this.connection_state = (short) 10;
                        return;
                }
            } else if (this.connection_state == 11) {
                byte[] bArr2 = new byte[12];
                TlsUtils.readFully(bArr2, byteArrayInputStream);
                assertEmpty(byteArrayInputStream);
                if (!Arrays.constantTimeAreEqual(TlsUtils.PRF(this.securityParameters.masterSecret, "server finished", this.f7602rs.getCurrentHash(), 12), bArr2)) {
                    failWithError((short) 2, (short) 40);
                }
                this.connection_state = (short) 12;
                this.appDataReady = true;
                return;
            }
        } else if (this.connection_state == 1) {
            TlsUtils.checkVersion(byteArrayInputStream, this);
            byte[] bArr3 = new byte[32];
            this.securityParameters.serverRandom = bArr3;
            TlsUtils.readFully(bArr3, byteArrayInputStream);
            byte[] readOpaque8 = TlsUtils.readOpaque8(byteArrayInputStream);
            if (readOpaque8.length > 32) {
                failWithError((short) 2, (short) 47);
            }
            this.tlsClient.notifySessionID(readOpaque8);
            int readUint16 = TlsUtils.readUint16(byteArrayInputStream);
            if (!arrayContains(this.offeredCipherSuites, readUint16) || readUint16 == 255) {
                failWithError((short) 2, (short) 47);
            }
            this.tlsClient.notifySelectedCipherSuite(readUint16);
            short readUint82 = TlsUtils.readUint8(byteArrayInputStream);
            if (!arrayContains(this.offeredCompressionMethods, readUint82)) {
                failWithError((short) 2, (short) 47);
            }
            this.tlsClient.notifySelectedCompressionMethod(readUint82);
            Hashtable hashtable = new Hashtable();
            if (byteArrayInputStream.available() > 0) {
                ByteArrayInputStream byteArrayInputStream3 = new ByteArrayInputStream(TlsUtils.readOpaque16(byteArrayInputStream));
                while (byteArrayInputStream3.available() > 0) {
                    Integer num = new Integer(TlsUtils.readUint16(byteArrayInputStream3));
                    byte[] readOpaque162 = TlsUtils.readOpaque16(byteArrayInputStream3);
                    if (!num.equals(EXT_RenegotiationInfo) && this.clientExtensions.get(num) == null) {
                        failWithError((short) 2, (short) 110);
                    }
                    if (hashtable.containsKey(num)) {
                        failWithError((short) 2, (short) 47);
                    }
                    hashtable.put(num, readOpaque162);
                }
            }
            assertEmpty(byteArrayInputStream);
            Integer num2 = EXT_RenegotiationInfo;
            boolean containsKey = hashtable.containsKey(num2);
            if (containsKey && !Arrays.constantTimeAreEqual((byte[]) hashtable.get(num2), createRenegotiationInfo(emptybuf))) {
                failWithError((short) 2, (short) 40);
            }
            this.tlsClient.notifySecureRenegotiation(containsKey);
            if (this.clientExtensions != null) {
                this.tlsClient.processServerExtensions(hashtable);
            }
            this.keyExchange = this.tlsClient.getKeyExchange();
            this.connection_state = (short) 2;
            return;
        }
        failWithError((short) 2, (short) 10);
    }

    private void safeReadData() {
        try {
            this.f7602rs.readData();
        } catch (TlsFatalAlert e) {
            if (!this.closed) {
                failWithError((short) 2, e.getAlertDescription());
            }
            throw e;
        } catch (IOException e2) {
            if (!this.closed) {
                failWithError((short) 2, (short) 80);
            }
            throw e2;
        } catch (RuntimeException e3) {
            if (!this.closed) {
                failWithError((short) 2, (short) 80);
            }
            throw e3;
        }
    }

    private void safeWriteMessage(short s, byte[] bArr, int i, int i2) {
        try {
            this.f7602rs.writeMessage(s, bArr, i, i2);
        } catch (RuntimeException e) {
            if (!this.closed) {
                failWithError((short) 2, (short) 80);
            }
            throw e;
        } catch (TlsFatalAlert e2) {
            if (!this.closed) {
                failWithError((short) 2, e2.getAlertDescription());
            }
            throw e2;
        } catch (IOException e3) {
            if (!this.closed) {
                failWithError((short) 2, (short) 80);
            }
            throw e3;
        }
    }

    private void sendAlert(short s, short s2) {
        this.f7602rs.writeMessage((short) 21, new byte[]{(byte) s, (byte) s2}, 0, 2);
    }

    private void sendCertificateVerify(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        TlsUtils.writeUint8((short) 15, byteArrayOutputStream);
        TlsUtils.writeUint24(bArr.length + 2, byteArrayOutputStream);
        TlsUtils.writeOpaque16(bArr, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        this.f7602rs.writeMessage((short) 22, byteArray, 0, byteArray.length);
    }

    private void sendClientCertificate(Certificate certificate) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        TlsUtils.writeUint8((short) 11, byteArrayOutputStream);
        certificate.encode(byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        this.f7602rs.writeMessage((short) 22, byteArray, 0, byteArray.length);
    }

    private void sendClientKeyExchange() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        TlsUtils.writeUint8((short) 16, byteArrayOutputStream);
        this.keyExchange.generateClientKeyExchange(byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        this.f7602rs.writeMessage((short) 22, byteArray, 0, byteArray.length);
    }

    private static void writeExtension(OutputStream outputStream, Integer num, byte[] bArr) {
        TlsUtils.writeUint16(num.intValue(), outputStream);
        TlsUtils.writeOpaque16(bArr, outputStream);
    }

    public void assertEmpty(ByteArrayInputStream byteArrayInputStream) {
        if (byteArrayInputStream.available() <= 0) {
            return;
        }
        throw new TlsFatalAlert((short) 50);
    }

    public void close() {
        if (!this.closed) {
            failWithError((short) 1, (short) 0);
        }
    }

    public void connect(CertificateVerifyer certificateVerifyer) {
        connect(new LegacyTlsClient(certificateVerifyer));
    }

    public void connect(TlsClient tlsClient) {
        if (tlsClient != null) {
            if (this.tlsClient != null) {
                throw new IllegalStateException("connect can only be called once");
            }
            SecurityParameters securityParameters = new SecurityParameters();
            this.securityParameters = securityParameters;
            byte[] bArr = new byte[32];
            securityParameters.clientRandom = bArr;
            this.random.nextBytes(bArr);
            TlsUtils.writeGMTUnixTime(this.securityParameters.clientRandom, 0);
            TlsClientContextImpl tlsClientContextImpl = new TlsClientContextImpl(this.random, this.securityParameters);
            this.tlsClientContext = tlsClientContextImpl;
            this.tlsClient = tlsClient;
            tlsClient.init(tlsClientContextImpl);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            TlsUtils.writeVersion(byteArrayOutputStream);
            byteArrayOutputStream.write(this.securityParameters.clientRandom);
            TlsUtils.writeUint8((short) 0, byteArrayOutputStream);
            this.offeredCipherSuites = this.tlsClient.getCipherSuites();
            Hashtable clientExtensions = this.tlsClient.getClientExtensions();
            this.clientExtensions = clientExtensions;
            boolean z = clientExtensions == null || clientExtensions.get(EXT_RenegotiationInfo) == null;
            int length = this.offeredCipherSuites.length;
            int i = length;
            if (z) {
                i = length + 1;
            }
            TlsUtils.writeUint16(i * 2, byteArrayOutputStream);
            TlsUtils.writeUint16Array(this.offeredCipherSuites, byteArrayOutputStream);
            if (z) {
                TlsUtils.writeUint16(255, byteArrayOutputStream);
            }
            short[] compressionMethods = this.tlsClient.getCompressionMethods();
            this.offeredCompressionMethods = compressionMethods;
            TlsUtils.writeUint8((short) compressionMethods.length, byteArrayOutputStream);
            TlsUtils.writeUint8Array(this.offeredCompressionMethods, byteArrayOutputStream);
            if (this.clientExtensions != null) {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                Enumeration keys = this.clientExtensions.keys();
                while (keys.hasMoreElements()) {
                    Integer num = (Integer) keys.nextElement();
                    writeExtension(byteArrayOutputStream2, num, (byte[]) this.clientExtensions.get(num));
                }
                TlsUtils.writeOpaque16(byteArrayOutputStream2.toByteArray(), byteArrayOutputStream);
            }
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            TlsUtils.writeUint8((short) 1, byteArrayOutputStream3);
            TlsUtils.writeUint24(byteArrayOutputStream.size(), byteArrayOutputStream3);
            byteArrayOutputStream3.write(byteArrayOutputStream.toByteArray());
            byte[] byteArray = byteArrayOutputStream3.toByteArray();
            safeWriteMessage((short) 22, byteArray, 0, byteArray.length);
            this.connection_state = (short) 1;
            while (this.connection_state != 12) {
                safeReadData();
            }
            this.tlsInputStream = new TlsInputStream(this);
            this.tlsOutputStream = new TlsOutputStream(this);
            return;
        }
        throw new IllegalArgumentException("'tlsClient' cannot be null");
    }

    public void flush() {
        this.f7602rs.flush();
    }

    public InputStream getInputStream() {
        return this.tlsInputStream;
    }

    public OutputStream getOutputStream() {
        return this.tlsOutputStream;
    }

    public void processData(short s, byte[] bArr, int i, int i2) {
        switch (s) {
            case 20:
                this.changeCipherSpecQueue.addData(bArr, i, i2);
                processChangeCipherSpec();
                return;
            case 21:
                this.alertQueue.addData(bArr, i, i2);
                processAlert();
                return;
            case 22:
                this.handshakeQueue.addData(bArr, i, i2);
                processHandshake();
                return;
            case 23:
                if (!this.appDataReady) {
                    failWithError((short) 2, (short) 10);
                }
                this.applicationDataQueue.addData(bArr, i, i2);
                processApplicationData();
                return;
            default:
                return;
        }
    }

    public int readApplicationData(byte[] bArr, int i, int i2) {
        while (this.applicationDataQueue.size() == 0) {
            if (this.closed) {
                if (this.failedWithError) {
                    throw new IOException(TLS_ERROR_MESSAGE);
                }
                return -1;
            }
            safeReadData();
        }
        int min = Math.min(i2, this.applicationDataQueue.size());
        this.applicationDataQueue.read(bArr, i, min, 0);
        this.applicationDataQueue.removeData(min);
        return min;
    }

    public void writeData(byte[] bArr, int i, int i2) {
        int i3;
        if (this.closed) {
            if (!this.failedWithError) {
                throw new IOException("Sorry, connection has been closed, you cannot write more data");
            }
            throw new IOException(TLS_ERROR_MESSAGE);
        }
        safeWriteMessage((short) 23, emptybuf, 0, 0);
        do {
            int min = Math.min(i2, 16384);
            safeWriteMessage((short) 23, bArr, i, min);
            i += min;
            i3 = i2 - min;
            i2 = i3;
        } while (i3 > 0);
    }
}
