package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.C16136k;
import java.util.Arrays;
/* renamed from: com.google.i18n.phonenumbers.g */
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/g.class */
public final class C16124g {

    /* renamed from: a */
    private final int f56922a;

    /* renamed from: b */
    private final String f56923b;

    /* renamed from: c */
    private final C16136k.C16137a f56924c;

    public C16124g(int i, String str, C16136k.C16137a c16137a) {
        if (i >= 0) {
            if (str == null || c16137a == null) {
                throw null;
            }
            this.f56922a = i;
            this.f56923b = str;
            this.f56924c = c16137a;
            return;
        }
        throw new IllegalArgumentException("Start index must be >= 0.");
    }

    /* renamed from: a */
    public final int m7815a() {
        return this.f56922a + this.f56923b.length();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C16124g)) {
            return false;
        }
        C16124g c16124g = (C16124g) obj;
        return this.f56923b.equals(c16124g.f56923b) && this.f56922a == c16124g.f56922a && this.f56924c.equals(c16124g.f56924c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f56922a), this.f56923b, this.f56924c});
    }

    public final String toString() {
        return "PhoneNumberMatch [" + this.f56922a + "," + m7815a() + ") " + this.f56923b;
    }
}
