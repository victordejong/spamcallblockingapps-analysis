package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/core/IdentityStorage.class */
interface IdentityStorage {
    void clear();

    String getBlipsUuid();

    @Nullable
    Identity getIdentity();

    AccessToken getStoredAccessToken();

    @Nullable
    Long getUserId();

    @NonNull
    String getUuid();

    void storeAccessToken(AccessToken accessToken);

    void storeIdentity(Identity identity);

    void storeSdkGuid(String str);

    void storeUserId(Long l);

    String updateBlipsUuid();

    String updateSdkGuid();
}
