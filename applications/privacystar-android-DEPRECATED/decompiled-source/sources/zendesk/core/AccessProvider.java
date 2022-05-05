package zendesk.core;

import android.support.annotation.NonNull;
/* loaded from: classes3-dex2jar.jar:zendesk/core/AccessProvider.class */
interface AccessProvider {
    public static final String NO_JWT_ERROR_MESSAGE = "The jwt user identifier is null or empty. We cannot proceed to get an access token";

    AccessToken getAndStoreAuthTokenViaAnonymous(@NonNull AnonymousIdentity anonymousIdentity);

    AccessToken getAndStoreAuthTokenViaJwt(@NonNull JwtIdentity jwtIdentity);
}
