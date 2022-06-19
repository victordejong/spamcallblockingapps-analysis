package com.applovin.impl.sdk;

import android.app.Activity;
import com.applovin.sdk.AppLovinUserService;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/UserServiceImpl.class */
public class UserServiceImpl implements AppLovinUserService {

    /* renamed from: a */
    private final C1408l f4490a;

    public UserServiceImpl(C1408l c1408l) {
        this.f4490a = c1408l;
    }

    @Override // com.applovin.sdk.AppLovinUserService
    public void preloadConsentDialog() {
        this.f4490a.m5521V().m5549c();
    }

    @Override // com.applovin.sdk.AppLovinUserService
    public void showConsentDialog(Activity activity, AppLovinUserService.OnConsentDialogDismissListener onConsentDialogDismissListener) {
        this.f4490a.m5521V().m5560a(activity, onConsentDialogDismissListener);
    }

    public String toString() {
        return "UserService{}";
    }
}
