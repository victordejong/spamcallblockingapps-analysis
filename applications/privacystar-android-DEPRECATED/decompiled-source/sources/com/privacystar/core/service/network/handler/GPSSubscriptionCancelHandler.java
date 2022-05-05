package com.privacystar.core.service.network.handler;

import android.content.Context;
import android.widget.Toast;
import com.privacystar.core.PSApplication;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.model.component.EmptyObject;
import com.privacystar.core.service.network.model.component.SubscriptionObject;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/GPSSubscriptionCancelHandler.class */
public class GPSSubscriptionCancelHandler extends PSServiceHandler<SubscriptionObject, EmptyObject> {
    public static final boolean SHOULD_PERSIST = false;
    private static GPSSubscriptionCancelHandler handlerInstance;

    public static SubscriptionObject generateRequest(String str, String str2, String str3) {
        return new SubscriptionObject().withPackageName(PSApplication.context().getPackageName()).withSubscriptionId(str).withToken(str2).withAccessToken(str3);
    }

    public static GPSSubscriptionCancelHandler getInstance() {
        if (handlerInstance == null) {
            handlerInstance = new GPSSubscriptionCancelHandler();
        }
        return handlerInstance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Call<EmptyObject> backendRequest(SubscriptionObject subscriptionObject) {
        return PSBackendEndpoint.getGooglePlayApiInstance().cancelSubscription(subscriptionObject.getPackageName(), subscriptionObject.getSubscriptionId(), subscriptionObject.getToken(), subscriptionObject.getAccessToken());
    }

    public void generateAndEnqueueRequest(String str, String str2, String str3) {
        enqueueRequest(getInstance(), generateRequest(str, str2, str3));
    }

    public void generateAndSendRequest(String str, String str2, String str3) throws Throwable {
        sendRequest(generateRequest(str, str2, str3));
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    public PSBackendEndpoint.PSEndpointInterface getEndpointInterface() {
        return PSBackendEndpoint.PSEndpointInterface.GOOGLE_PLAY;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnsuccessful(SubscriptionObject subscriptionObject, Response<EmptyObject> response) {
        Timber.m37d("Google Play failed to cancel subscription to %s.", subscriptionObject.getSubscriptionId());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processResponse(EmptyObject emptyObject, SubscriptionObject subscriptionObject) {
        Timber.m37d("Successfully cancelled subscription to %s.", subscriptionObject.getSubscriptionId());
        Context context = PSApplication.context();
        Toast.makeText(context, "Subscription [" + subscriptionObject.getSubscriptionId() + "] cancelled.", 1).show();
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean shouldPersist() {
        return false;
    }
}
