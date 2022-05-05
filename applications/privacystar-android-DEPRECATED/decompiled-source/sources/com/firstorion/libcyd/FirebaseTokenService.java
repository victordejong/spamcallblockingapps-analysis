package com.firstorion.libcyd;

import android.content.Context;
import android.util.Log;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.FirebaseInstanceIdService;
import com.google.firebase.messaging.FirebaseMessaging;
import com.privacystar.core.service.firebase.FirebaseConstants;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/FirebaseTokenService.class */
public final class FirebaseTokenService extends FirebaseInstanceIdService {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void refreshToken(final Context context) {
        Globals.THREAD_POOL.execute(new Runnable() { // from class: com.firstorion.libcyd.FirebaseTokenService.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Log.d("libcyd.app", "Refreshing firebase token.");
                    String token = FirebaseInstanceId.getInstance().getToken(FirebaseConstants.LIBCYD_SENDER_ID, FirebaseMessaging.INSTANCE_ID_SCOPE);
                    if (token != null) {
                        TokenHelper.handleRefreshedToken(context.getApplicationContext(), token, CYDApplication.getInstance().getApiKey(context));
                    } else {
                        Log.d("libcyd.app", "Token was null.");
                    }
                } catch (Throwable th) {
                    Log.e("libcyd.app", "Error getting token.", th);
                }
            }
        });
    }

    @Override // com.google.firebase.iid.FirebaseInstanceIdService
    public void onTokenRefresh() {
        if (CYDApplicationParams.getInstance(this).useCallerYDFirebaseServer) {
            refreshToken(getApplicationContext());
        }
    }
}
