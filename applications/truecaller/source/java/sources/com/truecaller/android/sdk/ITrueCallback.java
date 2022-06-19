package com.truecaller.android.sdk;

import androidx.annotation.Keep;
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/ITrueCallback.class */
public interface ITrueCallback {
    void onFailureProfileShared(TrueError trueError);

    void onSuccessProfileShared(TrueProfile trueProfile);

    void onVerificationRequired(TrueError trueError);
}
