package com.apptentive.android.sdk.module.engagement;

import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/InteractionLauncherFactory.class */
public interface InteractionLauncherFactory {
    InteractionLauncher launcherForInteraction(Interaction interaction);
}
