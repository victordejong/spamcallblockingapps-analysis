package com.tmobile.services.nameid.utility;

import android.content.Context;
import android.os.Build;
import com.apptentive.android.sdk.Apptentive;
import com.chuckerteam.chucker.api.ChuckerInterceptor;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.FoServicesApi;
import com.tmobile.services.nameid.api.MetroApiWrapper;
import com.tmobile.services.nameid.model.BasePayload;
import com.tmobile.services.nameid.model.LicenseResponse;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.RegistrationRequest;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.model.UserObject;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.realm.ImportFlag;
import io.realm.Realm;
import java.util.Date;
import javax.annotation.Nonnull;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/FoRegistrationHelper.class */
public class FoRegistrationHelper {
    private FoRegistrationHelper() {
        throw new IllegalAccessError("This is a utility class, it should not be created.");
    }

    /* renamed from: a */
    public static void m5705a(Context context) {
        String str = "".equals(PreferenceUtils.m5390g("PREF_PSTAR_USER_TOKEN")) ? "New" : "Upgrade";
        String str2 = Build.MANUFACTURER;
        String str3 = Build.MODEL;
        String str4 = Build.VERSION.RELEASE;
        long longValue = DeviceInfoUtils.m5760d().longValue();
        String substring = String.valueOf(longValue).length() >= 8 ? String.valueOf(longValue).substring(0, 8) : String.valueOf(longValue);
        String i = DeviceInfoUtils.m5755i(context);
        String g = PreferenceUtils.m5390g("PREF_ANALYTIC_APP_REGISTER_VERSION");
        LogUtil.m5643d("FoRegistrationHelper#appRegistrationAnalytic", "IMEI: " + longValue);
        if (!i.equals(g)) {
            LogUtil.m5643d("FoRegistrationHelper#appRegistrationAnalytic", "Registering Analytic Event.");
            MainApplication.m7553C("registration", new String[]{Apptentive.Version.TYPE, "status", "device_make", "device_model", "device_os", "tac"}, new String[]{i, str, str2, str3, str4, substring});
            AnalyticsWrapper.m5879a(context.getPackageName(), i, str2, str3, str4, substring);
            PreferenceUtils.m5383n("PREF_ANALYTIC_APP_REGISTER_VERSION", i);
            return;
        }
        LogUtil.m5643d("FoRegistrationHelper#appRegistrationAnalytic", "App is registered.");
    }

    /* renamed from: b */
    private static void m5704b(BasePayload basePayload, long j) {
        basePayload.setDeviceTimestamp(Long.valueOf(j));
        basePayload.setDeviceTimeZone(DeviceInfoUtils.m5756h());
        basePayload.setIsDstActive(Boolean.valueOf(DeviceInfoUtils.m5761c()));
    }

    /* renamed from: c */
    private static FoServicesApi m5703c(Context context) {
        return BuildUtils.m5848f() ? new MockServicesApi(m5699g(context)) : (FoServicesApi) m5699g(context).create(FoServicesApi.class);
    }

    /* renamed from: d */
    public static void m5702d(Consumer<LicenseResponse> consumer) {
        Context l = MainApplication.m7528l();
        Observable<LicenseResponse> retry = l != null ? m5703c(l).mo5488b(m5701e()).subscribeOn(Schedulers.m3239b()).observeOn(AndroidSchedulers.m4448c()).retry(2L) : null;
        if (retry != null) {
            retry.subscribe(consumer, C1981s.f14591f);
        }
    }

    /* renamed from: e */
    static RegistrationRequest m5701e() {
        String str;
        String str2;
        String g = PreferenceUtils.m5390g("PREF_PSTAR_USER_TOKEN");
        RegistrationRequest registrationRequest = new RegistrationRequest();
        RegistrationRequest.Payload instantiatePayload = registrationRequest.instantiatePayload();
        registrationRequest.setPayload(instantiatePayload);
        Context l = MainApplication.m7528l();
        String i = DeviceInfoUtils.m5755i(l);
        if (l != null) {
            str = DeviceInfoUtils.m5762b(l);
            PreferenceUtils.m5383n("PREF_DEVICE_ID", str);
            str2 = l.getPackageName();
            boolean equals = "com.metropcs.scamshield".equals(str2);
            str2 = "com.privacystar.android.metro";
            if (equals) {
                instantiatePayload.setAliasedApp("com.metropcs.scamshield");
                str2 = "com.privacystar.android.metro";
            }
            if ("com.metropcs.scamshield.debug".equals(str2)) {
                instantiatePayload.setAliasedApp("com.metropcs.scamshield.debug");
            }
            if ("com.tmobile.services.nameid".equals(str2) && SubscriptionHelper.m5332B()) {
                instantiatePayload.setAliasedApp("com.tmobile.services.nameid.xp");
            }
            LogUtil.m5643d("FoRegistrationHelper#generateRequest", str2);
            instantiatePayload.setDevid(str);
            instantiatePayload.setApp(str2);
            long longValue = DeviceInfoUtils.m5760d().longValue();
            if (longValue == 0) {
                instantiatePayload.setImei(null);
            } else {
                instantiatePayload.setImei(Long.valueOf(longValue));
            }
        } else {
            str = "";
            str2 = str;
        }
        Realm G0 = Realm.m3064G0();
        try {
            TmoUserStatus tmoUserStatus = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
            if (tmoUserStatus == null) {
                instantiatePayload.setTrialDaysLeft(0);
            } else {
                instantiatePayload.setTrialDaysLeft(Integer.valueOf(tmoUserStatus.getDaysLeft()));
            }
            if (G0 != null) {
                G0.close();
            }
            if (BuildUtils.m5850d()) {
                instantiatePayload.setMdn(PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN"));
            }
            instantiatePayload.setNpanxx(StringParsingUtils.m5339a(PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN")));
            if (g != null && !g.isEmpty()) {
                instantiatePayload.setToken(g);
                registrationRequest.setUser(m5700f(g, str2, str, i));
            }
            instantiatePayload.setApk(i);
            instantiatePayload.setFcmkey("");
            instantiatePayload.setOsVersion(Build.VERSION.RELEASE);
            m5704b(instantiatePayload, System.currentTimeMillis());
            instantiatePayload.setDeviceManufacturer(Build.MANUFACTURER);
            instantiatePayload.setDeviceModel(Build.MODEL);
            return registrationRequest;
        } finally {
            try {
                throw th;
            } catch (Throwable th) {
            }
        }
    }

    @Nonnull
    /* renamed from: f */
    static UserObject m5700f(String str, String str2, String str3, String str4) {
        UserObject userObject = new UserObject();
        userObject.setToken(str);
        if (!str2.isEmpty()) {
            userObject.setPackageName(str2);
        }
        if (!str3.isEmpty()) {
            userObject.setDeviceId(str3);
        }
        if (!str4.isEmpty()) {
            userObject.setApkVersion(str4);
        }
        return userObject;
    }

    /* renamed from: g */
    private static Retrofit m5699g(Context context) {
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(C1972p.f14581a);
        httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
        return new Retrofit.Builder().baseUrl(m5698h()).addConverterFactory(GsonConverterFactory.create()).client(new OkHttpClient.Builder().addInterceptor(new ChuckerInterceptor(context)).addInterceptor(httpLoggingInterceptor).build()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).build();
    }

    /* renamed from: h */
    public static String m5698h() {
        return BuildUtils.m5847g() ? "https://services.fosrvt.com/" : "https://tst-services.fosrvt.com/";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static /* synthetic */ void m5695k(LicenseResponseItem licenseResponseItem, Realm realm) {
        realm.m3053Q0(LicenseResponseItem.class).m2918E().m3099d();
        realm.m3045v0(licenseResponseItem, new ImportFlag[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static /* synthetic */ void m5694l(Context context, LicenseResponse licenseResponse) throws Exception {
        PreferenceUtils.m5383n("PREF_PSTAR_USER_TOKEN", licenseResponse.getToken());
        LogUtil.m5643d("FoRegistrationHelper#goToNextScreen", "token is " + licenseResponse.getToken());
        final LicenseResponseItem licenseResponseItem = new LicenseResponseItem();
        licenseResponseItem.setToken(licenseResponse.getToken());
        licenseResponseItem.setTokenTtl(licenseResponse.getTokenTtl());
        licenseResponseItem.setLicenseState(licenseResponse.getLicState().getDisplayName());
        licenseResponseItem.setLicenseTrialEnd(licenseResponse.getLicTrialEnd());
        licenseResponseItem.setLicenseExpireDate(licenseResponse.getLicExpireDate());
        licenseResponseItem.setLicenseFeatures(licenseResponse.getLicFeatures());
        licenseResponseItem.setBillingSoc(licenseResponse.getBillingSoc());
        licenseResponseItem.setAdsAvailable(licenseResponse.getAdsAvailable().booleanValue());
        licenseResponseItem.setPending(false);
        licenseResponseItem.setPendingCheckError(false);
        licenseResponseItem.setLastUpdated(new Date(System.currentTimeMillis()));
        Realm G0 = Realm.m3064G0();
        try {
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.q
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    FoRegistrationHelper.m5695k(LicenseResponseItem.this, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
            if (BuildUtils.m5850d()) {
                if (MigrationHelper.m5516p(context)) {
                    LogUtil.m5643d("FoRegistrationHelper#goToNextScreen", "Found package: com.privacystar.android.metro");
                    MigrationHelper.m5515q(context);
                }
                SubscriptionHelper.State e = SubscriptionHelper.m5323e();
                if (!e.equals(SubscriptionHelper.State.NONE)) {
                    MetroApiWrapper.m6731d(context, e, licenseResponseItem.isPending(), false);
                }
                ApiUtils.m6841p0();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: m */
    public static void m5693m(final Context context) {
        if (PreferenceUtils.m5390g("PREF_MATA_IMEI").isEmpty() || PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN").isEmpty()) {
            LogUtil.m5632o("FoRegistrationHelper#", "Registration requested, but IMEI or MSISDN is missing. Skipping this registration.");
        } else {
            m5702d(new Consumer() { // from class: com.tmobile.services.nameid.utility.r
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    FoRegistrationHelper.m5694l(context, (LicenseResponse) obj);
                }
            });
        }
    }
}
