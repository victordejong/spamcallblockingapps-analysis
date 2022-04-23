package zendesk.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p081h.p451q.p454c.C10854d;
import p081h.p451q.p455d.C10858a;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskUserProvider.class */
public class ZendeskUserProvider implements UserProvider {
    static {
        new C10854d.AbstractC10856b<UserResponse, User>() { // from class: zendesk.core.ZendeskUserProvider.6
            public User extract(UserResponse userResponse) {
                return userResponse.getUser();
            }
        };
        new C10854d.AbstractC10856b<UserFieldResponse, List<Object>>() { // from class: zendesk.core.ZendeskUserProvider.7
            public List<Object> extract(UserFieldResponse userFieldResponse) {
                return userFieldResponse.getUserFields();
            }
        };
        new C10854d.AbstractC10856b<UserResponse, Map<String, String>>() { // from class: zendesk.core.ZendeskUserProvider.8
            public Map<String, String> extract(UserResponse userResponse) {
                if (userResponse == null || userResponse.getUser() == null) {
                    return C10858a.m10403a(new HashMap());
                }
                userResponse.getUser().getUserFields();
                throw null;
            }
        };
        new C10854d.AbstractC10856b<UserResponse, List<String>>() { // from class: zendesk.core.ZendeskUserProvider.9
            public List<String> extract(UserResponse userResponse) {
                if (userResponse == null || userResponse.getUser() == null) {
                    return C10858a.m10404a((List) new ArrayList());
                }
                userResponse.getUser().getTags();
                throw null;
            }
        };
    }

    public ZendeskUserProvider(UserService userService) {
    }
}
