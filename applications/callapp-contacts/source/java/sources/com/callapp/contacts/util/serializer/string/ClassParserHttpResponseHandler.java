package com.callapp.contacts.util.serializer.string;

import com.callapp.contacts.util.http.HttpUtils;
import java.io.IOException;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler.class */
public class ClassParserHttpResponseHandler<T> extends HttpUtils.HttpResponseHandlerImpl {

    /* renamed from: a */
    final Class<T> f28366a;

    /* renamed from: b */
    public T f28367b;

    public ClassParserHttpResponseHandler(Class<T> cls) {
        this.f28366a = cls;
    }

    @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandlerImpl, com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
    /* renamed from: a */
    public final void mo26911a(String str, Response response) throws IOException {
        super.mo26911a(str, response);
        if (response == null || response.body() == null) {
            return;
        }
        this.f28367b = (T) Parser.m26918a(response.body().byteStream(), this.f28366a);
    }

    public T getResult() {
        return this.f28367b;
    }
}
