package com.mopub.volley;

import android.content.Intent;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/AuthFailureError.class */
public class AuthFailureError extends VolleyError {

    /* renamed from: b */
    private Intent f60344b;

    public AuthFailureError() {
    }

    public AuthFailureError(Intent intent) {
        this.f60344b = intent;
    }

    public AuthFailureError(NetworkResponse networkResponse) {
        super(networkResponse);
    }

    public AuthFailureError(String str) {
        super(str);
    }

    public AuthFailureError(String str, Exception exc) {
        super(str, exc);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f60344b != null ? "User needs to (re)enter credentials." : super.getMessage();
    }

    public Intent getResolutionIntent() {
        return this.f60344b;
    }
}
