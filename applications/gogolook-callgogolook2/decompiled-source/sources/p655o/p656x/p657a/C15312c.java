package p655o.p656x.p657a;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import okhttp3.ResponseBody;
import p655o.AbstractC15246f;
/* renamed from: o.x.a.c */
/* loaded from: classes3-dex2jar.jar:o/x/a/c.class */
public final class C15312c<T> implements AbstractC15246f<ResponseBody, T> {

    /* renamed from: a */
    public final Gson f33434a;

    /* renamed from: b */
    public final TypeAdapter<T> f33435b;

    public C15312c(Gson gson, TypeAdapter<T> typeAdapter) {
        this.f33434a = gson;
        this.f33435b = typeAdapter;
    }

    /* renamed from: a */
    public T convert(ResponseBody responseBody) throws IOException {
        try {
            return this.f33435b.read(this.f33434a.m30993a(responseBody.charStream()));
        } finally {
            responseBody.close();
        }
    }
}
