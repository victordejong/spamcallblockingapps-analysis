package com.privacystar.core.util;

import android.content.Context;
import com.privacystar.core.C1566R;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.firebase.PSFirebaseInstanceIDService;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/FirebaseUtil.class */
public class FirebaseUtil {
    public static void subscribeToOffenderDeltaTopic(Context context) {
        Timber.m37d("Checking to see if we need to subscribe to FCM offender delta topic.", new Object[0]);
        if (!PreferenceUtil.getHasSubscribedToOffenderDeltas() && PSFirebaseInstanceIDService.getFcmId() != null) {
            String string = context.getString(C1566R.string.fcm_topic_offender_deltas);
            Timber.m37d("We haven't subscribed - attempting to do so on [%s].", string);
            PSFirebaseInstanceIDService.subscribeToTopic(string);
            PreferenceUtil.putHasSubscribedToOffenderDeltas(true);
        }
    }
}
