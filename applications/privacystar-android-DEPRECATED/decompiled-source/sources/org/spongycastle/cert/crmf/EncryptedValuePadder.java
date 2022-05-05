package org.spongycastle.cert.crmf;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/crmf/EncryptedValuePadder.class */
public interface EncryptedValuePadder {
    byte[] getPaddedData(byte[] bArr);

    byte[] getUnpaddedData(byte[] bArr);
}
