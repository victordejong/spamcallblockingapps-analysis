package com.callapp.contacts.util.http;

import com.callapp.contacts.util.http.HttpUtils;
import java.io.IOException;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ValidatorHttpResponseHandler.class */
public class ValidatorHttpResponseHandler extends HttpUtils.HttpResponseHandlerImpl {

    /* renamed from: a  reason: collision with root package name */
    private String f16264a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f16265b = false;

    @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandlerImpl, com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
    public final void a(String str, Response response) throws IOException {
        super.a(str, response);
        if (HttpUtils.a(response, str)) {
            this.f16265b = true;
            this.f16264a = response.body().string();
            return;
        }
        this.f16264a = null;
    }

    public String getResult() {
        return this.f16264a;
    }

    public boolean isValidCallAppResponse() {
        return this.f16265b;
    }
}
