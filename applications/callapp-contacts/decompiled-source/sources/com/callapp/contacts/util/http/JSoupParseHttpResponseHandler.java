package com.callapp.contacts.util.http;

import com.callapp.contacts.util.http.HttpUtils;
import java.io.IOException;
import okhttp3.Response;
import org.jsoup.a.b;
import org.jsoup.nodes.f;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/JSoupParseHttpResponseHandler.class */
public class JSoupParseHttpResponseHandler extends HttpUtils.HttpResponseHandlerImpl {

    /* renamed from: a  reason: collision with root package name */
    public f f16237a;

    @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandlerImpl, com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
    public final void a(String str, Response response) throws IOException {
        super.a(str, response);
        this.f16237a = b.a(response.body().byteStream(), null, str);
    }
}
