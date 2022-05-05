package com.apptentive.android.sdk.module.rating.impl;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.module.rating.IRatingProvider;
import com.apptentive.android.sdk.module.rating.InsufficientRatingArgumentsException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/rating/impl/MiKandiMarketRatingProvider.class */
public class MiKandiMarketRatingProvider implements IRatingProvider {
    private int mAppId;

    @Override // com.apptentive.android.sdk.module.rating.IRatingProvider
    public String activityNotFoundMessage(Context context) {
        return context.getString(C0726R.string.apptentive_rating_provider_no_mikandi);
    }

    @Override // com.apptentive.android.sdk.module.rating.IRatingProvider
    public void startRating(Context context, Map<String, String> map) throws InsufficientRatingArgumentsException {
        Uri parse = Uri.parse("mikandi://link.mikandi.com/app?app_id=" + this.mAppId + "&referrer=apptentive");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(parse);
        context.startActivity(intent);
    }
}
