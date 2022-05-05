package com.apptentive.android.sdk.module.engagement;

import android.content.Context;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/InteractionLauncher.class */
public interface InteractionLauncher {
    boolean launch(Context context, Interaction interaction);
}
