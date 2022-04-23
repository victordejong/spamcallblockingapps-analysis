package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
/* loaded from: classes5-dex2jar.jar:retrofit2/e.class */
public interface e<F, T> {

    /* loaded from: classes5-dex2jar.jar:retrofit2/e$a.class */
    public static abstract class a {
        public e<ResponseBody, ?> a(Type type, Annotation[] annotationArr, Retrofit retrofit) {
            return null;
        }

        public e<?, RequestBody> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
            return null;
        }
    }

    T a(F f) throws IOException;
}
