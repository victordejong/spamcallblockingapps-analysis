package com.google.firebase.crashlytics.internal.settings.network;

import com.google.firebase.crashlytics.internal.network.HttpMethod;
import com.google.firebase.crashlytics.internal.network.HttpRequestFactory;
import com.google.firebase.crashlytics.internal.settings.model.AppRequestData;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/network/UpdateAppSpiCall.class */
public class UpdateAppSpiCall extends AbstractAppSpiCall {
    public UpdateAppSpiCall(String str, String str2, HttpRequestFactory httpRequestFactory, String str3) {
        super(str, str2, httpRequestFactory, HttpMethod.PUT, str3);
    }

    @Override // com.google.firebase.crashlytics.internal.settings.network.AbstractAppSpiCall, com.google.firebase.crashlytics.internal.settings.network.AppSpiCall
    public /* bridge */ /* synthetic */ boolean invoke(AppRequestData appRequestData, boolean z) {
        return super.invoke(appRequestData, z);
    }
}
