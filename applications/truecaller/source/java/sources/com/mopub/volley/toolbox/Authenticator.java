package com.mopub.volley.toolbox;

import com.mopub.volley.AuthFailureError;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/Authenticator.class */
public interface Authenticator {
    String getAuthToken() throws AuthFailureError;

    void invalidateAuthToken(String str);
}
