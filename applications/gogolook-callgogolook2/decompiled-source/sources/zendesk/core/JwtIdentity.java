package zendesk.core;

import androidx.annotation.Nullable;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p455d.C10862d;
/* loaded from: classes3-dex2jar.jar:zendesk/core/JwtIdentity.class */
public final class JwtIdentity implements Identity {
    public final String token;

    public JwtIdentity(String str) {
        if (C10862d.m10389c(str)) {
            C10845a.m10419b("JwtIdentity", "A null or empty JWT was specified. This will not work. Please check your initialisation of JwtIdentity!", new Object[0]);
        }
        this.token = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || JwtIdentity.class != obj.getClass()) {
            return false;
        }
        String str = this.token;
        String str2 = ((JwtIdentity) obj).token;
        return str != null ? str.equals(str2) : str2 == null;
    }

    @Nullable
    public String getJwtUserIdentifier() {
        return this.token;
    }

    public int hashCode() {
        String str = this.token;
        return str != null ? str.hashCode() : 0;
    }
}
