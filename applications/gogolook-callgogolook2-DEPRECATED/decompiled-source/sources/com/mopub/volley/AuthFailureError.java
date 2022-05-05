package com.mopub.volley;

import android.content.Intent;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/AuthFailureError.class */
public class AuthFailureError extends VolleyError {

    /* renamed from: b */
    public Intent f9466b;

    public AuthFailureError() {
    }

    public AuthFailureError(Intent intent) {
        this.f9466b = intent;
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
        return this.f9466b != null ? "User needs to (re)enter credentials." : super.getMessage();
    }

    public Intent getResolutionIntent() {
        return this.f9466b;
    }
}
