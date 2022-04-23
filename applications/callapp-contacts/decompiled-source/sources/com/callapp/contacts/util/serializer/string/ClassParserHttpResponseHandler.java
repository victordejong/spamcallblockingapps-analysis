package com.callapp.contacts.util.serializer.string;

import com.callapp.contacts.util.http.HttpUtils;
import java.io.IOException;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler.class */
public class ClassParserHttpResponseHandler<T> extends HttpUtils.HttpResponseHandlerImpl {

    /* renamed from: a  reason: collision with root package name */
    final Class<T> f16281a;

    /* renamed from: b  reason: collision with root package name */
    public T f16282b;

    public ClassParserHttpResponseHandler(Class<T> cls) {
        this.f16281a = cls;
    }

    @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandlerImpl, com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
    public final void a(String str, Response response) throws IOException {
        super.a(str, response);
        if (response != null && response.body() != null) {
            this.f16282b = (T) Parser.a(response.body().byteStream(), this.f16281a);
        }
    }

    public T getResult() {
        return this.f16282b;
    }
}
