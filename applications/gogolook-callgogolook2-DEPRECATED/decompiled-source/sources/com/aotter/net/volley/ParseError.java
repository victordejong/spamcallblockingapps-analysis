package com.aotter.net.volley;
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/ParseError.class */
public class ParseError extends VolleyError {
    public ParseError() {
    }

    public ParseError(NetworkResponse networkResponse) {
        super(networkResponse);
    }

    public ParseError(Throwable th) {
        super(th);
    }
}
