package com.apptentive.android.sdk.module.engagement.interaction.model;

import java.util.Locale;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction.class */
public class NavigateToLinkInteraction extends Interaction {
    public static final String EVENT_KEY_SUCCESS = "success";
    public static final String EVENT_NAME_NAVIGATE = "navigate";
    public static final String KEY_TARGET = "target";
    public static final String KEY_URL = "url";

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction$Target.class */
    public enum Target {
        New,
        Self;

        public static Target parse(String str) {
            Target[] values;
            if (str != null) {
                try {
                    for (Target target : values()) {
                        if (target.name().equalsIgnoreCase(str)) {
                            return target;
                        }
                    }
                } catch (Exception e) {
                }
            }
            return New;
        }

        public String lowercaseName() {
            return name().toLowerCase(Locale.US);
        }
    }

    public NavigateToLinkInteraction(String str) throws JSONException {
        super(str);
    }

    public Target getTarget() {
        InteractionConfiguration configuration = getConfiguration();
        return (configuration == null || configuration.isNull(KEY_TARGET)) ? Target.New : Target.parse(configuration.optString(KEY_TARGET, null));
    }

    public String getUrl() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || configuration.isNull("url")) {
            return null;
        }
        return configuration.optString("url", null);
    }
}
