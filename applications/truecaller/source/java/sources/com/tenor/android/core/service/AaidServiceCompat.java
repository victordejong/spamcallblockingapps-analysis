package com.tenor.android.core.service;

import android.app.Application;
import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.tenor.android.core.constant.StringConstant;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/service/AaidServiceCompat.class */
public final class AaidServiceCompat extends IntentService {
    private static IAaidListener sListener;

    public AaidServiceCompat() {
        super(AaidServiceCompat.class.getName());
    }

    public static void requestAaid(Context context) {
        requestAaid(context, null);
    }

    public static void requestAaid(Context context, IAaidListener iAaidListener) {
        sListener = iAaidListener;
        context.startService(new Intent(!(context instanceof Application) ? context.getApplicationContext() : context, AaidServiceCompat.class).setAction(AaidService.ACTION_GET_AAID));
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        if (intent == null || intent.getAction() == null) {
            IAaidListener iAaidListener = sListener;
            if (iAaidListener == null) {
                return;
            }
            iAaidListener.failure(-4);
            return;
        }
        String orEmpty = StringConstant.getOrEmpty(intent.getAction());
        orEmpty.hashCode();
        if (!orEmpty.equals(AaidService.ACTION_GET_AAID)) {
            return;
        }
        AaidClient.init(getApplicationContext(), sListener);
    }
}
