package com.tenor.android.core.network;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ScreenDensity;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import com.tenor.android.core.measurable.MeasurableViewHolderEvent;
import com.tenor.android.core.network.ApiService;
import com.tenor.android.core.response.impl.AnonIdResponse;
import com.tenor.android.core.service.AaidService;
import com.tenor.android.core.util.AbstractGsonUtils;
import com.tenor.android.core.util.AbstractLocaleUtils;
import com.tenor.android.core.util.AbstractSessionUtils;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p1727n3.p1788g.C26174a;
import x3.b;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/network/ApiClient.class */
public class ApiClient {
    private static volatile IApiService<IApiClient> sApiService;

    public static b<AnonIdResponse> getAnonId(Context context, IAnonIdListener iAnonIdListener) {
        Context applicationContext = context instanceof Application ? context : context.getApplicationContext();
        b<AnonIdResponse> anonId = getInstance(applicationContext).getAnonId(sApiService.getApiKey(), AbstractLocaleUtils.getCurrentLocaleName(context));
        anonId.enqueue(new 1(applicationContext, iAnonIdListener));
        AaidService.requestAaid(context);
        return anonId;
    }

    public static String getApiKey() {
        if (sApiService != null) {
            return sApiService.getApiKey();
        }
        throw new IllegalStateException("Api service cannot be null");
    }

    public static IApiClient getInstance() {
        IApiClient iApiClient;
        synchronized (ApiClient.class) {
            try {
                if (sApiService == null) {
                    throw new IllegalStateException("Api service cannot be null");
                }
                iApiClient = sApiService.get();
            } catch (Throwable th) {
                throw th;
            }
        }
        return iApiClient;
    }

    public static IApiClient getInstance(Context context) {
        IApiClient iApiClient;
        synchronized (ApiClient.class) {
            try {
                if (sApiService == null) {
                    init(context);
                }
                iApiClient = sApiService.get();
            } catch (Throwable th) {
                throw th;
            }
        }
        return iApiClient;
    }

    public static Map<String, String> getServiceIds(Context context) {
        C26174a c26174a = new C26174a(4);
        c26174a.put(AnalyticsConstants.KEY, sApiService.getApiKey());
        String anonId = AbstractSessionUtils.getAnonId(context);
        c26174a.put(anonId.length() <= 20 ? "keyboardid" : "anon_id", anonId);
        if (TextUtils.isEmpty(AbstractSessionUtils.getAndroidAdvertiseId(context))) {
            AaidService.requestAaid(context);
        }
        c26174a.put("aaid", AbstractSessionUtils.getAndroidAdvertiseId(context));
        c26174a.put(AnalyticsConstants.LOCALE, AbstractLocaleUtils.getCurrentLocaleName(context));
        c26174a.put("screen_density", ScreenDensity.get(context));
        return c26174a;
    }

    private static void init(Context context) {
        synchronized (ApiClient.class) {
            try {
                init(context, new ApiService.Builder(context, IApiClient.class));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void init(Context context, ApiService$IBuilder<IApiClient> apiService$IBuilder) {
        synchronized (ApiClient.class) {
            try {
                init(context, apiService$IBuilder, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void init(Context context, ApiService$IBuilder<IApiClient> apiService$IBuilder, IAnonIdListener iAnonIdListener) {
        synchronized (ApiClient.class) {
            try {
                if (sApiService == null) {
                    sApiService = apiService$IBuilder.build();
                }
                if (!AbstractSessionUtils.hasAnonId(context)) {
                    getAnonId(context, iAnonIdListener);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static b<Void> registerAction(Context context, MeasurableViewHolderEvent measurableViewHolderEvent) {
        return registerActions(context, Collections.singletonList(measurableViewHolderEvent));
    }

    public static b<Void> registerAction(Context context, String str, String str2, @ViewAction.Value String str3) {
        return registerAction(context, new MeasurableViewHolderEvent(str, str3, AbstractLocaleUtils.getUtcOffset(context), str2));
    }

    public static b<Void> registerActions(Context context, List<MeasurableViewHolderEvent> list) {
        b<Void> registerActions = getInstance().registerActions(getServiceIds(context), AbstractGsonUtils.getInstance().m(list));
        registerActions.enqueue(new VoidCallBack());
        return registerActions;
    }

    public static b<Void> registerShare(Context context, String str, String str2) {
        b<Void> registerShare = getInstance(context).registerShare(getServiceIds(context), Integer.valueOf(str), StringConstant.getOrEmpty(str2));
        registerShare.enqueue(new VoidCallBack());
        return registerShare;
    }
}
