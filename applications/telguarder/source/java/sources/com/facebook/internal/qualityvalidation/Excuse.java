package com.facebook.internal.qualityvalidation;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({})
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes-dex2jar.jar:com/facebook/internal/qualityvalidation/Excuse.class */
public @interface Excuse {
    String reason();

    String type();
}
