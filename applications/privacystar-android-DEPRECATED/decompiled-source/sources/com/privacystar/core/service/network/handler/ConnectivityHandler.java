package com.privacystar.core.service.network.handler;

import android.support.annotation.WorkerThread;
import com.privacystar.core.data.model.ConnectivityLog;
import com.privacystar.core.service.network.ConnectivityService;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.RequestUnsuccessfulException;
import io.realm.Realm;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Date;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/ConnectivityHandler.class */
public class ConnectivityHandler {
    @WorkerThread
    public static void check204(PSBackendEndpoint.PSEndpointInterface pSEndpointInterface) throws Throwable {
        try {
            Method method = pSEndpointInterface.getEndpointClass().getMethod("check204", RequestBody.class);
            RequestBody create = RequestBody.create(MediaType.parse("application/json"), "{}");
            Timber.m37d("Executing 204 call at:%n%s", pSEndpointInterface.getUrlString());
            Response execute = ((Call) method.invoke(PSBackendEndpoint.getInstance(pSEndpointInterface), create)).execute();
            int code = execute.code();
            if (code == 204) {
                Timber.m37d("Received 204 response from: %s", pSEndpointInterface.getUrlString());
                handleSuccessful(pSEndpointInterface, execute.raw().receivedResponseAtMillis());
            } else {
                Timber.m37d("204 check received response with status code: %d", Integer.valueOf(code));
                handleUnsuccessful(pSEndpointInterface);
            }
            logActivity(pSEndpointInterface, execute, null);
        } catch (IOException e) {
            Timber.m23w(e, "problem occurred talking to server.", new Object[0]);
            logActivity(pSEndpointInterface, null, e.toString());
        } catch (NoSuchMethodException e2) {
            Timber.m23w(e2, "Could not find method check204() to invoke.", new Object[0]);
        } catch (RuntimeException e3) {
            Timber.m23w(e3, "unexpected error occurred creating the request or decoding the response.", new Object[0]);
            logActivity(pSEndpointInterface, null, e3.toString());
        }
    }

    public static void checkConnectivity(PSBackendEndpoint.PSEndpointInterface pSEndpointInterface) throws Throwable {
        if (ConnectivityService.getInstance().isCheckRequired(pSEndpointInterface)) {
            Timber.m28v("204 check required for endpoint: %s.", pSEndpointInterface.getUrlString());
            check204(pSEndpointInterface);
            return;
        }
        Timber.m28v("204 check not required for endpoint: %s.", pSEndpointInterface.getUrlString());
    }

    private static void handleSuccessful(PSBackendEndpoint.PSEndpointInterface pSEndpointInterface, long j) {
        ConnectivityService.getInstance().setResponse(pSEndpointInterface, Long.valueOf(j));
    }

    private static void handleUnsuccessful(PSBackendEndpoint.PSEndpointInterface pSEndpointInterface) throws RequestUnsuccessfulException {
        ConnectivityService.getInstance().setResponse(pSEndpointInterface, null);
        throw new RequestUnsuccessfulException("Failed to receive 204 from server - cancelling Job.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$logActivity$0$ConnectivityHandler(PSBackendEndpoint.PSEndpointInterface pSEndpointInterface, String str, Response response, Realm realm) {
        ConnectivityLog connectivityLog = (ConnectivityLog) realm.createObject(ConnectivityLog.class);
        connectivityLog.setRequestPayload("{}");
        connectivityLog.setRequestUrl(pSEndpointInterface.getUrlString());
        connectivityLog.setResponseExtras(str);
        if (response != null) {
            connectivityLog.setRequestTime(new Date(response.raw().sentRequestAtMillis()));
            connectivityLog.setResponseTime(new Date(response.raw().receivedResponseAtMillis()));
        }
    }

    private static void logActivity(final PSBackendEndpoint.PSEndpointInterface pSEndpointInterface, final Response response, final String str) {
        try {
            Realm defaultInstance = Realm.getDefaultInstance();
            defaultInstance.executeTransaction(new Realm.Transaction(pSEndpointInterface, str, response) { // from class: com.privacystar.core.service.network.handler.ConnectivityHandler$$Lambda$0
                private final PSBackendEndpoint.PSEndpointInterface arg$1;
                private final String arg$2;
                private final Response arg$3;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = pSEndpointInterface;
                    this.arg$2 = str;
                    this.arg$3 = response;
                }

                @Override // io.realm.Realm.Transaction
                public void execute(Realm realm) {
                    ConnectivityHandler.lambda$logActivity$0$ConnectivityHandler(this.arg$1, this.arg$2, this.arg$3, realm);
                }
            });
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Exception e) {
            Timber.m23w(e, "Unable to log 204 activity.", new Object[0]);
        }
    }
}
