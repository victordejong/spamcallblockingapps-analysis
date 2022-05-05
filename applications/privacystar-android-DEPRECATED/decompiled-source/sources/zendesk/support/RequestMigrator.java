package zendesk.support;

import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/RequestMigrator.class */
interface RequestMigrator {
    void clearLegacyRequestStorage();

    List<RequestData> getLegacyRequests();
}
