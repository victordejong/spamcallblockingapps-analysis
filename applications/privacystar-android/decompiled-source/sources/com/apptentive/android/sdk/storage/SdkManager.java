package com.apptentive.android.sdk.storage;

import android.content.Context;
import android.content.res.Resources;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.model.SdkPayload;
import com.apptentive.android.sdk.util.Constants;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/SdkManager.class */
public class SdkManager {
    public static Sdk generateCurrentSdk(Context context) {
        Sdk sdk = new Sdk();
        sdk.setVersion(Constants.getApptentiveSdkVersion());
        sdk.setPlatform("Android");
        Resources resources = context.getResources();
        sdk.setDistribution(resources.getString(C0724R.string.apptentive_distribution));
        sdk.setDistributionVersion(resources.getString(C0724R.string.apptentive_distribution_version));
        ApptentiveLog.m401v("SDK: %s:%s", sdk.getDistribution(), sdk.getDistributionVersion());
        return sdk;
    }

    public static SdkPayload getPayload(Sdk sdk) {
        SdkPayload sdkPayload = new SdkPayload();
        if (sdk == null) {
            return sdkPayload;
        }
        sdkPayload.setAuthorEmail(sdk.getAuthorEmail());
        sdkPayload.setAuthorName(sdk.getAuthorName());
        sdkPayload.setDistribution(sdk.getDistribution());
        sdkPayload.setDistributionVersion(sdk.getDistributionVersion());
        sdkPayload.setPlatform(sdk.getPlatform());
        sdkPayload.setProgrammingLanguage(sdk.getProgrammingLanguage());
        sdkPayload.setVersion(sdk.getVersion());
        return sdkPayload;
    }
}
