package com.android.volley.toolbox;

import com.android.volley.AuthFailureError;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/Authenticator.class */
public interface Authenticator {
    String getAuthToken() throws AuthFailureError;

    void invalidateAuthToken(String str);
}
