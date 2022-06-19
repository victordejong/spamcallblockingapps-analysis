package com.facebook.internal.qualityvalidation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes-dex2jar.jar:com/facebook/internal/qualityvalidation/ExcusesForDesignViolations.class */
public @interface ExcusesForDesignViolations {
    Excuse[] value();
}
