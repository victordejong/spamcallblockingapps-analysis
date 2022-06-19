package com.esotericsoftware.kryo;

import com.esotericsoftware.kryo.AbstractC9414i;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: com.esotericsoftware.kryo.b */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/b.class */
public @interface AbstractC9378b {
    /* renamed from: a */
    Class<? extends AbstractC9413h> m24396a() default AbstractC9413h.class;

    /* renamed from: b */
    Class<? extends AbstractC9414i> m24395b() default AbstractC9414i.C9417c.class;
}
