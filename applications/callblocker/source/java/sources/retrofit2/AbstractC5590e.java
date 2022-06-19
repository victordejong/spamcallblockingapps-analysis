package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import okhttp3.AbstractC5402ab;
import okhttp3.AbstractC5406ad;
/* renamed from: retrofit2.e */
/* loaded from: classes-dex2jar.jar:retrofit2/e.class */
public interface AbstractC5590e<F, T> {

    /* renamed from: retrofit2.e$a */
    /* loaded from: classes-dex2jar.jar:retrofit2/e$a.class */
    public static abstract class AbstractC5591a {
        @Nullable
        /* renamed from: a */
        public AbstractC5590e<AbstractC5406ad, ?> mo112a(Type type, Annotation[] annotationArr, C5628m c5628m) {
            return null;
        }

        @Nullable
        /* renamed from: a */
        public AbstractC5590e<?, AbstractC5402ab> mo111a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, C5628m c5628m) {
            return null;
        }

        @Nullable
        /* renamed from: b */
        public AbstractC5590e<?, String> m110b(Type type, Annotation[] annotationArr, C5628m c5628m) {
            return null;
        }
    }

    /* renamed from: a */
    T mo113a(F f);
}
