package com.callapp.contacts.util.http;

import com.callapp.contacts.util.http.HttpUtils;
import java.io.IOException;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ValidatorHttpResponseHandler.class */
public class ValidatorHttpResponseHandler extends HttpUtils.HttpResponseHandlerImpl {

    /* renamed from: a */
    private String f28349a;

    /* renamed from: b */
    private boolean f28350b = false;

    @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandlerImpl, com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
    /* renamed from: a */
    public final void mo26911a(String str, Response response) throws IOException {
        super.mo26911a(str, response);
        if (!HttpUtils.m26973a(response, str)) {
            this.f28349a = null;
            return;
        }
        this.f28350b = true;
        this.f28349a = response.body().string();
    }

    public String getResult() {
        return this.f28349a;
    }

    public boolean isValidCallAppResponse() {
        return this.f28350b;
    }
}
