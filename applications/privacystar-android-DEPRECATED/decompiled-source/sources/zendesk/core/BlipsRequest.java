package zendesk.core;

import com.google.gson.annotations.SerializedName;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:zendesk/core/BlipsRequest.class */
class BlipsRequest {
    @SerializedName("appId")
    private String appId;
    private String channel;
    @SerializedName("pageView")
    private ApiPageView pageView;
    @SerializedName("schemaVersion")
    private String schemaVersion = "1";
    private String timestamp;
    private String url;
    @SerializedName("userAction")
    private ApiUserAction userAction;
    @SerializedName("userId")
    private Long userId;
    private String uuid;
    private String version;

    /* loaded from: classes3-dex2jar.jar:zendesk/core/BlipsRequest$ApiPageView.class */
    static class ApiPageView {
        @SerializedName("navigatorLanguage")
        private String navigatorLanguage;
        @SerializedName("pageTitle")
        private String pageTitle;
        private Map<String, Object> value;

        ApiPageView(String str, String str2, Map<String, Object> map) {
            this.navigatorLanguage = str;
            this.pageTitle = str2;
            this.value = map;
        }

        String getNavigatorLanguage() {
            return this.navigatorLanguage;
        }

        String getPageTitle() {
            return this.pageTitle;
        }

        Map<String, Object> getValue() {
            return this.value;
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/core/BlipsRequest$ApiUserAction.class */
    static class ApiUserAction {
        private String action;
        private String category;
        private String label;
        private Map<String, Object> value;

        ApiUserAction(String str, String str2, String str3, Map<String, Object> map) {
            this.category = str;
            this.action = str2;
            this.label = str3;
            this.value = map;
        }

        String getAction() {
            return this.action;
        }

        String getCategory() {
            return this.category;
        }

        String getLabel() {
            return this.label;
        }

        Map<String, Object> getValue() {
            return this.value;
        }
    }

    private BlipsRequest() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BlipsRequest buildPageView(String str, String str2, Long l, String str3, String str4, String str5, String str6, String str7, String str8, Map<String, Object> map) {
        BlipsRequest blipsRequest = new BlipsRequest();
        blipsRequest.uuid = str;
        blipsRequest.timestamp = str2;
        blipsRequest.userId = l;
        blipsRequest.appId = str3;
        blipsRequest.version = str4;
        blipsRequest.channel = str5;
        blipsRequest.url = str6;
        blipsRequest.pageView = new ApiPageView(str7, str8, map);
        return blipsRequest;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BlipsRequest buildUserAction(String str, String str2, Long l, String str3, String str4, String str5, String str6, String str7, String str8, Map<String, Object> map) {
        BlipsRequest blipsRequest = new BlipsRequest();
        blipsRequest.uuid = str;
        blipsRequest.timestamp = str2;
        blipsRequest.userId = l;
        blipsRequest.appId = str3;
        blipsRequest.version = str4;
        blipsRequest.channel = str5;
        blipsRequest.userAction = new ApiUserAction(str6, str7, str8, map);
        return blipsRequest;
    }

    String getAppId() {
        return this.appId;
    }

    String getChannel() {
        return this.channel;
    }

    ApiPageView getPageView() {
        return this.pageView;
    }

    String getSchemaVersion() {
        return this.schemaVersion;
    }

    String getTimestamp() {
        return this.timestamp;
    }

    String getUrl() {
        return this.url;
    }

    ApiUserAction getUserAction() {
        return this.userAction;
    }

    Long getUserId() {
        return this.userId;
    }

    String getUuid() {
        return this.uuid;
    }

    String getVersion() {
        return this.version;
    }
}
