package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.Phonenumber;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberMatch.class */
public final class PhoneNumberMatch {
    private final Phonenumber.PhoneNumber number;
    private final String rawString;
    private final int start;

    public PhoneNumberMatch(int i, String str, Phonenumber.PhoneNumber phoneNumber) {
        if (i >= 0) {
            if (str == null || phoneNumber == null) {
                throw null;
            }
            this.start = i;
            this.rawString = str;
            this.number = phoneNumber;
            return;
        }
        throw new IllegalArgumentException("Start index must be >= 0.");
    }

    public int end() {
        return this.start + this.rawString.length();
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PhoneNumberMatch)) {
            return false;
        }
        PhoneNumberMatch phoneNumberMatch = (PhoneNumberMatch) obj;
        if (!this.rawString.equals(phoneNumberMatch.rawString) || this.start != phoneNumberMatch.start || !this.number.equals(phoneNumberMatch.number)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.start), this.rawString, this.number});
    }

    public Phonenumber.PhoneNumber number() {
        return this.number;
    }

    public String rawString() {
        return this.rawString;
    }

    public int start() {
        return this.start;
    }

    public String toString() {
        return "PhoneNumberMatch [" + start() + "," + end() + ") " + this.rawString;
    }
}
