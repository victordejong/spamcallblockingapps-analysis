package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:zendesk/core/PageView.class */
public class PageView {
    private String channel;
    private String navigatorLanguage;
    private String pageTitle;
    private String url;
    private Map<String, Object> value;
    private String version;

    public PageView(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4, @NonNull String str5) {
        this.version = str;
        this.channel = str2;
        this.url = str3;
        this.navigatorLanguage = str4;
        this.pageTitle = str5;
    }

    public PageView(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4, @NonNull String str5, @Nullable Map<String, Object> map) {
        this.version = str;
        this.channel = str2;
        this.url = str3;
        this.navigatorLanguage = str4;
        this.pageTitle = str5;
        this.value = map;
    }

    public String getChannel() {
        return this.channel;
    }

    public String getNavigatorLanguage() {
        return this.navigatorLanguage;
    }

    public String getPageTitle() {
        return this.pageTitle;
    }

    public String getUrl() {
        return this.url;
    }

    public Map<String, Object> getValue() {
        return this.value;
    }

    public String getVersion() {
        return this.version;
    }
}
