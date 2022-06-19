package p193e.p1545k.p1546a.p1556c.p1557b0;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.AbstractC23940o;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23918i;
@Target({ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.FIELD, ElementType.TYPE, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: e.k.a.c.b0.c */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/b0/c.class */
public @interface AbstractC23433c {
    /* renamed from: as */
    Class<?> m6873as() default Void.class;

    Class<?> builder() default Void.class;

    Class<?> contentAs() default Void.class;

    Class<? extends AbstractC23918i> contentConverter() default AbstractC23918i.AbstractC23919a.class;

    Class<? extends AbstractC23700j> contentUsing() default AbstractC23700j.AbstractC23701a.class;

    Class<? extends AbstractC23918i> converter() default AbstractC23918i.AbstractC23919a.class;

    Class<?> keyAs() default Void.class;

    Class<? extends AbstractC23940o> keyUsing() default AbstractC23940o.AbstractC23941a.class;

    Class<? extends AbstractC23700j> using() default AbstractC23700j.AbstractC23701a.class;
}
