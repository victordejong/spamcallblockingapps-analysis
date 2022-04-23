package com.applovin.mediation.adapter;

import android.app.Activity;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapter/MaxAdapter.class */
public interface MaxAdapter {

    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapter/MaxAdapter$InitializationStatus.class */
    public enum InitializationStatus {
        ADAPTER_NOT_SUPPORTED(-4),
        DOES_NOT_APPLY(-3),
        INITIALIZING(-2),
        INITIALIZED_UNKNOWN(-1),
        INITIALIZED_FAILURE(0),
        INITIALIZED_SUCCESS(1);
        
        public final int code;

        InitializationStatus(int i) {
            this.code = i;
        }

        public int getCode() {
            return this.code;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapter/MaxAdapter$OnCompletionListener.class */
    public interface OnCompletionListener {
        void onCompletion();

        void onCompletion(InitializationStatus initializationStatus, String str);
    }

    String getAdapterVersion();

    String getSdkVersion();

    void initialize(MaxAdapterInitializationParameters maxAdapterInitializationParameters, Activity activity, OnCompletionListener onCompletionListener);

    void onDestroy();
}
