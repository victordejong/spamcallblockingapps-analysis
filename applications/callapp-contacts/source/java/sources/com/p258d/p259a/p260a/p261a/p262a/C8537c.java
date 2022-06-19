package com.p258d.p259a.p260a.p261a.p262a;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20460r;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.AbstractC21074e;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b��\u0018��*\u0004\b��\u0010\u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00030\u0002B#\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0015\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00028��H\u0016¢\u0006\u0002\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, m4298d2 = {"Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/SerializationStrategyConverter;", "T", "Lretrofit2/Converter;", "Lokhttp3/RequestBody;", "contentType", "Lokhttp3/MediaType;", "saver", "Lkotlinx/serialization/SerializationStrategy;", "serializer", "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;", "(Lokhttp3/MediaType;Lkotlinx/serialization/SerializationStrategy;Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;)V", "convert", "value", "(Ljava/lang/Object;)Lokhttp3/RequestBody;", "retrofit2-kotlinx-serialization-converter"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: com.d.a.a.a.a.c */
/* loaded from: classes2-dex2jar.jar:com/d/a/a/a/a/c.class */
public final class C8537c<T> implements AbstractC21074e<T, RequestBody> {

    /* renamed from: a */
    private final MediaType f30403a;

    /* renamed from: b */
    private final AbstractC20460r<T> f30404b;

    /* renamed from: c */
    private final AbstractC8538d f30405c;

    /* JADX WARN: Multi-variable type inference failed */
    public C8537c(MediaType contentType, AbstractC20460r<? super T> saver, AbstractC8538d serializer) {
        C18524p.m3841c(contentType, "contentType");
        C18524p.m3841c(saver, "saver");
        C18524p.m3841c(serializer, "serializer");
        this.f30403a = contentType;
        this.f30404b = saver;
        this.f30405c = serializer;
    }

    @Override // retrofit2.AbstractC21074e
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ RequestBody mo44a(Object obj) {
        return this.f30405c.mo25360a(this.f30403a, this.f30404b, obj);
    }
}
