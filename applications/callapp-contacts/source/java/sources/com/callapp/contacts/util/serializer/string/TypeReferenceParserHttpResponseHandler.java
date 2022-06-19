package com.callapp.contacts.util.serializer.string;

import com.callapp.contacts.util.http.HttpUtils;
import com.fasterxml.jackson.core.type.TypeReference;
import java.io.IOException;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/string/TypeReferenceParserHttpResponseHandler.class */
public class TypeReferenceParserHttpResponseHandler<T> extends HttpUtils.HttpResponseHandlerImpl {

    /* renamed from: a */
    final TypeReference<T> f28373a;

    /* renamed from: b */
    private T f28374b;

    public TypeReferenceParserHttpResponseHandler(TypeReference<T> typeReference) {
        this.f28373a = typeReference;
    }

    @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandlerImpl, com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
    /* renamed from: a */
    public final void mo26911a(String str, Response response) throws IOException {
        super.mo26911a(str, response);
        if (response == null || response.body() == null) {
            return;
        }
        this.f28374b = (T) Parser.m26919a(response.body().byteStream(), this.f28373a);
    }

    public T getResult() {
        return this.f28374b;
    }
}
