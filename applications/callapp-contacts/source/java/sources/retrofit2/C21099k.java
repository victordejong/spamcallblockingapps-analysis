package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Optional;
import okhttp3.ResponseBody;
import retrofit2.AbstractC21074e;
/* renamed from: retrofit2.k */
/* loaded from: classes5-dex2jar.jar:retrofit2/k.class */
public final class C21099k extends AbstractC21074e.AbstractC21075a {

    /* renamed from: a */
    static final AbstractC21074e.AbstractC21075a f67725a = new C21099k();

    /* renamed from: retrofit2.k$a */
    /* loaded from: classes5-dex2jar.jar:retrofit2/k$a.class */
    static final class C21100a<T> implements AbstractC21074e<ResponseBody, Optional<T>> {

        /* renamed from: a */
        final AbstractC21074e<ResponseBody, T> f67726a;

        C21100a(AbstractC21074e<ResponseBody, T> abstractC21074e) {
            this.f67726a = abstractC21074e;
        }

        @Override // retrofit2.AbstractC21074e
        /* renamed from: a */
        public final /* synthetic */ Object mo44a(ResponseBody responseBody) throws IOException {
            return Optional.ofNullable(this.f67726a.mo44a(responseBody));
        }
    }

    C21099k() {
    }

    @Override // retrofit2.AbstractC21074e.AbstractC21075a
    /* renamed from: a */
    public final AbstractC21074e<ResponseBody, ?> mo45a(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (C21129s.m9a(type) != Optional.class) {
            return null;
        }
        return new C21100a(retrofit.m104b(C21129s.m16a(0, (ParameterizedType) type), annotationArr));
    }
}
