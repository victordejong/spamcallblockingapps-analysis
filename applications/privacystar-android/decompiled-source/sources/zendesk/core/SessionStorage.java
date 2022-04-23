package zendesk.core;

import java.io.File;
/* loaded from: classes3-dex2jar.jar:zendesk/core/SessionStorage.class */
public interface SessionStorage {
    void clear();

    BaseStorage getAdditionalSdkStorage();

    File getZendeskCacheDir();

    File getZendeskDataDir();
}
