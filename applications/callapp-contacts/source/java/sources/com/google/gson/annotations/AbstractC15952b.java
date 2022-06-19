package com.google.gson.annotations;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD, ElementType.METHOD})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: com.google.gson.annotations.b */
/* loaded from: classes4-dex2jar.jar:com/google/gson/annotations/b.class */
public @interface AbstractC15952b {
    /* renamed from: a */
    String m7988a();

    /* renamed from: b */
    String[] m7987b() default {};
}
