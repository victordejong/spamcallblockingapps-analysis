package org.bouncycastle.ocsp;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/ocsp/OCSPRespStatus.class */
public interface OCSPRespStatus {
    public static final int INTERNAL_ERROR = 2;
    public static final int MALFORMED_REQUEST = 1;
    public static final int SIGREQUIRED = 5;
    public static final int SUCCESSFUL = 0;
    public static final int TRY_LATER = 3;
    public static final int UNAUTHORIZED = 6;
}
