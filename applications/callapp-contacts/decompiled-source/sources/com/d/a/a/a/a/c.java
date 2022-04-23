package com.d.a.a.a.a;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.r;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.e;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b��\u0018��*\u0004\b��\u0010\u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00030\u0002B#\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0015\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00028��H\u0016¢\u0006\u0002\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, d2 = {"Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/SerializationStrategyConverter;", "T", "Lretrofit2/Converter;", "Lokhttp3/RequestBody;", "contentType", "Lokhttp3/MediaType;", "saver", "Lkotlinx/serialization/SerializationStrategy;", "serializer", "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;", "(Lokhttp3/MediaType;Lkotlinx/serialization/SerializationStrategy;Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;)V", "convert", "value", "(Ljava/lang/Object;)Lokhttp3/RequestBody;", "retrofit2-kotlinx-serialization-converter"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes2-dex2jar.jar:com/d/a/a/a/a/c.class */
public final class c<T> implements e<T, RequestBody> {

    /* renamed from: a  reason: collision with root package name */
    private final MediaType f17673a;

    /* renamed from: b  reason: collision with root package name */
    private final r<T> f17674b;

    /* renamed from: c  reason: collision with root package name */
    private final d f17675c;

    /* JADX WARN: Multi-variable type inference failed */
    public c(MediaType contentType, r<? super T> saver, d serializer) {
        p.c(contentType, "contentType");
        p.c(saver, "saver");
        p.c(serializer, "serializer");
        this.f17673a = contentType;
        this.f17674b = saver;
        this.f17675c = serializer;
    }

    @Override // retrofit2.e
    public final /* bridge */ /* synthetic */ RequestBody a(Object obj) {
        return this.f17675c.a(this.f17673a, this.f17674b, obj);
    }
}
