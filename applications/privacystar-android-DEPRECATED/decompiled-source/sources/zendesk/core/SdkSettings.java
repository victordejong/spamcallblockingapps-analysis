package zendesk.core;

import android.support.annotation.Nullable;
import java.io.Serializable;
import java.util.Date;
/* loaded from: classes3-dex2jar.jar:zendesk/core/SdkSettings.class */
class SdkSettings implements Serializable {
    private String authentication;
    private Date updatedAt;

    SdkSettings() {
    }

    @Nullable
    AuthenticationType getAuthentication() {
        return AuthenticationType.getAuthType(this.authentication);
    }

    @Nullable
    Date getUpdatedAt() {
        return this.updatedAt == null ? null : new Date(this.updatedAt.getTime());
    }
}
