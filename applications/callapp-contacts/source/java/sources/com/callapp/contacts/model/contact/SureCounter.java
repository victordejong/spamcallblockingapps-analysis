package com.callapp.contacts.model.contact;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/SureCounter.class */
public class SureCounter implements Comparable<SureCounter> {
    private int sureCount;
    private int unsureCount;

    public void addToCounter(boolean z) {
        if (z) {
            this.sureCount++;
        } else {
            this.unsureCount++;
        }
    }

    public int compareTo(SureCounter sureCounter) {
        int i = this.sureCount;
        int i2 = sureCounter.sureCount;
        if (i > i2) {
            return -1;
        }
        if (i2 <= i) {
            return Integer.compare(sureCounter.unsureCount, this.unsureCount);
        }
        return 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SureCounter sureCounter = (SureCounter) obj;
        return this.sureCount == sureCounter.sureCount && this.unsureCount == sureCounter.unsureCount;
    }

    public int getSureCount() {
        return this.sureCount;
    }

    public int getUnsureCount() {
        return this.unsureCount;
    }

    public int hashCode() {
        return (this.sureCount * 31) + this.unsureCount;
    }

    public String toString() {
        return "sure: " + this.sureCount + ", unsure: " + this.unsureCount;
    }
}
