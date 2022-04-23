package com.aotter.net.volley.toolbox;

import com.aotter.net.volley.Request;
import java.util.Map;
import org.apache.http.HttpResponse;
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/toolbox/HttpStack.class */
public interface HttpStack {
    HttpResponse performRequest(Request<?> request, Map<String, String> map);
}
