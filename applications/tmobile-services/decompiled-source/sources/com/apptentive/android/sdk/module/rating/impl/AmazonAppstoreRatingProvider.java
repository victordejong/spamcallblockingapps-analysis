package com.apptentive.android.sdk.module.rating.impl;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.module.rating.IRatingProvider;
import com.apptentive.android.sdk.module.rating.InsufficientRatingArgumentsException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/rating/impl/AmazonAppstoreRatingProvider.class */
public class AmazonAppstoreRatingProvider implements IRatingProvider {
    @Override // com.apptentive.android.sdk.module.rating.IRatingProvider
    public String activityNotFoundMessage(Context context) {
        return context.getString(C0726R.string.apptentive_rating_provider_no_amazon_appstore);
    }

    @Override // com.apptentive.android.sdk.module.rating.IRatingProvider
    public void startRating(Context context, Map<String, String> map) throws InsufficientRatingArgumentsException {
        if (map.containsKey("package")) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("amzn://apps/android?p=" + map.get("package")));
            intent.setFlags(1342701568);
            context.startActivity(intent);
            return;
        }
        throw new InsufficientRatingArgumentsException("Missing required argument 'package'");
    }
}
