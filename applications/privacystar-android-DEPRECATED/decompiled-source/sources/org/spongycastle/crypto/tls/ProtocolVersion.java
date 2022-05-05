package org.spongycastle.crypto.tls;

import java.io.IOException;
import org.apache.commons.p018io.ByteOrderMark;
import org.spongycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/ProtocolVersion.class */
public final class ProtocolVersion {
    private String name;
    private int version;
    public static final ProtocolVersion SSLv3 = new ProtocolVersion(768, "SSL 3.0");
    public static final ProtocolVersion TLSv10 = new ProtocolVersion(769, "TLS 1.0");
    public static final ProtocolVersion TLSv11 = new ProtocolVersion(770, "TLS 1.1");
    public static final ProtocolVersion TLSv12 = new ProtocolVersion(771, "TLS 1.2");
    public static final ProtocolVersion DTLSv10 = new ProtocolVersion(ByteOrderMark.UTF_BOM, "DTLS 1.0");
    public static final ProtocolVersion DTLSv12 = new ProtocolVersion(65277, "DTLS 1.2");

    private ProtocolVersion(int i, String str) {
        this.version = i & 65535;
        this.name = str;
    }

    public static ProtocolVersion get(int i, int i2) throws IOException {
        if (i == 3) {
            switch (i2) {
                case 0:
                    return SSLv3;
                case 1:
                    return TLSv10;
                case 2:
                    return TLSv11;
                case 3:
                    return TLSv12;
                default:
                    return getUnknownVersion(i, i2, "TLS");
            }
        } else if (i != 254) {
            throw new TlsFatalAlert((short) 47);
        } else {
            switch (i2) {
                case 253:
                    return DTLSv12;
                case 254:
                    throw new TlsFatalAlert((short) 47);
                case 255:
                    return DTLSv10;
                default:
                    return getUnknownVersion(i, i2, "DTLS");
            }
        }
    }

    private static ProtocolVersion getUnknownVersion(int i, int i2, String str) throws IOException {
        TlsUtils.checkUint8(i);
        TlsUtils.checkUint8(i2);
        int i3 = (i << 8) | i2;
        String upperCase = Strings.toUpperCase(Integer.toHexString(65536 | i3).substring(1));
        return new ProtocolVersion(i3, str + " 0x" + upperCase);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof ProtocolVersion) && equals((ProtocolVersion) obj));
    }

    public boolean equals(ProtocolVersion protocolVersion) {
        return protocolVersion != null && this.version == protocolVersion.version;
    }

    public ProtocolVersion getEquivalentTLSVersion() {
        return !isDTLS() ? this : this == DTLSv10 ? TLSv11 : TLSv12;
    }

    public int getFullVersion() {
        return this.version;
    }

    public int getMajorVersion() {
        return this.version >> 8;
    }

    public int getMinorVersion() {
        return this.version & 255;
    }

    public int hashCode() {
        return this.version;
    }

    public boolean isDTLS() {
        return getMajorVersion() == 254;
    }

    public boolean isEqualOrEarlierVersionOf(ProtocolVersion protocolVersion) {
        if (getMajorVersion() != protocolVersion.getMajorVersion()) {
            return false;
        }
        int minorVersion = protocolVersion.getMinorVersion() - getMinorVersion();
        boolean z = true;
        if (!isDTLS() ? minorVersion < 0 : minorVersion > 0) {
            z = false;
        }
        return z;
    }

    public boolean isLaterVersionOf(ProtocolVersion protocolVersion) {
        if (getMajorVersion() != protocolVersion.getMajorVersion()) {
            return false;
        }
        int minorVersion = protocolVersion.getMinorVersion() - getMinorVersion();
        boolean z = true;
        if (!isDTLS() ? minorVersion >= 0 : minorVersion <= 0) {
            z = false;
        }
        return z;
    }

    public boolean isSSL() {
        return this == SSLv3;
    }

    public boolean isTLS() {
        return getMajorVersion() == 3;
    }

    public String toString() {
        return this.name;
    }
}
