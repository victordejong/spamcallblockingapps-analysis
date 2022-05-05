package com.privacystar.core.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.privacystar.core.service.googleplay.IABConstants;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/receiver/GooglePlayReceiver.class */
public class GooglePlayReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && intent.getAction().equals(IABConstants.ACTION)) {
            Timber.m37d("Action: %s", intent.getStringExtra(IABConstants.EXTRA_ACTION));
        }
    }
}
