package com.googlecode.mp4parser.b.b.a;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/g.class */
public @interface g {
    int[] a();

    int b() default -1;
}
