package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
/* loaded from: classes5-dex2jar.jar:retrofit2/b.class */
public interface b<R, T> {

    /* loaded from: classes5-dex2jar.jar:retrofit2/b$a.class */
    public static abstract class a {
        public abstract b<?, ?> a(Type type, Annotation[] annotationArr);
    }

    T a(Call<R> call);

    Type a();
}
