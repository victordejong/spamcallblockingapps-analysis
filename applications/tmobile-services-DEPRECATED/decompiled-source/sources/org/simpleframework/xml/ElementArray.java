package org.simpleframework.xml;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/ElementArray.class */
public @interface ElementArray {
    boolean data() default false;

    boolean empty() default true;

    String entry() default "";

    String name() default "";

    boolean required() default true;
}
