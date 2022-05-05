package zendesk.core;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:zendesk/core/UserFieldRequest.class */
class UserFieldRequest {
    private final Map<String, Map<String, String>> user;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserFieldRequest(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        hashMap.put("user_fields", map);
        this.user = hashMap;
    }
}
