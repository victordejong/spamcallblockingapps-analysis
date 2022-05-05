package com.apptentive.android.sdk.module.rating.impl;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.module.rating.IRatingProvider;
import com.apptentive.android.sdk.module.rating.InsufficientRatingArgumentsException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/rating/impl/GooglePlayRatingProvider.class */
public class GooglePlayRatingProvider implements IRatingProvider {
    @Override // com.apptentive.android.sdk.module.rating.IRatingProvider
    public String activityNotFoundMessage(Context context) {
        return context.getString(C0724R.string.apptentive_rating_provider_no_google_play);
    }

    @Override // com.apptentive.android.sdk.module.rating.IRatingProvider
    public void startRating(Context context, Map<String, String> map) throws InsufficientRatingArgumentsException {
        if (!map.containsKey("package")) {
            String packageName = context.getPackageName();
            ApptentiveLog.m397w("Rating provider args did not contain package name. Adding default package: \"%s\"", packageName);
            map.put("package", packageName);
        }
        Uri parse = Uri.parse("market://details?id=" + map.get("package"));
        ApptentiveLog.m405i("Opening app store for rating with URI: \"%s\"", parse);
        Intent intent = new Intent("android.intent.action.VIEW", parse);
        int i = Build.VERSION.SDK_INT;
        intent.setFlags(1342701568);
        context.startActivity(intent);
    }
}
