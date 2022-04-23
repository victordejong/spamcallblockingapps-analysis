package com.d.a.a.a.a;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.d;
import okhttp3.ResponseBody;
import retrofit2.e;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b��\u0018��*\u0004\b��\u0010\u00012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0015\u0010\t\u001a\u00028��2\u0006\u0010\n\u001a\u00020\u0003H\u0016¢\u0006\u0002\u0010\u000bR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/DeserializationStrategyConverter;", "T", "Lretrofit2/Converter;", "Lokhttp3/ResponseBody;", "loader", "Lkotlinx/serialization/DeserializationStrategy;", "serializer", "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;", "(Lkotlinx/serialization/DeserializationStrategy;Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;)V", "convert", "value", "(Lokhttp3/ResponseBody;)Ljava/lang/Object;", "retrofit2-kotlinx-serialization-converter"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes2-dex2jar.jar:com/d/a/a/a/a/a.class */
public final class a<T> implements e<ResponseBody, T> {

    /* renamed from: a  reason: collision with root package name */
    private final d<T> f17669a;

    /* renamed from: b  reason: collision with root package name */
    private final d f17670b;

    public a(d<T> loader, d serializer) {
        p.c(loader, "loader");
        p.c(serializer, "serializer");
        this.f17669a = loader;
        this.f17670b = serializer;
    }

    @Override // retrofit2.e
    public final /* synthetic */ Object a(ResponseBody responseBody) {
        ResponseBody value = responseBody;
        p.c(value, "value");
        return this.f17670b.a(this.f17669a, value);
    }
}
