package com.crashlytics.android;

import android.content.Context;
import com.crashlytics.android.CrashlyticsInitProvider;
import io.fabric.sdk.android.services.common.DataCollectionArbiter;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/ManifestEnabledCheckStrategy.class */
class ManifestEnabledCheckStrategy implements CrashlyticsInitProvider.EnabledCheckStrategy {
    @Override // com.crashlytics.android.CrashlyticsInitProvider.EnabledCheckStrategy
    public boolean isCrashlyticsEnabled(Context context) {
        return DataCollectionArbiter.getInstance(context).shouldAutoInitialize();
    }
}
