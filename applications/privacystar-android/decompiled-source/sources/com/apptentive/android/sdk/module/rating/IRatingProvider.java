package com.apptentive.android.sdk.module.rating;

import android.content.Context;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/rating/IRatingProvider.class */
public interface IRatingProvider {
    String activityNotFoundMessage(Context context);

    void startRating(Context context, Map<String, String> map) throws InsufficientRatingArgumentsException;
}
