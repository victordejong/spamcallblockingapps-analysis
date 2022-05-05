package zendesk.core;

import androidx.annotation.NonNull;
/* loaded from: classes3-dex2jar.jar:zendesk/core/AccessProvider.class */
public interface AccessProvider {
    AccessToken getAndStoreAuthTokenViaAnonymous(@NonNull AnonymousIdentity anonymousIdentity);

    AccessToken getAndStoreAuthTokenViaJwt(@NonNull JwtIdentity jwtIdentity);
}
