package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
/* renamed from: retrofit2.c */
/* loaded from: classes-dex2jar.jar:retrofit2/c.class */
public interface AbstractC5587c<R, T> {

    /* renamed from: retrofit2.c$a */
    /* loaded from: classes-dex2jar.jar:retrofit2/c$a.class */
    public static abstract class AbstractC5588a {
        /* renamed from: a */
        public static Class<?> m114a(Type type) {
            return C5633o.m13a(type);
        }

        @Nullable
        /* renamed from: a */
        public abstract AbstractC5587c<?, ?> mo108a(Type type, Annotation[] annotationArr, C5628m c5628m);
    }

    /* renamed from: a */
    T mo106a(AbstractC5586b<R> abstractC5586b);

    /* renamed from: a */
    Type mo107a();
}
