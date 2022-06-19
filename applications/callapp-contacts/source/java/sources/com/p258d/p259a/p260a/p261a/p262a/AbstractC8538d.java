package com.p258d.p259a.p260a.p261a.p262a;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.AbstractC20415d;
import kotlinx.serialization.AbstractC20460r;
import kotlinx.serialization.AbstractC20461s;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b0\u0018��2\u00020\u0001:\u0002\u0012\u0013B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J)\u0010\u0003\u001a\u0002H\u0004\"\u0004\b��\u0010\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00062\u0006\u0010\u0007\u001a\u00020\bH&¢\u0006\u0002\u0010\tJ1\u0010\n\u001a\u00020\u000b\"\u0004\b��\u0010\u00042\u0006\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00040\u000f2\u0006\u0010\u0010\u001a\u0002H\u0004H&¢\u0006\u0002\u0010\u0011\u0082\u0001\u0002\u0014\u0015¨\u0006\u0016"}, m4298d2 = {"Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;", "", "()V", "fromResponseBody", "T", "loader", "Lkotlinx/serialization/DeserializationStrategy;", "body", "Lokhttp3/ResponseBody;", "(Lkotlinx/serialization/DeserializationStrategy;Lokhttp3/ResponseBody;)Ljava/lang/Object;", "toRequestBody", "Lokhttp3/RequestBody;", "contentType", "Lokhttp3/MediaType;", "saver", "Lkotlinx/serialization/SerializationStrategy;", "value", "(Lokhttp3/MediaType;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lokhttp3/RequestBody;", "FromBytes", "FromString", "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer$FromString;", "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer$FromBytes;", "retrofit2-kotlinx-serialization-converter"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: com.d.a.a.a.a.d */
/* loaded from: classes2-dex2jar.jar:com/d/a/a/a/a/d.class */
public abstract class AbstractC8538d {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J)\u0010\u0005\u001a\u0002H\u0006\"\u0004\b��\u0010\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00060\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000bJ1\u0010\f\u001a\u00020\r\"\u0004\b��\u0010\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00060\u00112\u0006\u0010\u0012\u001a\u0002H\u0006H\u0016¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, m4298d2 = {"Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer$FromString;", "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;", "format", "Lkotlinx/serialization/StringFormat;", "(Lkotlinx/serialization/StringFormat;)V", "fromResponseBody", "T", "loader", "Lkotlinx/serialization/DeserializationStrategy;", "body", "Lokhttp3/ResponseBody;", "(Lkotlinx/serialization/DeserializationStrategy;Lokhttp3/ResponseBody;)Ljava/lang/Object;", "toRequestBody", "Lokhttp3/RequestBody;", "contentType", "Lokhttp3/MediaType;", "saver", "Lkotlinx/serialization/SerializationStrategy;", "value", "(Lokhttp3/MediaType;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lokhttp3/RequestBody;", "retrofit2-kotlinx-serialization-converter"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* renamed from: com.d.a.a.a.a.d$a */
    /* loaded from: classes2-dex2jar.jar:com/d/a/a/a/a/d$a.class */
    public static final class C8539a extends AbstractC8538d {

        /* renamed from: a */
        private final AbstractC20461s f30406a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8539a(AbstractC20461s format) {
            super(null);
            C18524p.m3841c(format, "format");
            this.f30406a = format;
        }

        @Override // com.p258d.p259a.p260a.p261a.p262a.AbstractC8538d
        /* renamed from: a */
        public final <T> T mo25361a(AbstractC20415d<T> loader, ResponseBody body) {
            C18524p.m3841c(loader, "loader");
            C18524p.m3841c(body, "body");
            String string = body.string();
            AbstractC20461s abstractC20461s = this.f30406a;
            C18524p.m3849a((Object) string, "string");
            return (T) abstractC20461s.parse(loader, string);
        }

        @Override // com.p258d.p259a.p260a.p261a.p262a.AbstractC8538d
        /* renamed from: a */
        public final <T> RequestBody mo25360a(MediaType contentType, AbstractC20460r<? super T> saver, T t) {
            C18524p.m3841c(contentType, "contentType");
            C18524p.m3841c(saver, "saver");
            RequestBody create = RequestBody.create(contentType, this.f30406a.stringify(saver, t));
            C18524p.m3849a((Object) create, "RequestBody.create(contentType, string)");
            return create;
        }
    }

    private AbstractC8538d() {
    }

    public /* synthetic */ AbstractC8538d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* renamed from: a */
    public abstract <T> T mo25361a(AbstractC20415d<T> abstractC20415d, ResponseBody responseBody);

    /* renamed from: a */
    public abstract <T> RequestBody mo25360a(MediaType mediaType, AbstractC20460r<? super T> abstractC20460r, T t);
}
