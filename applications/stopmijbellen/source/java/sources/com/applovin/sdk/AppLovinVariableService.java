package com.applovin.sdk;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinVariableService.class */
public interface AppLovinVariableService {

    /* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinVariableService$OnVariablesUpdateListener.class */
    public interface OnVariablesUpdateListener {
        void onVariablesUpdate(Bundle bundle);
    }

    boolean getBoolean(String str);

    boolean getBoolean(String str, boolean z);

    String getString(String str);

    String getString(String str, String str2);

    @Deprecated
    void loadVariables();

    @Deprecated
    void setOnVariablesUpdateListener(OnVariablesUpdateListener onVariablesUpdateListener);
}
