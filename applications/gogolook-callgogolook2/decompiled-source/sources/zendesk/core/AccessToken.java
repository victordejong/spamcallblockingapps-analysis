package zendesk.core;

import p081h.p203i.p384e.p385v.AbstractC10120c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/AccessToken.class */
public class AccessToken {
    public String accessToken;
    @AbstractC10120c("user_id")
    public String userId;

    public AccessToken() {
    }

    public AccessToken(String str, String str2) {
        this.accessToken = str;
        this.userId = str2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || AccessToken.class != obj.getClass()) {
            return false;
        }
        AccessToken accessToken = (AccessToken) obj;
        String str = this.accessToken;
        if (str != null) {
            if (!str.equals(accessToken.accessToken)) {
                return false;
            }
        } else if (accessToken.accessToken != null) {
            return false;
        }
        String str2 = this.userId;
        String str3 = accessToken.userId;
        if (str2 != null) {
            z = str2.equals(str3);
        } else if (str3 != null) {
            z = false;
        }
        return z;
    }

    public String getAccessToken() {
        return this.accessToken;
    }

    public String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        String str = this.accessToken;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.userId;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }
}
