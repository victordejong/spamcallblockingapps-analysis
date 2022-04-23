package retrofit2.a.a;

import com.google.gson.f;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Objects;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Retrofit;
import retrofit2.e;
/* loaded from: classes5-dex2jar.jar:retrofit2/a/a/a.class */
public final class a extends e.a {

    /* renamed from: a  reason: collision with root package name */
    private final f f39421a;

    private a(f fVar) {
        this.f39421a = fVar;
    }

    public static a a(f fVar) {
        Objects.requireNonNull(fVar, "gson == null");
        return new a(fVar);
    }

    @Override // retrofit2.e.a
    public final e<ResponseBody, ?> a(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        return new c(this.f39421a, this.f39421a.a((com.google.gson.a.a) com.google.gson.a.a.get(type)));
    }

    @Override // retrofit2.e.a
    public final e<?, RequestBody> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        return new b(this.f39421a, this.f39421a.a((com.google.gson.a.a) com.google.gson.a.a.get(type)));
    }
}
