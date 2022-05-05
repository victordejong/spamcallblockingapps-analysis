package org.spongycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.prng.RandomGenerator;
import org.spongycastle.crypto.tls.SessionParameters;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Integers;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsProtocol.class */
public abstract class TlsProtocol {
    protected static final short ADS_MODE_0_N = 1;
    protected static final short ADS_MODE_0_N_FIRSTONLY = 2;
    protected static final short ADS_MODE_1_Nsub1 = 0;
    protected static final short CS_CERTIFICATE_REQUEST = 7;
    protected static final short CS_CERTIFICATE_STATUS = 5;
    protected static final short CS_CERTIFICATE_VERIFY = 12;
    protected static final short CS_CLIENT_CERTIFICATE = 10;
    protected static final short CS_CLIENT_FINISHED = 13;
    protected static final short CS_CLIENT_HELLO = 1;
    protected static final short CS_CLIENT_KEY_EXCHANGE = 11;
    protected static final short CS_CLIENT_SUPPLEMENTAL_DATA = 9;
    protected static final short CS_END = 16;
    protected static final short CS_SERVER_CERTIFICATE = 4;
    protected static final short CS_SERVER_FINISHED = 15;
    protected static final short CS_SERVER_HELLO = 2;
    protected static final short CS_SERVER_HELLO_DONE = 8;
    protected static final short CS_SERVER_KEY_EXCHANGE = 6;
    protected static final short CS_SERVER_SESSION_TICKET = 14;
    protected static final short CS_SERVER_SUPPLEMENTAL_DATA = 3;
    protected static final short CS_START = 0;
    protected static final Integer EXT_RenegotiationInfo = Integers.valueOf(65281);
    protected static final Integer EXT_SessionTicket = Integers.valueOf(35);
    private ByteQueue alertQueue;
    protected boolean allowCertificateStatus;
    private volatile boolean appDataReady;
    private volatile boolean appDataSplitEnabled;
    private volatile int appDataSplitMode;
    private ByteQueue applicationDataQueue;
    protected boolean blocking;
    protected Hashtable clientExtensions;
    private volatile boolean closed;
    protected short connection_state;
    protected boolean expectSessionTicket;
    private byte[] expected_verify_data;
    private volatile boolean failedWithError;
    private ByteQueue handshakeQueue;
    protected ByteQueueInputStream inputBuffers;
    protected int[] offeredCipherSuites;
    protected short[] offeredCompressionMethods;
    protected ByteQueueOutputStream outputBuffer;
    protected Certificate peerCertificate;
    protected boolean receivedChangeCipherSpec;
    RecordStream recordStream;
    protected boolean resumedSession;
    protected SecureRandom secureRandom;
    protected boolean secure_renegotiation;
    protected SecurityParameters securityParameters;
    protected Hashtable serverExtensions;
    protected SessionParameters sessionParameters;
    private TlsInputStream tlsInputStream;
    private TlsOutputStream tlsOutputStream;
    protected TlsSession tlsSession;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage.class */
    class HandshakeMessage extends ByteArrayOutputStream {
        /* JADX INFO: Access modifiers changed from: package-private */
        public HandshakeMessage(TlsProtocol tlsProtocol, short s) throws IOException {
            this(s, 60);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public HandshakeMessage(short s, int i) throws IOException {
            super(i + 4);
            TlsUtils.writeUint8(s, (OutputStream) this);
            this.count += 3;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void writeToRecordStream() throws IOException {
            int i = this.count - 4;
            TlsUtils.checkUint24(i);
            TlsUtils.writeUint24(i, this.buf, 1);
            TlsProtocol.this.writeHandshakeMessage(this.buf, 0, this.count);
            this.buf = null;
        }
    }

    public TlsProtocol(InputStream inputStream, OutputStream outputStream, SecureRandom secureRandom) {
        this.applicationDataQueue = new ByteQueue(0);
        this.alertQueue = new ByteQueue(2);
        this.handshakeQueue = new ByteQueue(0);
        this.tlsInputStream = null;
        this.tlsOutputStream = null;
        this.closed = false;
        this.failedWithError = false;
        this.appDataReady = false;
        this.appDataSplitEnabled = true;
        this.appDataSplitMode = 0;
        this.expected_verify_data = null;
        this.tlsSession = null;
        this.sessionParameters = null;
        this.securityParameters = null;
        this.peerCertificate = null;
        this.offeredCipherSuites = null;
        this.offeredCompressionMethods = null;
        this.clientExtensions = null;
        this.serverExtensions = null;
        this.connection_state = (short) 0;
        this.resumedSession = false;
        this.receivedChangeCipherSpec = false;
        this.secure_renegotiation = false;
        this.allowCertificateStatus = false;
        this.expectSessionTicket = false;
        this.blocking = true;
        this.recordStream = new RecordStream(this, inputStream, outputStream);
        this.secureRandom = secureRandom;
    }

    public TlsProtocol(SecureRandom secureRandom) {
        this.applicationDataQueue = new ByteQueue(0);
        this.alertQueue = new ByteQueue(2);
        this.handshakeQueue = new ByteQueue(0);
        this.tlsInputStream = null;
        this.tlsOutputStream = null;
        this.closed = false;
        this.failedWithError = false;
        this.appDataReady = false;
        this.appDataSplitEnabled = true;
        this.appDataSplitMode = 0;
        this.expected_verify_data = null;
        this.tlsSession = null;
        this.sessionParameters = null;
        this.securityParameters = null;
        this.peerCertificate = null;
        this.offeredCipherSuites = null;
        this.offeredCompressionMethods = null;
        this.clientExtensions = null;
        this.serverExtensions = null;
        this.connection_state = (short) 0;
        this.resumedSession = false;
        this.receivedChangeCipherSpec = false;
        this.secure_renegotiation = false;
        this.allowCertificateStatus = false;
        this.expectSessionTicket = false;
        this.blocking = false;
        this.inputBuffers = new ByteQueueInputStream();
        this.outputBuffer = new ByteQueueOutputStream();
        this.recordStream = new RecordStream(this, this.inputBuffers, this.outputBuffer);
        this.secureRandom = secureRandom;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void assertEmpty(ByteArrayInputStream byteArrayInputStream) throws IOException {
        if (byteArrayInputStream.available() > 0) {
            throw new TlsFatalAlert((short) 50);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] createRandomBlock(boolean z, RandomGenerator randomGenerator) {
        byte[] bArr = new byte[32];
        randomGenerator.nextBytes(bArr);
        if (z) {
            TlsUtils.writeGMTUnixTime(bArr, 0);
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] createRenegotiationInfo(byte[] bArr) throws IOException {
        return TlsUtils.encodeOpaque8(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void establishMasterSecret(TlsContext tlsContext, TlsKeyExchange tlsKeyExchange) throws IOException {
        byte[] generatePremasterSecret = tlsKeyExchange.generatePremasterSecret();
        try {
            tlsContext.getSecurityParameters().masterSecret = TlsUtils.calculateMasterSecret(tlsContext, generatePremasterSecret);
            if (generatePremasterSecret != null) {
                Arrays.fill(generatePremasterSecret, (byte) 0);
            }
        } catch (Throwable th) {
            if (generatePremasterSecret != null) {
                Arrays.fill(generatePremasterSecret, (byte) 0);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] getCurrentPRFHash(TlsContext tlsContext, TlsHandshakeHash tlsHandshakeHash, byte[] bArr) {
        Digest forkPRFHash = tlsHandshakeHash.forkPRFHash();
        if (bArr != null && TlsUtils.isSSL(tlsContext)) {
            forkPRFHash.update(bArr, 0, bArr.length);
        }
        byte[] bArr2 = new byte[forkPRFHash.getDigestSize()];
        forkPRFHash.doFinal(bArr2, 0);
        return bArr2;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0328  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected static int getPRFAlgorithm(org.spongycastle.crypto.tls.TlsContext r4, int r5) throws java.io.IOException {
        /*
            r0 = r4
            boolean r0 = org.spongycastle.crypto.tls.TlsUtils.isTLSv12(r0)
            r6 = r0
            r0 = r5
            switch(r0) {
                case 59: goto L_0x0338;
                case 60: goto L_0x0338;
                case 61: goto L_0x0338;
                case 62: goto L_0x0338;
                case 63: goto L_0x0338;
                case 64: goto L_0x0338;
                default: goto L_0x002c;
            }
        L_0x002c:
            r0 = r5
            switch(r0) {
                case 103: goto L_0x0338;
                case 104: goto L_0x0338;
                case 105: goto L_0x0338;
                case 106: goto L_0x0338;
                case 107: goto L_0x0338;
                case 108: goto L_0x0338;
                case 109: goto L_0x0338;
                default: goto L_0x0058;
            }
        L_0x0058:
            r0 = r5
            switch(r0) {
                case 156: goto L_0x0338;
                case 157: goto L_0x0328;
                case 158: goto L_0x0338;
                case 159: goto L_0x0328;
                case 160: goto L_0x0338;
                case 161: goto L_0x0328;
                case 162: goto L_0x0338;
                case 163: goto L_0x0328;
                case 164: goto L_0x0338;
                case 165: goto L_0x0328;
                case 166: goto L_0x0338;
                case 167: goto L_0x0328;
                case 168: goto L_0x0338;
                case 169: goto L_0x0328;
                case 170: goto L_0x0338;
                case 171: goto L_0x0328;
                case 172: goto L_0x0338;
                case 173: goto L_0x0328;
                default: goto L_0x00b0;
            }
        L_0x00b0:
            r0 = r5
            switch(r0) {
                case 185: goto L_0x0320;
                case 186: goto L_0x0338;
                case 187: goto L_0x0338;
                case 188: goto L_0x0338;
                case 189: goto L_0x0338;
                case 190: goto L_0x0338;
                case 191: goto L_0x0338;
                case 192: goto L_0x0338;
                case 193: goto L_0x0338;
                case 194: goto L_0x0338;
                case 195: goto L_0x0338;
                case 196: goto L_0x0338;
                case 197: goto L_0x0338;
                default: goto L_0x00f4;
            }
        L_0x00f4:
            r0 = r5
            switch(r0) {
                case 49187: goto L_0x0338;
                case 49188: goto L_0x0328;
                case 49189: goto L_0x0338;
                case 49190: goto L_0x0328;
                case 49191: goto L_0x0338;
                case 49192: goto L_0x0328;
                case 49193: goto L_0x0338;
                case 49194: goto L_0x0328;
                case 49195: goto L_0x0338;
                case 49196: goto L_0x0328;
                case 49197: goto L_0x0338;
                case 49198: goto L_0x0328;
                case 49199: goto L_0x0338;
                case 49200: goto L_0x0328;
                case 49201: goto L_0x0338;
                case 49202: goto L_0x0328;
                default: goto L_0x0144;
            }
        L_0x0144:
            r0 = r5
            switch(r0) {
                case 49266: goto L_0x0338;
                case 49267: goto L_0x0328;
                case 49268: goto L_0x0338;
                case 49269: goto L_0x0328;
                case 49270: goto L_0x0338;
                case 49271: goto L_0x0328;
                case 49272: goto L_0x0338;
                case 49273: goto L_0x0328;
                case 49274: goto L_0x0338;
                case 49275: goto L_0x0328;
                case 49276: goto L_0x0338;
                case 49277: goto L_0x0328;
                case 49278: goto L_0x0338;
                case 49279: goto L_0x0328;
                case 49280: goto L_0x0338;
                case 49281: goto L_0x0328;
                case 49282: goto L_0x0338;
                case 49283: goto L_0x0328;
                case 49284: goto L_0x0338;
                case 49285: goto L_0x0328;
                case 49286: goto L_0x0338;
                case 49287: goto L_0x0328;
                case 49288: goto L_0x0338;
                case 49289: goto L_0x0328;
                case 49290: goto L_0x0338;
                case 49291: goto L_0x0328;
                case 49292: goto L_0x0338;
                case 49293: goto L_0x0328;
                case 49294: goto L_0x0338;
                case 49295: goto L_0x0328;
                case 49296: goto L_0x0338;
                case 49297: goto L_0x0328;
                case 49298: goto L_0x0338;
                case 49299: goto L_0x0328;
                default: goto L_0x01dc;
            }
        L_0x01dc:
            r0 = r5
            switch(r0) {
                case 49307: goto L_0x0320;
                case 49308: goto L_0x0338;
                case 49309: goto L_0x0338;
                case 49310: goto L_0x0338;
                case 49311: goto L_0x0338;
                case 49312: goto L_0x0338;
                case 49313: goto L_0x0338;
                case 49314: goto L_0x0338;
                case 49315: goto L_0x0338;
                case 49316: goto L_0x0338;
                case 49317: goto L_0x0338;
                case 49318: goto L_0x0338;
                case 49319: goto L_0x0338;
                case 49320: goto L_0x0338;
                case 49321: goto L_0x0338;
                case 49322: goto L_0x0338;
                case 49323: goto L_0x0338;
                case 49324: goto L_0x0338;
                case 49325: goto L_0x0338;
                case 49326: goto L_0x0338;
                case 49327: goto L_0x0338;
                default: goto L_0x0240;
            }
        L_0x0240:
            r0 = r5
            switch(r0) {
                case 52392: goto L_0x0338;
                case 52393: goto L_0x0338;
                case 52394: goto L_0x0338;
                case 52395: goto L_0x0338;
                case 52396: goto L_0x0338;
                case 52397: goto L_0x0338;
                case 52398: goto L_0x0338;
                default: goto L_0x026c;
            }
        L_0x026c:
            r0 = r5
            switch(r0) {
                case 65280: goto L_0x0338;
                case 65281: goto L_0x0338;
                case 65282: goto L_0x0338;
                case 65283: goto L_0x0338;
                case 65284: goto L_0x0338;
                case 65285: goto L_0x0338;
                default: goto L_0x0294;
            }
        L_0x0294:
            r0 = r5
            switch(r0) {
                case 65296: goto L_0x0338;
                case 65297: goto L_0x0338;
                case 65298: goto L_0x0338;
                case 65299: goto L_0x0338;
                case 65300: goto L_0x0338;
                case 65301: goto L_0x0338;
                default: goto L_0x02bc;
            }
        L_0x02bc:
            r0 = r5
            switch(r0) {
                case 175: goto L_0x0320;
                case 177: goto L_0x0320;
                case 179: goto L_0x0320;
                case 181: goto L_0x0320;
                case 183: goto L_0x0320;
                case 49208: goto L_0x0320;
                case 49211: goto L_0x0320;
                case 49301: goto L_0x0320;
                case 49303: goto L_0x0320;
                case 49305: goto L_0x0320;
                default: goto L_0x0318;
            }
        L_0x0318:
            r0 = r6
            if (r0 == 0) goto L_0x031e
            r0 = 1
            return r0
        L_0x031e:
            r0 = 0
            return r0
        L_0x0320:
            r0 = r6
            if (r0 == 0) goto L_0x0326
            r0 = 2
            return r0
        L_0x0326:
            r0 = 0
            return r0
        L_0x0328:
            r0 = r6
            if (r0 == 0) goto L_0x032e
            r0 = 2
            return r0
        L_0x032e:
            org.spongycastle.crypto.tls.TlsFatalAlert r0 = new org.spongycastle.crypto.tls.TlsFatalAlert
            r1 = r0
            r2 = 47
            r1.<init>(r2)
            throw r0
        L_0x0338:
            r0 = r6
            if (r0 == 0) goto L_0x033e
            r0 = 1
            return r0
        L_0x033e:
            org.spongycastle.crypto.tls.TlsFatalAlert r0 = new org.spongycastle.crypto.tls.TlsFatalAlert
            r1 = r0
            r2 = 47
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.crypto.tls.TlsProtocol.getPRFAlgorithm(org.spongycastle.crypto.tls.TlsContext, int):int");
    }

    private void processAlertQueue() throws IOException {
        while (this.alertQueue.available() >= 2) {
            byte[] removeData = this.alertQueue.removeData(2, 0);
            handleAlertMessage(removeData[0], removeData[1]);
        }
    }

    private void processApplicationDataQueue() {
    }

    private void processChangeCipherSpec(byte[] bArr, int i, int i2) throws IOException {
        for (int i3 = 0; i3 < i2; i3++) {
            if (TlsUtils.readUint8(bArr, i + i3) != 1) {
                throw new TlsFatalAlert((short) 50);
            } else if (this.receivedChangeCipherSpec || this.alertQueue.available() > 0 || this.handshakeQueue.available() > 0) {
                throw new TlsFatalAlert((short) 10);
            } else {
                this.recordStream.receivedReadCipherSpec();
                this.receivedChangeCipherSpec = true;
                handleChangeCipherSpecMessage();
            }
        }
    }

    private void processHandshakeQueue(ByteQueue byteQueue) throws IOException {
        while (byteQueue.available() >= 4) {
            byte[] bArr = new byte[4];
            boolean z = false;
            byteQueue.read(bArr, 0, 4, 0);
            short readUint8 = TlsUtils.readUint8(bArr, 0);
            int readUint24 = TlsUtils.readUint24(bArr, 1);
            int i = readUint24 + 4;
            if (byteQueue.available() >= i) {
                if (this.connection_state == 16 || readUint8 == 20) {
                    z = true;
                }
                checkReceivedChangeCipherSpec(z);
                if (readUint8 != 0) {
                    if (readUint8 == 20) {
                        TlsContext context = getContext();
                        if (this.expected_verify_data == null && context.getSecurityParameters().getMasterSecret() != null) {
                            this.expected_verify_data = createVerifyData(!context.isServer());
                        }
                    }
                    byteQueue.copyTo(this.recordStream.getHandshakeHashUpdater(), i);
                }
                byteQueue.removeData(4);
                handleHandshakeMessage(readUint8, byteQueue.readFrom(readUint24));
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Hashtable readExtensions(ByteArrayInputStream byteArrayInputStream) throws IOException {
        if (byteArrayInputStream.available() < 1) {
            return null;
        }
        byte[] readOpaque16 = TlsUtils.readOpaque16(byteArrayInputStream);
        assertEmpty(byteArrayInputStream);
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(readOpaque16);
        Hashtable hashtable = new Hashtable();
        while (byteArrayInputStream2.available() > 0) {
            if (hashtable.put(Integers.valueOf(TlsUtils.readUint16(byteArrayInputStream2)), TlsUtils.readOpaque16(byteArrayInputStream2)) != null) {
                throw new TlsFatalAlert((short) 47);
            }
        }
        return hashtable;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Vector readSupplementalDataMessage(ByteArrayInputStream byteArrayInputStream) throws IOException {
        byte[] readOpaque24 = TlsUtils.readOpaque24(byteArrayInputStream);
        assertEmpty(byteArrayInputStream);
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(readOpaque24);
        Vector vector = new Vector();
        while (byteArrayInputStream2.available() > 0) {
            vector.addElement(new SupplementalDataEntry(TlsUtils.readUint16(byteArrayInputStream2), TlsUtils.readOpaque16(byteArrayInputStream2)));
        }
        return vector;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void writeExtensions(OutputStream outputStream, Hashtable hashtable) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeSelectedExtensions(byteArrayOutputStream, hashtable, true);
        writeSelectedExtensions(byteArrayOutputStream, hashtable, false);
        TlsUtils.writeOpaque16(byteArrayOutputStream.toByteArray(), outputStream);
    }

    protected static void writeSelectedExtensions(OutputStream outputStream, Hashtable hashtable, boolean z) throws IOException {
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            Integer num = (Integer) keys.nextElement();
            int intValue = num.intValue();
            byte[] bArr = (byte[]) hashtable.get(num);
            if (z == (bArr.length == 0)) {
                TlsUtils.checkUint16(intValue);
                TlsUtils.writeUint16(intValue, outputStream);
                TlsUtils.writeOpaque16(bArr, outputStream);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void writeSupplementalData(OutputStream outputStream, Vector vector) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i = 0; i < vector.size(); i++) {
            SupplementalDataEntry supplementalDataEntry = (SupplementalDataEntry) vector.elementAt(i);
            int dataType = supplementalDataEntry.getDataType();
            TlsUtils.checkUint16(dataType);
            TlsUtils.writeUint16(dataType, byteArrayOutputStream);
            TlsUtils.writeOpaque16(supplementalDataEntry.getData(), byteArrayOutputStream);
        }
        TlsUtils.writeOpaque24(byteArrayOutputStream.toByteArray(), outputStream);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int applicationDataAvailable() {
        return this.applicationDataQueue.available();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void applyMaxFragmentLengthExtension() throws IOException {
        if (this.securityParameters.maxFragmentLength < 0) {
            return;
        }
        if (!MaxFragmentLength.isValid(this.securityParameters.maxFragmentLength)) {
            throw new TlsFatalAlert((short) 80);
        }
        this.recordStream.setPlaintextLimit(1 << (this.securityParameters.maxFragmentLength + 8));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void blockForHandshake() throws IOException {
        if (this.blocking) {
            while (this.connection_state != 16) {
                if (this.closed) {
                    throw new TlsFatalAlert((short) 80);
                }
                safeReadRecord();
            }
        }
    }

    protected void checkReceivedChangeCipherSpec(boolean z) throws IOException {
        if (z != this.receivedChangeCipherSpec) {
            throw new TlsFatalAlert((short) 10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void cleanupHandshake() {
        if (this.expected_verify_data != null) {
            Arrays.fill(this.expected_verify_data, (byte) 0);
            this.expected_verify_data = null;
        }
        this.securityParameters.clear();
        this.peerCertificate = null;
        this.offeredCipherSuites = null;
        this.offeredCompressionMethods = null;
        this.clientExtensions = null;
        this.serverExtensions = null;
        this.resumedSession = false;
        this.receivedChangeCipherSpec = false;
        this.secure_renegotiation = false;
        this.allowCertificateStatus = false;
        this.expectSessionTicket = false;
    }

    public void close() throws IOException {
        handleClose(true);
    }

    public void closeInput() throws IOException {
        if (this.blocking) {
            throw new IllegalStateException("Cannot use closeInput() in blocking mode!");
        } else if (!this.closed) {
            if (this.inputBuffers.available() > 0) {
                throw new EOFException();
            } else if (!this.appDataReady) {
                throw new TlsFatalAlert((short) 40);
            } else {
                throw new TlsNoCloseNotifyException();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void completeHandshake() throws IOException {
        try {
            this.connection_state = (short) 16;
            this.alertQueue.shrink();
            this.handshakeQueue.shrink();
            this.recordStream.finaliseHandshake();
            this.appDataSplitEnabled = !TlsUtils.isTLSv11(getContext());
            if (!this.appDataReady) {
                this.appDataReady = true;
                if (this.blocking) {
                    this.tlsInputStream = new TlsInputStream(this);
                    this.tlsOutputStream = new TlsOutputStream(this);
                }
            }
            if (this.tlsSession != null) {
                if (this.sessionParameters == null) {
                    this.sessionParameters = new SessionParameters.Builder().setCipherSuite(this.securityParameters.getCipherSuite()).setCompressionAlgorithm(this.securityParameters.getCompressionAlgorithm()).setMasterSecret(this.securityParameters.getMasterSecret()).setPeerCertificate(this.peerCertificate).setPSKIdentity(this.securityParameters.getPSKIdentity()).setSRPIdentity(this.securityParameters.getSRPIdentity()).setServerExtensions(this.serverExtensions).build();
                    this.tlsSession = new TlsSessionImpl(this.tlsSession.getSessionID(), this.sessionParameters);
                }
                getContextAdmin().setResumableSession(this.tlsSession);
            }
            getPeer().notifyHandshakeComplete();
        } finally {
            cleanupHandshake();
        }
    }

    protected byte[] createVerifyData(boolean z) {
        TlsContext context = getContext();
        return TlsUtils.calculateVerifyData(context, z ? ExporterLabel.server_finished : ExporterLabel.client_finished, getCurrentPRFHash(context, this.recordStream.getHandshakeHash(), z ? TlsUtils.SSL_SERVER : TlsUtils.SSL_CLIENT));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void flush() throws IOException {
        this.recordStream.flush();
    }

    public int getAvailableInputBytes() {
        if (!this.blocking) {
            return applicationDataAvailable();
        }
        throw new IllegalStateException("Cannot use getAvailableInputBytes() in blocking mode! Use getInputStream().available() instead.");
    }

    public int getAvailableOutputBytes() {
        if (!this.blocking) {
            return this.outputBuffer.getBuffer().available();
        }
        throw new IllegalStateException("Cannot use getAvailableOutputBytes() in blocking mode! Use getOutputStream() instead.");
    }

    protected abstract TlsContext getContext();

    abstract AbstractTlsContext getContextAdmin();

    public InputStream getInputStream() {
        if (this.blocking) {
            return this.tlsInputStream;
        }
        throw new IllegalStateException("Cannot use InputStream in non-blocking mode! Use offerInput() instead.");
    }

    public OutputStream getOutputStream() {
        if (this.blocking) {
            return this.tlsOutputStream;
        }
        throw new IllegalStateException("Cannot use OutputStream in non-blocking mode! Use offerOutput() instead.");
    }

    protected abstract TlsPeer getPeer();

    protected void handleAlertMessage(short s, short s2) throws IOException {
        getPeer().notifyAlertReceived(s, s2);
        if (s == 1) {
            handleAlertWarningMessage(s2);
        } else {
            handleFailure();
            throw new TlsFatalAlertReceived(s2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleAlertWarningMessage(short s) throws IOException {
        if (s != 0) {
            return;
        }
        if (!this.appDataReady) {
            throw new TlsFatalAlert((short) 40);
        }
        handleClose(false);
    }

    protected void handleChangeCipherSpecMessage() throws IOException {
    }

    protected void handleClose(boolean z) throws IOException {
        if (!this.closed) {
            this.closed = true;
            if (z && !this.appDataReady) {
                raiseAlertWarning((short) 90, "User canceled handshake");
            }
            raiseAlertWarning((short) 0, "Connection closed");
            this.recordStream.safeClose();
            if (!this.appDataReady) {
                cleanupHandshake();
            }
        }
    }

    protected void handleException(short s, String str, Throwable th) throws IOException {
        if (!this.closed) {
            raiseAlertFatal(s, str, th);
            handleFailure();
        }
    }

    protected void handleFailure() {
        this.closed = true;
        this.failedWithError = true;
        invalidateSession();
        this.recordStream.safeClose();
        if (!this.appDataReady) {
            cleanupHandshake();
        }
    }

    protected abstract void handleHandshakeMessage(short s, ByteArrayInputStream byteArrayInputStream) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public void invalidateSession() {
        if (this.sessionParameters != null) {
            this.sessionParameters.clear();
            this.sessionParameters = null;
        }
        if (this.tlsSession != null) {
            this.tlsSession.invalidate();
            this.tlsSession = null;
        }
    }

    public boolean isClosed() {
        return this.closed;
    }

    public void offerInput(byte[] bArr) throws IOException {
        if (this.blocking) {
            throw new IllegalStateException("Cannot use offerInput() in blocking mode! Use getInputStream() instead.");
        } else if (this.closed) {
            throw new IOException("Connection is closed, cannot accept any more input");
        } else {
            this.inputBuffers.addBytes(bArr);
            while (this.inputBuffers.available() >= 5) {
                byte[] bArr2 = new byte[5];
                this.inputBuffers.peek(bArr2);
                if (this.inputBuffers.available() < TlsUtils.readUint16(bArr2, 3) + 5) {
                    safeCheckRecordHeader(bArr2);
                    return;
                }
                safeReadRecord();
                if (this.closed) {
                    if (this.connection_state != 16) {
                        throw new TlsFatalAlert((short) 80);
                    }
                    return;
                }
            }
        }
    }

    public void offerOutput(byte[] bArr, int i, int i2) throws IOException {
        if (this.blocking) {
            throw new IllegalStateException("Cannot use offerOutput() in blocking mode! Use getOutputStream() instead.");
        } else if (!this.appDataReady) {
            throw new IOException("Application data cannot be sent until the handshake is complete!");
        } else {
            writeData(bArr, i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processFinishedMessage(ByteArrayInputStream byteArrayInputStream) throws IOException {
        if (this.expected_verify_data == null) {
            throw new TlsFatalAlert((short) 80);
        }
        byte[] readFully = TlsUtils.readFully(this.expected_verify_data.length, byteArrayInputStream);
        assertEmpty(byteArrayInputStream);
        if (!Arrays.constantTimeAreEqual(this.expected_verify_data, readFully)) {
            throw new TlsFatalAlert((short) 51);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public short processMaxFragmentLengthExtension(Hashtable hashtable, Hashtable hashtable2, short s) throws IOException {
        short maxFragmentLengthExtension = TlsExtensionsUtils.getMaxFragmentLengthExtension(hashtable2);
        if (maxFragmentLengthExtension < 0 || (MaxFragmentLength.isValid(maxFragmentLengthExtension) && (this.resumedSession || maxFragmentLengthExtension == TlsExtensionsUtils.getMaxFragmentLengthExtension(hashtable)))) {
            return maxFragmentLengthExtension;
        }
        throw new TlsFatalAlert(s);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processRecord(short s, byte[] bArr, int i, int i2) throws IOException {
        switch (s) {
            case 20:
                processChangeCipherSpec(bArr, i, i2);
                return;
            case 21:
                this.alertQueue.addData(bArr, i, i2);
                processAlertQueue();
                return;
            case 22:
                if (this.handshakeQueue.available() > 0) {
                    this.handshakeQueue.addData(bArr, i, i2);
                    processHandshakeQueue(this.handshakeQueue);
                    return;
                }
                ByteQueue byteQueue = new ByteQueue(bArr, i, i2);
                processHandshakeQueue(byteQueue);
                int available = byteQueue.available();
                if (available > 0) {
                    this.handshakeQueue.addData(bArr, (i + i2) - available, available);
                    return;
                }
                return;
            case 23:
                if (!this.appDataReady) {
                    throw new TlsFatalAlert((short) 10);
                }
                this.applicationDataQueue.addData(bArr, i, i2);
                processApplicationDataQueue();
                return;
            default:
                throw new TlsFatalAlert((short) 80);
        }
    }

    protected void raiseAlertFatal(short s, String str, Throwable th) throws IOException {
        getPeer().notifyAlertRaised((short) 2, s, str, th);
        try {
            this.recordStream.writeRecord((short) 21, new byte[]{2, (byte) s}, 0, 2);
        } catch (Exception e) {
        }
    }

    protected void raiseAlertWarning(short s, String str) throws IOException {
        getPeer().notifyAlertRaised((short) 1, s, str, null);
        safeWriteRecord((short) 21, new byte[]{1, (byte) s}, 0, 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int readApplicationData(byte[] bArr, int i, int i2) throws IOException {
        if (i2 < 1) {
            return 0;
        }
        while (this.applicationDataQueue.available() == 0) {
            if (!this.closed) {
                safeReadRecord();
            } else if (this.failedWithError) {
                throw new IOException("Cannot read application data on failed TLS connection");
            } else if (this.appDataReady) {
                return -1;
            } else {
                throw new IllegalStateException("Cannot read application data until initial handshake completed.");
            }
        }
        int min = Math.min(i2, this.applicationDataQueue.available());
        this.applicationDataQueue.removeData(bArr, i, min, 0);
        return min;
    }

    public int readInput(byte[] bArr, int i, int i2) {
        if (this.blocking) {
            throw new IllegalStateException("Cannot use readInput() in blocking mode! Use getInputStream() instead.");
        }
        try {
            return readApplicationData(bArr, i, Math.min(i2, applicationDataAvailable()));
        } catch (IOException e) {
            throw new RuntimeException(e.toString());
        }
    }

    public int readOutput(byte[] bArr, int i, int i2) {
        if (this.blocking) {
            throw new IllegalStateException("Cannot use readOutput() in blocking mode! Use getOutputStream() instead.");
        }
        int min = Math.min(getAvailableOutputBytes(), i2);
        this.outputBuffer.getBuffer().removeData(bArr, i, min, 0);
        return min;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void refuseRenegotiation() throws IOException {
        if (TlsUtils.isSSL(getContext())) {
            throw new TlsFatalAlert((short) 40);
        }
        raiseAlertWarning((short) 100, "Renegotiation not supported");
    }

    protected void safeCheckRecordHeader(byte[] bArr) throws IOException {
        try {
            this.recordStream.checkRecordHeader(bArr);
        } catch (TlsFatalAlert e) {
            handleException(e.getAlertDescription(), "Failed to read record", e);
            throw e;
        } catch (IOException e2) {
            handleException((short) 80, "Failed to read record", e2);
            throw e2;
        } catch (RuntimeException e3) {
            handleException((short) 80, "Failed to read record", e3);
            throw new TlsFatalAlert((short) 80, e3);
        }
    }

    protected void safeReadRecord() throws IOException {
        try {
            if (!this.recordStream.readRecord()) {
                if (!this.appDataReady) {
                    throw new TlsFatalAlert((short) 40);
                }
                handleFailure();
                throw new TlsNoCloseNotifyException();
            }
        } catch (TlsFatalAlert e) {
            handleException(e.getAlertDescription(), "Failed to read record", e);
            throw e;
        } catch (TlsFatalAlertReceived e2) {
            throw e2;
        } catch (IOException e3) {
            handleException((short) 80, "Failed to read record", e3);
            throw e3;
        } catch (RuntimeException e4) {
            handleException((short) 80, "Failed to read record", e4);
            throw new TlsFatalAlert((short) 80, e4);
        }
    }

    protected void safeWriteRecord(short s, byte[] bArr, int i, int i2) throws IOException {
        try {
            this.recordStream.writeRecord(s, bArr, i, i2);
        } catch (TlsFatalAlert e) {
            handleException(e.getAlertDescription(), "Failed to write record", e);
            throw e;
        } catch (IOException e2) {
            handleException((short) 80, "Failed to write record", e2);
            throw e2;
        } catch (RuntimeException e3) {
            handleException((short) 80, "Failed to write record", e3);
            throw new TlsFatalAlert((short) 80, e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void sendCertificateMessage(Certificate certificate) throws IOException {
        Certificate certificate2 = certificate;
        if (certificate == null) {
            certificate2 = Certificate.EMPTY_CHAIN;
        }
        if (certificate2.isEmpty() && !getContext().isServer()) {
            ProtocolVersion serverVersion = getContext().getServerVersion();
            if (serverVersion.isSSL()) {
                raiseAlertWarning((short) 41, serverVersion.toString() + " client didn't provide credentials");
                return;
            }
        }
        HandshakeMessage handshakeMessage = new HandshakeMessage(this, (short) 11);
        certificate2.encode(handshakeMessage);
        handshakeMessage.writeToRecordStream();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void sendChangeCipherSpecMessage() throws IOException {
        byte[] bArr = {(byte) 1};
        safeWriteRecord((short) 20, bArr, 0, bArr.length);
        this.recordStream.sentWriteCipherSpec();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void sendFinishedMessage() throws IOException {
        byte[] createVerifyData = createVerifyData(getContext().isServer());
        HandshakeMessage handshakeMessage = new HandshakeMessage((short) 20, createVerifyData.length);
        handshakeMessage.write(createVerifyData);
        handshakeMessage.writeToRecordStream();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void sendSupplementalDataMessage(Vector vector) throws IOException {
        HandshakeMessage handshakeMessage = new HandshakeMessage(this, (short) 23);
        writeSupplementalData(handshakeMessage, vector);
        handshakeMessage.writeToRecordStream();
    }

    protected void setAppDataSplitMode(int i) {
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException("Illegal appDataSplitMode mode: " + i);
        }
        this.appDataSplitMode = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeData(byte[] bArr, int i, int i2) throws IOException {
        if (this.closed) {
            throw new IOException("Cannot write application data on closed/failed TLS connection");
        }
        while (i2 > 0) {
            int i3 = i;
            int i4 = i2;
            if (this.appDataSplitEnabled) {
                switch (this.appDataSplitMode) {
                    case 2:
                        this.appDataSplitEnabled = false;
                    case 1:
                        safeWriteRecord((short) 23, TlsUtils.EMPTY_BYTES, 0, 0);
                        i4 = i2;
                        i3 = i;
                        break;
                    default:
                        safeWriteRecord((short) 23, bArr, i, 1);
                        i3 = i + 1;
                        i4 = i2 - 1;
                        break;
                }
            }
            i = i3;
            i2 = i4;
            if (i4 > 0) {
                int min = Math.min(i4, this.recordStream.getPlaintextLimit());
                safeWriteRecord((short) 23, bArr, i3, min);
                i = i3 + min;
                i2 = i4 - min;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeHandshakeMessage(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (i2 < 4) {
            throw new TlsFatalAlert((short) 80);
        }
        if (TlsUtils.readUint8(bArr, i) != 0) {
            this.recordStream.getHandshakeHashUpdater().write(bArr, i, i2);
        }
        int i4 = 0;
        do {
            int min = Math.min(i2 - i4, this.recordStream.getPlaintextLimit());
            safeWriteRecord((short) 22, bArr, i + i4, min);
            i3 = i4 + min;
            i4 = i3;
        } while (i3 < i2);
    }
}
