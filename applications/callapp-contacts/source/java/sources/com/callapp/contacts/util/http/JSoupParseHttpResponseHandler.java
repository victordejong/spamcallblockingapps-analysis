package com.callapp.contacts.util.http;

import com.callapp.contacts.util.http.HttpUtils;
import java.io.IOException;
import okhttp3.Response;
import org.jsoup.nodes.C20906f;
import org.jsoup.p590a.C20777b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/JSoupParseHttpResponseHandler.class */
public class JSoupParseHttpResponseHandler extends HttpUtils.HttpResponseHandlerImpl {

    /* renamed from: a */
    public C20906f f28309a;

    @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandlerImpl, com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
    /* renamed from: a */
    public final void mo26911a(String str, Response response) throws IOException {
        super.mo26911a(str, response);
        this.f28309a = C20777b.m510a(response.body().byteStream(), null, str);
    }
}
