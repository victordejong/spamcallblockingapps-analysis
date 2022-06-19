package com.telguarder.helpers.backend;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.telguarder.BuildConfig;
import com.telguarder.C2083R;
import com.telguarder.helpers.backend.BackendRequest;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.country.CountryManager;
import com.telguarder.helpers.idGenerators.UID;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/backend/BackendRequestCreator.class */
public class BackendRequestCreator {
    public static BackendRequest backendRequestOfUrlAndMethodWithLogging(Context context, String str, BackendRequest.Method method) {
        return backendRequestOfUrlAndMethodWithLogging(context, str, method, null);
    }

    public static BackendRequest backendRequestOfUrlAndMethodWithLogging(Context context, String str, BackendRequest.Method method, String str2) {
        BackendRequest backendRequest = new BackendRequest(str, method);
        int i = Build.VERSION.SDK_INT;
        backendRequest.putHeader("X-Country-Code", CountryManager.getInstance().getCountryIso(context));
        backendRequest.putHeader("X-Language-Code", CountryManager.getInstance().getDeviceLanguage());
        backendRequest.putHeader("X-MCC", CountryManager.getInstance().getMCC(context));
        backendRequest.putHeader("X-ServiceKey", AppUtil.getStringResource(context, C2083R.string.x_service_key));
        if (!TextUtils.isEmpty(str2)) {
            backendRequest.putHeader("X-SiteId", str2);
        }
        backendRequest.putHeader("X-DeviceId", UID.uid(context));
        backendRequest.putHeader("X-Android-Api-Level", String.valueOf(i));
        backendRequest.putHeader("X-BuildNumber", String.valueOf((int) BuildConfig.VERSION_CODE));
        backendRequest.putHeader("X-Session-ID", UUID.randomUUID().toString());
        backendRequest.putHeader("X-ApplicationID", context.getPackageName());
        return backendRequest;
    }
}
