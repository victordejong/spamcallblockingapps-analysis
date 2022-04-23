package com.mopub.volley;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/ParseError.class */
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
