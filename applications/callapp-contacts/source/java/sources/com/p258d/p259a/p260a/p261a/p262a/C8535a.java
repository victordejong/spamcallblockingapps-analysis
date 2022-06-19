package com.p258d.p259a.p260a.p261a.p262a;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20415d;
import okhttp3.ResponseBody;
import retrofit2.AbstractC21074e;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b��\u0018��*\u0004\b��\u0010\u00012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0015\u0010\t\u001a\u00028��2\u0006\u0010\n\u001a\u00020\u0003H\u0016¢\u0006\u0002\u0010\u000bR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/DeserializationStrategyConverter;", "T", "Lretrofit2/Converter;", "Lokhttp3/ResponseBody;", "loader", "Lkotlinx/serialization/DeserializationStrategy;", "serializer", "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;", "(Lkotlinx/serialization/DeserializationStrategy;Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;)V", "convert", "value", "(Lokhttp3/ResponseBody;)Ljava/lang/Object;", "retrofit2-kotlinx-serialization-converter"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: com.d.a.a.a.a.a */
/* loaded from: classes2-dex2jar.jar:com/d/a/a/a/a/a.class */
public final class C8535a<T> implements AbstractC21074e<ResponseBody, T> {

    /* renamed from: a */
    private final AbstractC20415d<T> f30399a;

    /* renamed from: b */
    private final AbstractC8538d f30400b;

    public C8535a(AbstractC20415d<T> loader, AbstractC8538d serializer) {
        C18524p.m3841c(loader, "loader");
        C18524p.m3841c(serializer, "serializer");
        this.f30399a = loader;
        this.f30400b = serializer;
    }

    @Override // retrofit2.AbstractC21074e
    /* renamed from: a */
    public final /* synthetic */ Object mo44a(ResponseBody responseBody) {
        ResponseBody value = responseBody;
        C18524p.m3841c(value, "value");
        return this.f30400b.mo25361a(this.f30399a, value);
    }
}
