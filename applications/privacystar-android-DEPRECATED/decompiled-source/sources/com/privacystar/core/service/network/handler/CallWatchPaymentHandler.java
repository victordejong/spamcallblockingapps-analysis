package com.privacystar.core.service.network.handler;

import android.content.Context;
import com.privacystar.core.BuildConfig;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.providers.DeviceNumberProvider;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.PayloadUtil;
import com.privacystar.core.service.network.model.request.CallWatchPaymentRequest;
import com.privacystar.core.service.network.model.response.CallWatchPaymentResponse;
import com.privacystar.core.util.InformationUtil;
import com.privacystar.core.util.Text;
import io.reactivex.subjects.PublishSubject;
import java.util.Date;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/CallWatchPaymentHandler.class */
public class CallWatchPaymentHandler extends PSServiceHandler<CallWatchPaymentRequest, CallWatchPaymentResponse> {
    private static final boolean SHOULD_PERSIST = false;
    private static CallWatchPaymentHandler handlerInstance;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.privacystar.core.service.network.handler.CallWatchPaymentHandler$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/CallWatchPaymentHandler$1.class */
    public static /* synthetic */ class C15971 {

        /* renamed from: $SwitchMap$com$privacystar$core$service$network$model$response$CallWatchPaymentResponse$DPIResultCode */
        static final /* synthetic */ int[] f282xc7424fa4 = new int[CallWatchPaymentResponse.DPIResultCode.values().length];

        static {
            try {
                f282xc7424fa4[CallWatchPaymentResponse.DPIResultCode.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    public static CallWatchPaymentRequest generateRequest(Context context, CallWatchPaymentRequest.CallWatchPaymentActionType callWatchPaymentActionType) {
        CallWatchPaymentRequest callWatchPaymentRequest = new CallWatchPaymentRequest();
        CallWatchPaymentRequest.Payload instantiatePayload = callWatchPaymentRequest.instantiatePayload();
        callWatchPaymentRequest.setPayload(instantiatePayload);
        callWatchPaymentRequest.setUser(PayloadUtil.generateUserPayload());
        String number = DeviceNumberProvider.INSTANCE.getNumber();
        CallWatchPaymentRequest.Payload withToken = instantiatePayload.withToken(PreferenceUtil.getUserToken());
        String str = number;
        if (Text.isBlank(number)) {
            str = "";
        }
        withToken.withMdn(str).withAction(callWatchPaymentActionType).withDeviceId(InformationUtil.getDevicePinOrNothing(PSApplication.context())).withApkVersion(Text.formatVersionNumber(BuildConfig.VERSION_NAME));
        if (callWatchPaymentActionType == CallWatchPaymentRequest.CallWatchPaymentActionType.CANCEL_ADV_PAYMENT) {
            String cWTransactionID = PreferenceUtil.getCWTransactionID();
            instantiatePayload.setTransactionId(PreferenceUtil.getCWTransactionID());
            Timber.m28v("Using transactionID: [%s]", cWTransactionID);
        }
        return callWatchPaymentRequest;
    }

    public static CallWatchPaymentHandler getInstance() {
        if (handlerInstance == null) {
            handlerInstance = new CallWatchPaymentHandler();
        }
        return handlerInstance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Call<CallWatchPaymentResponse> backendRequest(CallWatchPaymentRequest callWatchPaymentRequest) {
        return PSBackendEndpoint.getServicesInstance().makeCWPayment(callWatchPaymentRequest);
    }

    public void generateAndSendRequest(Context context, CallWatchPaymentRequest.CallWatchPaymentActionType callWatchPaymentActionType) {
        generateAndSendRequest(context, callWatchPaymentActionType, null);
    }

    public void generateAndSendRequest(Context context, CallWatchPaymentRequest.CallWatchPaymentActionType callWatchPaymentActionType, PublishSubject<Response<CallWatchPaymentResponse>> publishSubject) {
        enqueueRequest(getInstance(), generateRequest(context, callWatchPaymentActionType), publishSubject);
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    public PSBackendEndpoint.PSEndpointInterface getEndpointInterface() {
        return PSBackendEndpoint.PSEndpointInterface.SERVICES;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnsuccessful(CallWatchPaymentRequest callWatchPaymentRequest, Response<CallWatchPaymentResponse> response) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processResponse(CallWatchPaymentResponse callWatchPaymentResponse, CallWatchPaymentRequest callWatchPaymentRequest) {
        CallWatchPaymentResponse.DPIResultCode resultCode = callWatchPaymentResponse.getResultCode();
        CallWatchPaymentResponse.DPIResultCode dPIResultCode = resultCode;
        if (resultCode == null) {
            Timber.m37d("DPI was null, defaulting to UNKNOWN.", new Object[0]);
            dPIResultCode = CallWatchPaymentResponse.DPIResultCode.UNKNOWN;
        }
        PreferenceUtil.putDPIResultCode(dPIResultCode.getValue());
        Date mrcDate = callWatchPaymentResponse.getMrcDate();
        Date date = mrcDate;
        if (mrcDate == null) {
            Timber.m37d("mrcDate is null, defaulting to epoch.", new Object[0]);
            date = new Date(0L);
        }
        PreferenceUtil.putMRCDate(date.getTime());
        if (C15971.f282xc7424fa4[dPIResultCode.ordinal()] == 1) {
            PreferenceUtil.putLastPurchaseSucceeded(true);
        }
        Timber.m37d("Updating License with backend.", new Object[0]);
        LicenseHandler.getInstance().generateAndSendRequest(PSApplication.context());
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean shouldPersist() {
        return false;
    }
}
