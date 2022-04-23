package com.apptentive.android.sdk.module.engagement.interaction.model;

import java.util.Locale;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/NavigateToLinkInteraction.class */
public class NavigateToLinkInteraction extends Interaction {

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
        return (configuration == null || configuration.isNull("target")) ? Target.New : Target.parse(configuration.optString("target", null));
    }

    public String getUrl() {
        InteractionConfiguration configuration = getConfiguration();
        if (configuration == null || configuration.isNull("url")) {
            return null;
        }
        return configuration.optString("url", null);
    }
}
