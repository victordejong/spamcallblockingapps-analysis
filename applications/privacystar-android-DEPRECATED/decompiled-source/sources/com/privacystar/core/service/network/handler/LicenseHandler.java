package com.privacystar.core.service.network.handler;

import android.content.Context;
import android.support.annotation.NonNull;
import com.privacystar.core.BuildConfig;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.data.model.types.SubscriptionType;
import com.privacystar.core.data.providers.custom.whitelabel.WLHelper;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.license_check.LicenseCheckUtil;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.PayloadUtil;
import com.privacystar.core.service.network.model.request.LicenseCheckRequest;
import com.privacystar.core.service.network.model.response.LicenseResponse;
import com.privacystar.core.service.network.util.HttpStatus;
import com.privacystar.core.service.network.util.RequestTrigger;
import com.privacystar.core.util.BuildUtil;
import com.privacystar.core.util.InformationUtil;
import com.privacystar.core.util.Text;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import io.realm.Realm;
import java.util.Date;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/LicenseHandler.class */
public class LicenseHandler extends PSServiceHandler<LicenseCheckRequest, LicenseResponse> {
    public static final boolean SHOULD_PERSIST = false;
    private static final String SINGLE_ID = "group_license";
    private static LicenseHandler handlerInstance;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.privacystar.core.service.network.handler.LicenseHandler$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/LicenseHandler$1.class */
    public static /* synthetic */ class C15981 {

        /* renamed from: $SwitchMap$com$privacystar$core$service$network$model$response$LicenseResponse$LicenseState */
        static final /* synthetic */ int[] f283x1e44845d = new int[LicenseResponse.LicenseState.values().length];
        static final /* synthetic */ int[] $SwitchMap$com$privacystar$core$service$network$util$HttpStatus;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x006c -> B:42:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0070 -> B:38:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0074 -> B:34:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0078 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007c -> B:40:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0080 -> B:14:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0084 -> B:32:0x0060). Please submit an issue!!! */
        static {
            try {
                f283x1e44845d[LicenseResponse.LicenseState.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f283x1e44845d[LicenseResponse.LicenseState.CONCLUDED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f283x1e44845d[LicenseResponse.LicenseState.CONCLUDED_CAP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f283x1e44845d[LicenseResponse.LicenseState.FREE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f283x1e44845d[LicenseResponse.LicenseState.TRIAL.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f283x1e44845d[LicenseResponse.LicenseState.INACTIVE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            $SwitchMap$com$privacystar$core$service$network$util$HttpStatus = new int[HttpStatus.values().length];
            try {
                $SwitchMap$com$privacystar$core$service$network$util$HttpStatus[HttpStatus.UNAUTHORIZED.ordinal()] = 1;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$privacystar$core$service$network$util$HttpStatus[HttpStatus.NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long calculateTokenTtlTimestamp(int r7) {
        /*
            long r0 = com.privacystar.core.service.PreferenceUtil.getLastTokenRefreshDeviceTime()
            r8 = r0
            r0 = r8
            r10 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0010
            long r0 = java.lang.System.currentTimeMillis()
            r10 = r0
        L_0x0010:
            r0 = r10
            r1 = r7
            long r1 = (long) r1
            r2 = 1000(0x3e8, double:4.94E-321)
            long r1 = r1 * r2
            long r0 = r0 + r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.service.network.handler.LicenseHandler.calculateTokenTtlTimestamp(int):long");
    }

    public static LicenseCheckRequest generateRequest(Context context) {
        String userToken = PreferenceUtil.getUserToken();
        if (Text.isBlank(userToken)) {
            Timber.m25w("Can't generate a License check request before registering.", new Object[0]);
            return null;
        }
        LicenseCheckRequest licenseCheckRequest = new LicenseCheckRequest();
        LicenseCheckRequest.Payload instantiatePayload = licenseCheckRequest.instantiatePayload();
        licenseCheckRequest.setPayload(instantiatePayload);
        if (PayloadUtil.validateUserObject(PayloadUtil.generateUserPayload())) {
            licenseCheckRequest.setUser(PayloadUtil.generateUserPayload());
            instantiatePayload.setToken(userToken);
            instantiatePayload.setApkVersion(BuildConfig.VERSION_NAME);
            String mcc = InformationUtil.getMcc(context);
            String mnc = InformationUtil.getMnc(context);
            if (!Text.isBlank(mcc)) {
                instantiatePayload.setMcc(mcc);
            }
            if (!Text.isBlank(mnc)) {
                instantiatePayload.setMnc(mnc);
            }
            return licenseCheckRequest;
        }
        Timber.m25w("User payload for request could not be generated.", new Object[0]);
        return null;
    }

    public static LicenseHandler getInstance() {
        if (handlerInstance == null) {
            handlerInstance = new LicenseHandler();
        }
        return handlerInstance;
    }

    public static void processLicenseResponse(LicenseResponse licenseResponse) {
        SubscriptionType subscriptionType;
        Date date;
        String anchorFreeId;
        Date date2;
        if (!Text.isBlank(licenseResponse.getToken())) {
            PreferenceUtil.putUserToken(licenseResponse.getToken());
        } else {
            Timber.m25w("Did not receive token in response - this shouldn't happen.", new Object[0]);
        }
        if (licenseResponse.getTokenTtl() != null) {
            PreferenceUtil.putUserTokenExpiration(calculateTokenTtlTimestamp(licenseResponse.getTokenTtl().intValue()));
        } else {
            Timber.m25w("Did not receive TTL in response - this shouldn't happen.", new Object[0]);
        }
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            boolean isFeatureAvailable = LicenseFeatureRealm.isFeatureAvailable(defaultInstance, Feature.CATEGORY_BLOCKING);
            LicenseFeatureRealm.clearAndSetFeatures(defaultInstance, licenseResponse.getLicFeatures());
            if (!isFeatureAvailable || LicenseFeatureRealm.isFeatureAvailable(defaultInstance, Feature.CATEGORY_BLOCKING)) {
                Timber.m37d("Category protection is enabled!", new Object[0]);
            } else {
                Timber.m31i("Category blocking no longer available - disabling category protection", new Object[0]);
                PreferenceUtil.updateCategoryBlockingProtection(false);
            }
            if (licenseResponse.getLicState() != null) {
                switch (C15981.f283x1e44845d[licenseResponse.getLicState().ordinal()]) {
                    case 1:
                        PreferenceUtil.putSubscriptionSetup(true);
                    case 2:
                    case 3:
                    case 4:
                        date2 = licenseResponse.getLicExpireDate();
                        break;
                    case 5:
                        date2 = licenseResponse.getLicTrialEnd();
                        break;
                    default:
                        date2 = null;
                        break;
                }
                date = date2;
                if (date2 == null) {
                    date = new Date(0L);
                }
                subscriptionType = SubscriptionType.fromString(licenseResponse.getLicState().getDisplayName());
            } else {
                Timber.m25w("Did not receive licState from response - this shouldn't happen.", new Object[0]);
                date = new Date(0L);
                subscriptionType = SubscriptionType.INACTIVE;
            }
            SubscriptionRealm.setSubscriptionStatus(defaultInstance, subscriptionType, date);
            LicenseCheckUtil.startLicenseRefreshTask(PSApplication.context(), subscriptionType);
            LicenseCheckUtil.startLicenseExpireTask(PSApplication.context(), date);
            PreferenceUtil.putIsLicenseOutOfDate(false);
            if (licenseResponse.getState() != null) {
                InformationUtil.setAttorneyGeneralPrefs(PSApplication.context(), licenseResponse.getAgAlertsEnabled(), licenseResponse.getState());
            }
            if (licenseResponse.getLicState() != LicenseResponse.LicenseState.INACTIVE) {
                RequestTrigger.createBulkLookup(PSApplication.context());
            }
            if (BuildUtil.INSTANCE.isAF() && (anchorFreeId = licenseResponse.getAnchorFreeId()) != null && !"".equals(anchorFreeId)) {
                WLHelper.INSTANCE.insertWhiteLabelID(PSApplication.context(), anchorFreeId);
            }
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Call<LicenseResponse> backendRequest(LicenseCheckRequest licenseCheckRequest) {
        return PSBackendEndpoint.getLicenseInstance().checkLicense(licenseCheckRequest);
    }

    public void generateAndSendRequest(Context context) {
        LicenseCheckRequest generateRequest = generateRequest(context);
        if (generateRequest != null) {
            enqueueRequest(getInstance(), generateRequest);
        } else {
            Timber.m31i("Did not queue license check request because body could not be created.", new Object[0]);
        }
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    public PSBackendEndpoint.PSEndpointInterface getEndpointInterface() {
        return PSBackendEndpoint.PSEndpointInterface.LICENSE;
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected String getSingleId() {
        return "group_license";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnsuccessful(LicenseCheckRequest licenseCheckRequest, @NonNull Response<LicenseResponse> response) {
        switch (C15981.$SwitchMap$com$privacystar$core$service$network$util$HttpStatus[HttpStatus.fromCode(response.code()).ordinal()]) {
            case 1:
                AnalyticsUtil.INSTANCE.trackLicenseCheck(AnalyticsUtil.LicenseCheckAnalyticsEvent.FAILURE_REJECT);
                RegistrationHandler.getInstance().checkRegistration(PSApplication.context(), true);
                return;
            case 2:
                AnalyticsUtil.INSTANCE.trackLicenseCheck(AnalyticsUtil.LicenseCheckAnalyticsEvent.FAILURE_REJECT);
                Timber.m31i("License check backend endpoint not found (404). Server is likely down.", new Object[0]);
                return;
            default:
                AnalyticsUtil.INSTANCE.trackLicenseCheck(AnalyticsUtil.LicenseCheckAnalyticsEvent.FAILURE_TIMEOUT);
                LicenseCheckUtil.startLicenseErrorRefreshTask(PSApplication.context());
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processResponse(LicenseResponse licenseResponse, LicenseCheckRequest licenseCheckRequest) {
        processLicenseResponse(licenseResponse);
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean shouldPersist() {
        return false;
    }
}
