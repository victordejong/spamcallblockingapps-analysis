package com.truecaller.android.sdk.oAuth;

import androidx.annotation.Keep;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;", "", "Lcom/truecaller/android/sdk/oAuth/TcOAuthData;", "tcOAuthData", "Ls1/s;", "onSuccess", "(Lcom/truecaller/android/sdk/oAuth/TcOAuthData;)V", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "tcOAuthError", "onFailure", "(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V", "sdk-external_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthCallback.class */
public interface TcOAuthCallback {
    void onFailure(TcOAuthError tcOAuthError);

    void onSuccess(TcOAuthData tcOAuthData);
}
