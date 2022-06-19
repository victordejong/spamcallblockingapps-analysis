package com.amazonaws.services.p101s3.model;

import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.AbortIncompleteMultipartUpload */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/AbortIncompleteMultipartUpload.class */
public class AbortIncompleteMultipartUpload implements Serializable {
    private int daysAfterInitiation;

    public AbortIncompleteMultipartUpload clone() throws CloneNotSupportedException {
        try {
            return (AbortIncompleteMultipartUpload) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new IllegalStateException("Got a CloneNotSupportedException from Object.clone() even though we're Cloneable!", e);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.daysAfterInitiation == ((AbortIncompleteMultipartUpload) obj).daysAfterInitiation;
    }

    public int getDaysAfterInitiation() {
        return this.daysAfterInitiation;
    }

    public int hashCode() {
        return this.daysAfterInitiation;
    }

    public void setDaysAfterInitiation(int i) {
        this.daysAfterInitiation = i;
    }

    public AbortIncompleteMultipartUpload withDaysAfterInitiation(int i) {
        setDaysAfterInitiation(i);
        return this;
    }
}
