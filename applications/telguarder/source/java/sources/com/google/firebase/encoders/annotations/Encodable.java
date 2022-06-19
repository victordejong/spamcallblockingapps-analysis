package com.google.firebase.encoders.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2-dex2jar.jar:com/google/firebase/encoders/annotations/Encodable.class */
public @interface Encodable {

    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/encoders/annotations/Encodable$Field.class */
    public @interface Field {
        boolean inline() default false;

        String name() default "";
    }

    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/encoders/annotations/Encodable$Ignore.class */
    public @interface Ignore {
    }
}
