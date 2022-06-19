package org.xutils.p343db.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: org.xutils.db.annotation.Table */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/annotation/Table.class */
public @interface Table {
    String name();

    String onCreated() default "";
}
