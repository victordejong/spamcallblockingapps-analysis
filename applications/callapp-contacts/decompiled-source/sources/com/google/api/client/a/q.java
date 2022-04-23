package com.google.api.client.a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/q.class */
public @interface q {
    String a() default "##default";
}
