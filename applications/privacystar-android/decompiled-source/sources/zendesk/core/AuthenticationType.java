package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/core/AuthenticationType.class */
public enum AuthenticationType {
    JWT("jwt"),
    ANONYMOUS("anonymous");
    
    private final String authenticationType;

    AuthenticationType(String str) {
        this.authenticationType = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public String getAuthenticationType() {
        return this.authenticationType;
    }
}
