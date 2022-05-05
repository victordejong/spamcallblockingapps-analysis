package zendesk.core;

import android.support.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/core/IdentityManager.class */
interface IdentityManager {
    String getBlipsUuid();

    @Nullable
    Identity getIdentity();

    String getSdkGuid();

    String getStoredAccessTokenAsBearerToken();

    @Nullable
    Long getUserId();

    boolean identityIsDifferent(Identity identity);

    void storeAccessToken(AccessToken accessToken);

    Identity updateAndPersistIdentity(Identity identity);
}
