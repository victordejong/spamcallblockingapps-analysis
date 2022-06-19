package p193e.p1545k.p1546a.p1556c.p1557b0;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import p193e.p1545k.p1546a.p1547a.AbstractC23331r;
import p193e.p1545k.p1546a.p1556c.p1570l0.AbstractC23776r;
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: e.k.a.c.b0.b */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/b0/b.class */
public @interface AbstractC23430b {

    /* renamed from: e.k.a.c.b0.b$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/b0/b$a.class */
    public @interface AbstractC23431a {
        AbstractC23331r.EnumC23332a include() default AbstractC23331r.EnumC23332a.NON_NULL;

        String propName() default "";

        String propNamespace() default "";

        boolean required() default false;

        String value();
    }

    /* renamed from: e.k.a.c.b0.b$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/b0/b$b.class */
    public @interface AbstractC23432b {
        AbstractC23331r.EnumC23332a include() default AbstractC23331r.EnumC23332a.NON_NULL;

        String name() default "";

        String namespace() default "";

        boolean required() default false;

        Class<?> type() default Object.class;

        Class<? extends AbstractC23776r> value();
    }

    AbstractC23431a[] attrs() default {};

    boolean prepend() default false;

    AbstractC23432b[] props() default {};
}
