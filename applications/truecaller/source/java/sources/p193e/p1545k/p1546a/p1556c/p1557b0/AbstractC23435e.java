package p193e.p1545k.p1546a.p1556c.p1557b0;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: e.k.a.c.b0.e */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/b0/e.class */
public @interface AbstractC23435e {

    /* renamed from: e.k.a.c.b0.e$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/b0/e$a.class */
    public static class C23436a {

        /* renamed from: a */
        public final String f65008a;

        /* renamed from: b */
        public final String f65009b;

        public C23436a(AbstractC23435e abstractC23435e) {
            String buildMethodName = abstractC23435e.buildMethodName();
            String withPrefix = abstractC23435e.withPrefix();
            this.f65008a = buildMethodName;
            this.f65009b = withPrefix;
        }
    }

    String buildMethodName() default "build";

    String withPrefix() default "with";
}
