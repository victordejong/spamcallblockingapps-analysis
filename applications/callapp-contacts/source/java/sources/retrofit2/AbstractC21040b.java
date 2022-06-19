package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
/* renamed from: retrofit2.b */
/* loaded from: classes5-dex2jar.jar:retrofit2/b.class */
public interface AbstractC21040b<R, T> {

    /* renamed from: retrofit2.b$a */
    /* loaded from: classes5-dex2jar.jar:retrofit2/b$a.class */
    public static abstract class AbstractC21041a {
        /* renamed from: a */
        public abstract AbstractC21040b<?, ?> mo67a(Type type, Annotation[] annotationArr);
    }

    /* renamed from: a */
    T mo65a(Call<R> call);

    /* renamed from: a */
    Type mo66a();
}
