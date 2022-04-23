package com.d.a.a.a.a;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.r;
import kotlinx.serialization.s;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b0\u0018��2\u00020\u0001:\u0002\u0012\u0013B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J)\u0010\u0003\u001a\u0002H\u0004\"\u0004\b��\u0010\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00062\u0006\u0010\u0007\u001a\u00020\bH&¢\u0006\u0002\u0010\tJ1\u0010\n\u001a\u00020\u000b\"\u0004\b��\u0010\u00042\u0006\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00040\u000f2\u0006\u0010\u0010\u001a\u0002H\u0004H&¢\u0006\u0002\u0010\u0011\u0082\u0001\u0002\u0014\u0015¨\u0006\u0016"}, d2 = {"Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;", "", "()V", "fromResponseBody", "T", "loader", "Lkotlinx/serialization/DeserializationStrategy;", "body", "Lokhttp3/ResponseBody;", "(Lkotlinx/serialization/DeserializationStrategy;Lokhttp3/ResponseBody;)Ljava/lang/Object;", "toRequestBody", "Lokhttp3/RequestBody;", "contentType", "Lokhttp3/MediaType;", "saver", "Lkotlinx/serialization/SerializationStrategy;", "value", "(Lokhttp3/MediaType;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lokhttp3/RequestBody;", "FromBytes", "FromString", "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer$FromString;", "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer$FromBytes;", "retrofit2-kotlinx-serialization-converter"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes2-dex2jar.jar:com/d/a/a/a/a/d.class */
public abstract class d {

    @Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J)\u0010\u0005\u001a\u0002H\u0006\"\u0004\b��\u0010\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00060\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000bJ1\u0010\f\u001a\u00020\r\"\u0004\b��\u0010\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00060\u00112\u0006\u0010\u0012\u001a\u0002H\u0006H\u0016¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, d2 = {"Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer$FromString;", "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;", "format", "Lkotlinx/serialization/StringFormat;", "(Lkotlinx/serialization/StringFormat;)V", "fromResponseBody", "T", "loader", "Lkotlinx/serialization/DeserializationStrategy;", "body", "Lokhttp3/ResponseBody;", "(Lkotlinx/serialization/DeserializationStrategy;Lokhttp3/ResponseBody;)Ljava/lang/Object;", "toRequestBody", "Lokhttp3/RequestBody;", "contentType", "Lokhttp3/MediaType;", "saver", "Lkotlinx/serialization/SerializationStrategy;", "value", "(Lokhttp3/MediaType;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lokhttp3/RequestBody;", "retrofit2-kotlinx-serialization-converter"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/d/a/a/a/a/d$a.class */
    public static final class a extends d {

        /* renamed from: a  reason: collision with root package name */
        private final s f17676a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(s format) {
            super(null);
            p.c(format, "format");
            this.f17676a = format;
        }

        @Override // com.d.a.a.a.a.d
        public final <T> T a(kotlinx.serialization.d<T> loader, ResponseBody body) {
            p.c(loader, "loader");
            p.c(body, "body");
            String string = body.string();
            s sVar = this.f17676a;
            p.a((Object) string, "string");
            return (T) sVar.parse(loader, string);
        }

        @Override // com.d.a.a.a.a.d
        public final <T> RequestBody a(MediaType contentType, r<? super T> saver, T t) {
            p.c(contentType, "contentType");
            p.c(saver, "saver");
            RequestBody create = RequestBody.create(contentType, this.f17676a.stringify(saver, t));
            p.a((Object) create, "RequestBody.create(contentType, string)");
            return create;
        }
    }

    private d() {
    }

    public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract <T> T a(kotlinx.serialization.d<T> dVar, ResponseBody responseBody);

    public abstract <T> RequestBody a(MediaType mediaType, r<? super T> rVar, T t);
}
