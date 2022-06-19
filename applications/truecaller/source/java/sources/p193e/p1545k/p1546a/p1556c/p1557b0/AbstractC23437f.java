package p193e.p1545k.p1546a.p1556c.p1557b0;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23918i;
@Target({ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.FIELD, ElementType.TYPE, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: e.k.a.c.b0.f */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/b0/f.class */
public @interface AbstractC23437f {

    @Deprecated
    /* renamed from: e.k.a.c.b0.f$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/b0/f$a.class */
    public enum EnumC23438a {
        ALWAYS,
        NON_NULL,
        NON_DEFAULT,
        NON_EMPTY,
        DEFAULT_INCLUSION
    }

    /* renamed from: e.k.a.c.b0.f$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/b0/f$b.class */
    public enum EnumC23439b {
        DYNAMIC,
        STATIC,
        DEFAULT_TYPING
    }

    /* renamed from: as */
    Class<?> m6872as() default Void.class;

    Class<?> contentAs() default Void.class;

    Class<? extends AbstractC23918i> contentConverter() default AbstractC23918i.AbstractC23919a.class;

    Class<? extends AbstractC23890n> contentUsing() default AbstractC23890n.AbstractC23891a.class;

    Class<? extends AbstractC23918i> converter() default AbstractC23918i.AbstractC23919a.class;

    @Deprecated
    EnumC23438a include() default EnumC23438a.DEFAULT_INCLUSION;

    Class<?> keyAs() default Void.class;

    Class<? extends AbstractC23890n> keyUsing() default AbstractC23890n.AbstractC23891a.class;

    Class<? extends AbstractC23890n> nullsUsing() default AbstractC23890n.AbstractC23891a.class;

    EnumC23439b typing() default EnumC23439b.DEFAULT_TYPING;

    Class<? extends AbstractC23890n> using() default AbstractC23890n.AbstractC23891a.class;
}
