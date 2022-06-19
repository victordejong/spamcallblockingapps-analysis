package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import retrofit2.AbstractC5587c;
/* renamed from: retrofit2.f */
/* loaded from: classes-dex2jar.jar:retrofit2/f.class */
public final class C5592f extends AbstractC5587c.AbstractC5588a {

    /* renamed from: a */
    static final AbstractC5587c.AbstractC5588a f23252a = new C5592f();

    C5592f() {
    }

    @Override // retrofit2.AbstractC5587c.AbstractC5588a
    /* renamed from: a */
    public AbstractC5587c<?, ?> mo108a(Type type, Annotation[] annotationArr, C5628m c5628m) {
        AbstractC5587c<?, ?> abstractC5587c;
        if (m114a(type) != AbstractC5586b.class) {
            abstractC5587c = null;
        } else {
            final Type m0e = C5633o.m0e(type);
            abstractC5587c = new AbstractC5587c<Object, AbstractC5586b<?>>() { // from class: retrofit2.f.1
                @Override // retrofit2.AbstractC5587c
                /* renamed from: a */
                public Type mo107a() {
                    return m0e;
                }

                /* renamed from: b */
                public AbstractC5586b<Object> mo106a(AbstractC5586b<Object> abstractC5586b) {
                    return abstractC5586b;
                }
            };
        }
        return abstractC5587c;
    }
}
