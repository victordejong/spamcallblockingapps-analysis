package com.privacystar.core.data.call.caller;

import com.privacystar.core.util.InformationUtil;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/call/caller/ParsedNumber.class */
public class ParsedNumber {
    private String parsedNumber;
    private String unparsedNumber;

    public ParsedNumber(String str) {
        this.unparsedNumber = str;
        this.parsedNumber = InformationUtil.normalizeNumber(str);
    }

    public ParsedNumber(String str, String str2) {
        this.unparsedNumber = str;
        this.parsedNumber = str2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ParsedNumber parsedNumber = (ParsedNumber) obj;
        if (getNumber() == null || !getNumber().equals(parsedNumber.getNumber())) {
            z = false;
        }
        return z;
    }

    public String getNumber() {
        return (this.parsedNumber == null || this.parsedNumber.isEmpty()) ? this.unparsedNumber : this.parsedNumber;
    }

    public String getParsedNumber() {
        return this.parsedNumber;
    }

    public String getUnparsedNumber() {
        return this.unparsedNumber;
    }

    public int hashCode() {
        if (this.parsedNumber != null && !this.parsedNumber.isEmpty()) {
            return getParsedNumber().hashCode();
        }
        return getUnparsedNumber() != null ? getUnparsedNumber().hashCode() : 0;
    }

    public void setParsedNumber(String str) {
        this.parsedNumber = str;
    }

    public void setUnparsedNumber(String str) {
        this.unparsedNumber = str;
    }

    public String toString() {
        return "[un:" + this.unparsedNumber + ", p:" + this.parsedNumber + "]";
    }
}
