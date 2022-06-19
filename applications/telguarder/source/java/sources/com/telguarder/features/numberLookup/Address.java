package com.telguarder.features.numberLookup;

import android.text.TextUtils;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/Address.class */
public class Address implements Serializable {
    public String place;
    public String street;
    public String zip;

    private String buildAddressWithSeparator(String str) {
        if (isEmpty()) {
            return "";
        }
        String firstPart = getFirstPart();
        String str2 = firstPart;
        if (!TextUtils.isEmpty(firstPart)) {
            str2 = firstPart + str;
        }
        return str2 + getSecondPart();
    }

    private boolean isEmpty() {
        return TextUtils.isEmpty(this.street) && TextUtils.isEmpty(this.zip) && TextUtils.isEmpty(this.place);
    }

    public String asTwoLines() {
        return buildAddressWithSeparator(getTwoLinesSeparator());
    }

    public String getFirstPart() {
        String str = this.street;
        return str == null ? null : str.trim();
    }

    public String getSecondPart() {
        if (this.zip == null || this.place == null) {
            return null;
        }
        return this.zip.trim() + " " + this.place.trim();
    }

    public String getSingleLineSeparator() {
        return ", ";
    }

    public String getTwoLinesSeparator() {
        return "\n";
    }

    public String singleLine() {
        return buildAddressWithSeparator(getSingleLineSeparator());
    }

    public String toString() {
        return singleLine();
    }
}
