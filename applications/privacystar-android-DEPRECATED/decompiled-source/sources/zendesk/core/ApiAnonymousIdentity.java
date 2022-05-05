package zendesk.core;

import android.support.annotation.NonNull;
import com.zendesk.logger.Logger;
import com.zendesk.util.StringUtils;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ApiAnonymousIdentity.class */
class ApiAnonymousIdentity implements Identity {
    private static final transient String LOG_TAG = "ApiAnonymousIdentity";
    private String email;
    private String name;
    private String sdkGuid;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ApiAnonymousIdentity(@NonNull AnonymousIdentity anonymousIdentity, @NonNull String str) {
        if (StringUtils.isEmpty(str)) {
            this.sdkGuid = "";
            Logger.m289w(LOG_TAG, "SdkGuid cannot be null or empty.", new Object[0]);
        } else {
            this.sdkGuid = str;
        }
        if (anonymousIdentity == null) {
            Logger.m289w(LOG_TAG, "Identity is null.", new Object[0]);
            return;
        }
        this.email = anonymousIdentity.getEmail();
        this.name = anonymousIdentity.getName();
    }
}
