package com.google.firebase.encoders.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2-dex2jar.jar:com/google/firebase/encoders/annotations/ExtraProperty.class */
public @interface ExtraProperty {
    Class<?>[] allowedTypes() default {};
}
