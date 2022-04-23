package p655o;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Optional;
import javax.annotation.Nullable;
import okhttp3.ResponseBody;
import p655o.AbstractC15246f;
/* renamed from: o.m */
/* loaded from: classes3-dex2jar.jar:o/m.class */
public final class C15274m extends AbstractC15246f.AbstractC15247a {

    /* renamed from: a */
    public static final AbstractC15246f.AbstractC15247a f33306a = new C15274m();

    /* renamed from: o.m$a */
    /* loaded from: classes3-dex2jar.jar:o/m$a.class */
    public static final class C15275a<T> implements AbstractC15246f<ResponseBody, Optional<T>> {

        /* renamed from: a */
        public final AbstractC15246f<ResponseBody, T> f33307a;

        public C15275a(AbstractC15246f<ResponseBody, T> fVar) {
            this.f33307a = fVar;
        }

        /* renamed from: a */
        public Optional<T> convert(ResponseBody responseBody) throws IOException {
            return Optional.ofNullable(this.f33307a.convert(responseBody));
        }
    }

    @Override // p655o.AbstractC15246f.AbstractC15247a
    @Nullable
    /* renamed from: a */
    public AbstractC15246f<ResponseBody, ?> mo44a(Type type, Annotation[] annotationArr, C15300s sVar) {
        if (AbstractC15246f.AbstractC15247a.m156a(type) != Optional.class) {
            return null;
        }
        return new C15275a(sVar.m79b(AbstractC15246f.AbstractC15247a.m157a(0, (ParameterizedType) type), annotationArr));
    }
}
