package zendesk.core;

import java.util.Map;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/BlipsRequest.class */
public class BlipsRequest {
    @AbstractC10120c("appId")
    public String appId;
    @AbstractC10120c("pageView")
    public ApiPageView pageView;
    @AbstractC10120c("schemaVersion")
    public String schemaVersion = "1";
    @AbstractC10120c("userAction")
    public ApiUserAction userAction;
    @AbstractC10120c("userId")
    public Long userId;

    /* loaded from: classes3-dex2jar.jar:zendesk/core/BlipsRequest$ApiPageView.class */
    public static class ApiPageView {
        @AbstractC10120c("navigatorLanguage")
        public String navigatorLanguage;
        @AbstractC10120c("pageTitle")
        public String pageTitle;
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/core/BlipsRequest$ApiUserAction.class */
    public static class ApiUserAction {
        public ApiUserAction(String str, String str2, String str3, Map<String, Object> map) {
        }
    }

    public static BlipsRequest buildUserAction(String str, String str2, Long l, String str3, String str4, String str5, String str6, String str7, String str8, Map<String, Object> map) {
        BlipsRequest blipsRequest = new BlipsRequest();
        blipsRequest.userId = l;
        blipsRequest.appId = str3;
        blipsRequest.userAction = new ApiUserAction(str6, str7, str8, map);
        return blipsRequest;
    }
}
