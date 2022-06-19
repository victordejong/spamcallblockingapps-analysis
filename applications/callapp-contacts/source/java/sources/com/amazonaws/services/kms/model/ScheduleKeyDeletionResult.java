package com.amazonaws.services.kms.model;

import java.io.Serializable;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/kms/model/ScheduleKeyDeletionResult.class */
public class ScheduleKeyDeletionResult implements Serializable {
    private Date deletionDate;
    private String keyId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ScheduleKeyDeletionResult)) {
            return false;
        }
        ScheduleKeyDeletionResult scheduleKeyDeletionResult = (ScheduleKeyDeletionResult) obj;
        if ((scheduleKeyDeletionResult.getKeyId() == null) ^ (getKeyId() == null)) {
            return false;
        }
        if (scheduleKeyDeletionResult.getKeyId() != null && !scheduleKeyDeletionResult.getKeyId().equals(getKeyId())) {
            return false;
        }
        if ((scheduleKeyDeletionResult.getDeletionDate() == null) ^ (getDeletionDate() == null)) {
            return false;
        }
        return scheduleKeyDeletionResult.getDeletionDate() == null || scheduleKeyDeletionResult.getDeletionDate().equals(getDeletionDate());
    }

    public Date getDeletionDate() {
        return this.deletionDate;
    }

    public String getKeyId() {
        return this.keyId;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getKeyId() == null ? 0 : getKeyId().hashCode();
        if (getDeletionDate() != null) {
            i = getDeletionDate().hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setDeletionDate(Date date) {
        this.deletionDate = date;
    }

    public void setKeyId(String str) {
        this.keyId = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (getKeyId() != null) {
            sb.append("KeyId: " + getKeyId() + ",");
        }
        if (getDeletionDate() != null) {
            sb.append("DeletionDate: " + getDeletionDate());
        }
        sb.append("}");
        return sb.toString();
    }

    public ScheduleKeyDeletionResult withDeletionDate(Date date) {
        this.deletionDate = date;
        return this;
    }

    public ScheduleKeyDeletionResult withKeyId(String str) {
        this.keyId = str;
        return this;
    }
}
