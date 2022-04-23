package com.bytedance.sdk.openadsdk.preload.a.a;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/a/a.class */
public @interface a {
    boolean a() default true;

    boolean b() default true;
}
