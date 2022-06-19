package org.bouncycastle.jce.provider;

import java.util.Date;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/CertStatus.class */
public class CertStatus {
    public static final int UNDETERMINED = 12;
    public static final int UNREVOKED = 11;
    public int certStatus = 11;
    public Date revocationDate = null;

    public int getCertStatus() {
        return this.certStatus;
    }

    public Date getRevocationDate() {
        return this.revocationDate;
    }

    public void setCertStatus(int i) {
        this.certStatus = i;
    }

    public void setRevocationDate(Date date) {
        this.revocationDate = date;
    }
}
