package com.mopub.volley.toolbox;

import com.mopub.volley.AuthFailureError;
import com.mopub.volley.Request;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/BaseHttpStack.class */
public abstract class BaseHttpStack {
    public abstract HttpResponse executeRequest(Request<?> request, Map<String, String> map) throws IOException, AuthFailureError;
}
