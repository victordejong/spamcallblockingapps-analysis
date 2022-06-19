package com.freshchat.consumer.sdk.beans;

import e.m.e.d0.b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/Csat.class */
public class Csat {
    private long csatId;
    @b("initiated")
    private long initiatedTime;
    private boolean isMandatory;
    private boolean mobileUserCommentsAllowed;
    private String question;
    private transient CSatStatus status = CSatStatus.NOT_RATED;

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/Csat$CSatStatus.class */
    public enum CSatStatus {
        NOT_RATED(0),
        RATED_NOT_UPLOADED(1),
        UPLOADED(2);
        
        private final int intValue;

        CSatStatus(int i) {
            this.intValue = i;
        }

        public static CSatStatus fromInt(int i) {
            CSatStatus[] values = values();
            for (int i2 = 0; i2 < 3; i2++) {
                CSatStatus cSatStatus = values[i2];
                if (cSatStatus.asInt() == i) {
                    return cSatStatus;
                }
            }
            return NOT_RATED;
        }

        public int asInt() {
            return this.intValue;
        }
    }

    public long getCsatId() {
        return this.csatId;
    }

    public long getInitiatedTime() {
        return this.initiatedTime;
    }

    public String getQuestion() {
        return this.question;
    }

    public CSatStatus getStatus() {
        return this.status;
    }

    public boolean isMandatory() {
        return this.isMandatory;
    }

    public boolean isMobileUserCommentsAllowed() {
        return this.mobileUserCommentsAllowed;
    }

    public void setCsatId(long j) {
        this.csatId = j;
    }

    public void setInitiatedTime(long j) {
        this.initiatedTime = j;
    }

    public void setMandatory(boolean z) {
        this.isMandatory = z;
    }

    public void setMobileUserCommentsAllowed(boolean z) {
        this.mobileUserCommentsAllowed = z;
    }

    public void setQuestion(String str) {
        this.question = str;
    }

    public void setStatus(CSatStatus cSatStatus) {
        this.status = cSatStatus;
    }

    public String toString() {
        StringBuilder m8704I = C22128a.m8704I("Csat{", "csatId=");
        m8704I.append(this.csatId);
        m8704I.append(", question='");
        C22128a.m8678P0(m8704I, this.question, '\'', ", mobileUserCommentsAllowed=");
        m8704I.append(this.mobileUserCommentsAllowed);
        m8704I.append(", isMandatory=");
        m8704I.append(this.isMandatory);
        m8704I.append(", status=");
        m8704I.append(this.status);
        m8704I.append(", initiatedTime=");
        m8704I.append(this.initiatedTime);
        m8704I.append('}');
        return m8704I.toString();
    }
}
