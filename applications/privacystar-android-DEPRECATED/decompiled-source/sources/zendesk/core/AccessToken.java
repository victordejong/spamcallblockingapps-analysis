package zendesk.core;

import com.google.gson.annotations.SerializedName;
/* loaded from: classes3-dex2jar.jar:zendesk/core/AccessToken.class */
class AccessToken {
    private String accessToken;
    @SerializedName("user_id")
    private String userId;

    AccessToken() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccessToken(String str, String str2) {
        this.accessToken = str;
        this.userId = str2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AccessToken accessToken = (AccessToken) obj;
        if (this.accessToken != null) {
            if (!this.accessToken.equals(accessToken.accessToken)) {
                return false;
            }
        } else if (accessToken.accessToken != null) {
            return false;
        }
        if (this.userId != null) {
            z = this.userId.equals(accessToken.userId);
        } else if (accessToken.userId != null) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getAccessToken() {
        return this.accessToken;
    }

    public String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.accessToken != null ? this.accessToken.hashCode() : 0;
        if (this.userId != null) {
            i = this.userId.hashCode();
        }
        return (hashCode * 31) + i;
    }
}
