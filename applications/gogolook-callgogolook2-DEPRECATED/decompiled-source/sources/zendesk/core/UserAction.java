package zendesk.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:zendesk/core/UserAction.class */
public class UserAction {
    public String action;
    public String category;
    public String channel;
    public String label;
    public Map<String, Object> value;
    public String version;

    public UserAction(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4) {
        this.version = str;
        this.channel = str2;
        this.category = str3;
        this.action = str4;
    }

    public UserAction(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4, @Nullable String str5, @Nullable Map<String, Object> map) {
        this.version = str;
        this.channel = str2;
        this.category = str3;
        this.action = str4;
        this.label = str5;
        this.value = map;
    }

    public String getAction() {
        return this.action;
    }

    public String getCategory() {
        return this.category;
    }

    public String getChannel() {
        return this.channel;
    }

    public String getLabel() {
        return this.label;
    }

    public Map<String, Object> getValue() {
        return this.value;
    }

    public String getVersion() {
        return this.version;
    }
}
