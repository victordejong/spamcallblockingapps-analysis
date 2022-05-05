package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.Phonenumber;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberMatch.class */
public final class PhoneNumberMatch {

    /* renamed from: a */
    private final int f12236a;

    /* renamed from: b */
    private final String f12237b;

    /* renamed from: c */
    private final Phonenumber.PhoneNumber f12238c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PhoneNumberMatch(int i, String str, Phonenumber.PhoneNumber phoneNumber) {
        if (i < 0) {
            throw new IllegalArgumentException("Start index must be >= 0.");
        } else if (str == null || phoneNumber == null) {
            throw null;
        } else {
            this.f12236a = i;
            this.f12237b = str;
            this.f12238c = phoneNumber;
        }
    }

    /* renamed from: a */
    public int m8079a() {
        return this.f12236a + this.f12237b.length();
    }

    /* renamed from: b */
    public int m8078b() {
        return this.f12236a;
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
        if (!this.f12237b.equals(phoneNumberMatch.f12237b) || this.f12236a != phoneNumberMatch.f12236a || !this.f12238c.equals(phoneNumberMatch.f12238c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f12236a), this.f12237b, this.f12238c});
    }

    public String toString() {
        return "PhoneNumberMatch [" + m8078b() + "," + m8079a() + ") " + this.f12237b;
    }
}
