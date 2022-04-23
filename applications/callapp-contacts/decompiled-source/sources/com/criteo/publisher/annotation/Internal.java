package com.criteo.publisher.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE, ElementType.CONSTRUCTOR, ElementType.METHOD, ElementType.FIELD})
@Documented
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/annotation/Internal.class */
public @interface Internal {
    public static final String ADMOB_ADAPTER = "AdMob Adapter";
    public static final String IN_HOUSE = "InHouse";
    public static final String MOPUB_ADAPTER = "MoPub Adapter";

    String[] value() default {};
}
