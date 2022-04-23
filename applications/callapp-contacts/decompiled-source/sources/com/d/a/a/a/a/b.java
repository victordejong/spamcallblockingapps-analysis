package com.d.a.a.a.a;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.f;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Retrofit;
import retrofit2.e;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0010\u001b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006JI\u0010\u0007\u001a\u000e\u0012\u0002\b\u0003\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r2\u000e\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016¢\u0006\u0002\u0010\u0012J9\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0002\b\u0003\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u000b2\u000e\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016¢\u0006\u0002\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0017"}, d2 = {"Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Factory;", "Lretrofit2/Converter$Factory;", "contentType", "Lokhttp3/MediaType;", "serializer", "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;", "(Lokhttp3/MediaType;Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;)V", "requestBodyConverter", "Lretrofit2/Converter;", "Lokhttp3/RequestBody;", "type", "Ljava/lang/reflect/Type;", "parameterAnnotations", "", "", "methodAnnotations", "retrofit", "Lretrofit2/Retrofit;", "(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;", "responseBodyConverter", "Lokhttp3/ResponseBody;", "annotations", "(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;", "retrofit2-kotlinx-serialization-converter"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes2-dex2jar.jar:com/d/a/a/a/a/b.class */
public final class b extends e.a {

    /* renamed from: a  reason: collision with root package name */
    private final MediaType f17671a;

    /* renamed from: b  reason: collision with root package name */
    private final d f17672b;

    public b(MediaType contentType, d serializer) {
        p.c(contentType, "contentType");
        p.c(serializer, "serializer");
        this.f17671a = contentType;
        this.f17672b = serializer;
    }

    @Override // retrofit2.e.a
    public final e<ResponseBody, ?> a(Type type, Annotation[] annotations, Retrofit retrofit) {
        p.c(type, "type");
        p.c(annotations, "annotations");
        p.c(retrofit, "retrofit");
        return new a(f.a(type), this.f17672b);
    }

    @Override // retrofit2.e.a
    public final e<?, RequestBody> a(Type type, Annotation[] parameterAnnotations, Annotation[] methodAnnotations, Retrofit retrofit) {
        p.c(type, "type");
        p.c(parameterAnnotations, "parameterAnnotations");
        p.c(methodAnnotations, "methodAnnotations");
        p.c(retrofit, "retrofit");
        return new c(this.f17671a, f.a(type), this.f17672b);
    }
}
