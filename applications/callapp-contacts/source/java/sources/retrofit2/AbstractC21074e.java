package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
/* renamed from: retrofit2.e */
/* loaded from: classes5-dex2jar.jar:retrofit2/e.class */
public interface AbstractC21074e<F, T> {

    /* renamed from: retrofit2.e$a */
    /* loaded from: classes5-dex2jar.jar:retrofit2/e$a.class */
    public static abstract class AbstractC21075a {
        /* renamed from: a */
        public AbstractC21074e<ResponseBody, ?> mo45a(Type type, Annotation[] annotationArr, Retrofit retrofit) {
            return null;
        }

        /* renamed from: a */
        public AbstractC21074e<?, RequestBody> mo68a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
            return null;
        }
    }

    /* renamed from: a */
    T mo44a(F f) throws IOException;
}
