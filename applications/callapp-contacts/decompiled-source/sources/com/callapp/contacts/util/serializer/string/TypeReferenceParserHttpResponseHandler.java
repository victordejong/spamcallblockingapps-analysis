package com.callapp.contacts.util.serializer.string;

import com.callapp.contacts.util.http.HttpUtils;
import com.fasterxml.jackson.core.type.TypeReference;
import java.io.IOException;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/string/TypeReferenceParserHttpResponseHandler.class */
public class TypeReferenceParserHttpResponseHandler<T> extends HttpUtils.HttpResponseHandlerImpl {

    /* renamed from: a  reason: collision with root package name */
    final TypeReference<T> f16288a;

    /* renamed from: b  reason: collision with root package name */
    private T f16289b;

    public TypeReferenceParserHttpResponseHandler(TypeReference<T> typeReference) {
        this.f16288a = typeReference;
    }

    @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandlerImpl, com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
    public final void a(String str, Response response) throws IOException {
        super.a(str, response);
        if (response != null && response.body() != null) {
            this.f16289b = (T) Parser.a(response.body().byteStream(), this.f16288a);
        }
    }

    public T getResult() {
        return this.f16289b;
    }
}
