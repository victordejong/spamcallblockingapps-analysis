package retrofit2.p198a;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.METHOD})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: retrofit2.a.h */
/* loaded from: classes-dex2jar.jar:retrofit2/a/h.class */
public @interface AbstractC5569h {
    /* renamed from: a */
    String m132a();

    /* renamed from: b */
    String m131b() default "";

    /* renamed from: c */
    boolean m130c() default false;
}
