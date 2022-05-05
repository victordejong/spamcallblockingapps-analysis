package p655o;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
/* renamed from: o.c */
/* loaded from: classes3-dex2jar.jar:o/c.class */
public interface AbstractC15236c<R, T> {

    /* renamed from: o.c$a */
    /* loaded from: classes3-dex2jar.jar:o/c$a.class */
    public static abstract class AbstractC15237a {
        /* renamed from: a */
        public static Class<?> m158a(Type type) {
            return C15306w.m50b(type);
        }

        /* renamed from: a */
        public static Type m159a(int i, ParameterizedType parameterizedType) {
            return C15306w.m51b(i, parameterizedType);
        }

        @Nullable
        /* renamed from: a */
        public abstract AbstractC15236c<?, ?> mo154a(Type type, Annotation[] annotationArr, C15300s sVar);
    }

    /* renamed from: a */
    T mo152a(AbstractC15235b<R> bVar);

    /* renamed from: a */
    Type mo153a();
}
