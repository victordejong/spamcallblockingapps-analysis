package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Optional;
import okhttp3.ResponseBody;
import retrofit2.e;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:retrofit2/k.class */
public final class k extends e.a {

    /* renamed from: a  reason: collision with root package name */
    static final e.a f39481a = new k();

    /* loaded from: classes5-dex2jar.jar:retrofit2/k$a.class */
    static final class a<T> implements e<ResponseBody, Optional<T>> {

        /* renamed from: a  reason: collision with root package name */
        final e<ResponseBody, T> f39482a;

        a(e<ResponseBody, T> eVar) {
            this.f39482a = eVar;
        }

        @Override // retrofit2.e
        public final /* synthetic */ Object a(ResponseBody responseBody) throws IOException {
            return Optional.ofNullable(this.f39482a.a(responseBody));
        }
    }

    k() {
    }

    @Override // retrofit2.e.a
    public final e<ResponseBody, ?> a(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (s.a(type) != Optional.class) {
            return null;
        }
        return new a(retrofit.b(s.a(0, (ParameterizedType) type), annotationArr));
    }
}
