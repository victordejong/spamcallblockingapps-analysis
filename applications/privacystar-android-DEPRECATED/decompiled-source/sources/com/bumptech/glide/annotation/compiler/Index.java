package com.bumptech.glide.annotation.compiler;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/annotation/compiler/Index.class */
@interface Index {
    String[] extensions() default {};

    String[] modules() default {};
}
