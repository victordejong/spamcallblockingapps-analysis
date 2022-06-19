package com.p258d.p259a.p260a.p261a.p262a;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.C20417f;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.AbstractC21074e;
import retrofit2.Retrofit;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0010\u001b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006JI\u0010\u0007\u001a\u000e\u0012\u0002\b\u0003\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r2\u000e\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016¢\u0006\u0002\u0010\u0012J9\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0002\b\u0003\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u000b2\u000e\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016¢\u0006\u0002\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0017"}, m4298d2 = {"Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Factory;", "Lretrofit2/Converter$Factory;", "contentType", "Lokhttp3/MediaType;", "serializer", "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;", "(Lokhttp3/MediaType;Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;)V", "requestBodyConverter", "Lretrofit2/Converter;", "Lokhttp3/RequestBody;", "type", "Ljava/lang/reflect/Type;", "parameterAnnotations", "", "", "methodAnnotations", "retrofit", "Lretrofit2/Retrofit;", "(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;", "responseBodyConverter", "Lokhttp3/ResponseBody;", "annotations", "(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;", "retrofit2-kotlinx-serialization-converter"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: com.d.a.a.a.a.b */
/* loaded from: classes2-dex2jar.jar:com/d/a/a/a/a/b.class */
public final class C8536b extends AbstractC21074e.AbstractC21075a {

    /* renamed from: a */
    private final MediaType f30401a;

    /* renamed from: b */
    private final AbstractC8538d f30402b;

    public C8536b(MediaType contentType, AbstractC8538d serializer) {
        C18524p.m3841c(contentType, "contentType");
        C18524p.m3841c(serializer, "serializer");
        this.f30401a = contentType;
        this.f30402b = serializer;
    }

    @Override // retrofit2.AbstractC21074e.AbstractC21075a
    /* renamed from: a */
    public final AbstractC21074e<ResponseBody, ?> mo45a(Type type, Annotation[] annotations, Retrofit retrofit) {
        C18524p.m3841c(type, "type");
        C18524p.m3841c(annotations, "annotations");
        C18524p.m3841c(retrofit, "retrofit");
        return new C8535a(C20417f.m691a(type), this.f30402b);
    }

    @Override // retrofit2.AbstractC21074e.AbstractC21075a
    /* renamed from: a */
    public final AbstractC21074e<?, RequestBody> mo68a(Type type, Annotation[] parameterAnnotations, Annotation[] methodAnnotations, Retrofit retrofit) {
        C18524p.m3841c(type, "type");
        C18524p.m3841c(parameterAnnotations, "parameterAnnotations");
        C18524p.m3841c(methodAnnotations, "methodAnnotations");
        C18524p.m3841c(retrofit, "retrofit");
        return new C8537c(this.f30401a, C20417f.m691a(type), this.f30402b);
    }
}
