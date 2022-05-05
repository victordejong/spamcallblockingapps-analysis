package zendesk.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/core/AuthenticationType.class */
public enum AuthenticationType {
    JWT("jwt"),
    ANONYMOUS("anonymous");
    
    public final String authenticationType;

    AuthenticationType(String str) {
        this.authenticationType = str;
    }

    @Nullable
    public static AuthenticationType getAuthType(String str) {
        if (JWT.authenticationType.equals(str)) {
            return JWT;
        }
        if (ANONYMOUS.authenticationType.equals(str)) {
            return ANONYMOUS;
        }
        return null;
    }

    @NonNull
    public String getAuthenticationType() {
        return this.authenticationType;
    }
}
