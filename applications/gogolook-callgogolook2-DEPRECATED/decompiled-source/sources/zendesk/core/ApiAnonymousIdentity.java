package zendesk.core;

import androidx.annotation.NonNull;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p455d.C10862d;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ApiAnonymousIdentity.class */
public class ApiAnonymousIdentity implements Identity {
    public static final transient String LOG_TAG = "ApiAnonymousIdentity";
    public String email;
    public String name;
    public String sdkGuid;

    public ApiAnonymousIdentity(@NonNull AnonymousIdentity anonymousIdentity, @NonNull String str) {
        if (C10862d.m10389c(str)) {
            this.sdkGuid = "";
            C10845a.m10417d(LOG_TAG, "SdkGuid cannot be null or empty.", new Object[0]);
        } else {
            this.sdkGuid = str;
        }
        if (anonymousIdentity == null) {
            C10845a.m10417d(LOG_TAG, "Identity is null.", new Object[0]);
            return;
        }
        this.email = anonymousIdentity.getEmail();
        this.name = anonymousIdentity.getName();
    }
}
