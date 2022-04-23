package com.facebook.ads.internal.bridge.fbsdk;

import android.annotation.SuppressLint;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/bridge/fbsdk/FBLoginASID.class */
public class FBLoginASID {
    @Nullable
    @SuppressLint({"CatchGeneralException"})
    public static String getFBLoginASID() {
        try {
            Object invoke = Class.forName("com.facebook.AccessToken").getDeclaredMethod("getCurrentAccessToken", new Class[0]).invoke(null, new Object[0]);
            if (invoke != null) {
                return (String) Class.forName("com.facebook.AccessToken").getDeclaredMethod("getUserId", new Class[0]).invoke(invoke, new Object[0]);
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }
}
