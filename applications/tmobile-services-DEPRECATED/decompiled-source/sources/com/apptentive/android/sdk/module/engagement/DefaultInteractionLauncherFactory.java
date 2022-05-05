package com.apptentive.android.sdk.module.engagement;

import androidx.annotation.NonNull;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/DefaultInteractionLauncherFactory.class */
public class DefaultInteractionLauncherFactory implements InteractionLauncherFactory {
    private final Map<Interaction.DisplayType, InteractionLauncher> launcherLookup = createLauncherLookup();

    private Map<Interaction.DisplayType, InteractionLauncher> createLauncherLookup() {
        HashMap hashMap = new HashMap();
        hashMap.put(Interaction.DisplayType.notification, createNotificationInteractionLauncher());
        hashMap.put(Interaction.DisplayType.unknown, createActivityInteractionLauncher());
        return hashMap;
    }

    @NonNull
    InteractionLauncher createActivityInteractionLauncher() {
        return new ActivityInteractionLauncher();
    }

    @NonNull
    InteractionLauncher createNotificationInteractionLauncher() {
        return new NotificationInteractionLauncher();
    }

    @Override // com.apptentive.android.sdk.module.engagement.InteractionLauncherFactory
    public InteractionLauncher launcherForInteraction(Interaction interaction) {
        return this.launcherLookup.get(interaction.getDisplayType());
    }
}
