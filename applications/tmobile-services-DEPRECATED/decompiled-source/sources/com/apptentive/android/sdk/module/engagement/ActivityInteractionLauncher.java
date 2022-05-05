package com.apptentive.android.sdk.module.engagement;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveViewActivity;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/ActivityInteractionLauncher.class */
class ActivityInteractionLauncher implements InteractionLauncher {
    @Override // com.apptentive.android.sdk.module.engagement.InteractionLauncher
    public boolean launch(Context context, Interaction interaction) {
        Intent intent = new Intent();
        intent.setClass(context.getApplicationContext(), ApptentiveViewActivity.class);
        intent.putExtra("fragmentType", 3);
        intent.putExtra("interaction", interaction.toString());
        Activity activity = context;
        if (!(context instanceof Activity)) {
            activity = ApptentiveInternal.getInstance().getCurrentTaskStackTopActivity();
            if (activity == null) {
                intent.addFlags(402653184);
                activity = context;
            }
        }
        activity.startActivity(intent);
        return true;
    }
}
