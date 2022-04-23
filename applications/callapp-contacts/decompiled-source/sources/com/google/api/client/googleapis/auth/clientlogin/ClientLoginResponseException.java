package com.google.api.client.googleapis.auth.clientlogin;

import com.google.api.client.googleapis.auth.clientlogin.a;
import com.google.api.client.http.HttpResponseException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/auth/clientlogin/ClientLoginResponseException.class */
public class ClientLoginResponseException extends HttpResponseException {

    /* renamed from: a  reason: collision with root package name */
    private final transient a.C0502a f31730a;

    ClientLoginResponseException(HttpResponseException.a aVar, a.C0502a aVar2) {
        super(aVar);
        this.f31730a = aVar2;
    }
}
