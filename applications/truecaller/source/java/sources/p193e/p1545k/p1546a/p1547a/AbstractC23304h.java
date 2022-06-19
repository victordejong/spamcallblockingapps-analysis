package p193e.p1545k.p1546a.p1547a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: e.k.a.a.h */
/* loaded from: classes2-dex2jar.jar:e/k/a/a/h.class */
public @interface AbstractC23304h {

    /* renamed from: e.k.a.a.h$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/h$a.class */
    public enum EnumC23305a {
        DEFAULT,
        DELEGATING,
        PROPERTIES,
        DISABLED
    }

    EnumC23305a mode() default EnumC23305a.DEFAULT;
}
