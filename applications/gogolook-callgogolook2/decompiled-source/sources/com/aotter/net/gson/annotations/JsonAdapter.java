package com.aotter.net.gson.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE, ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/annotations/JsonAdapter.class */
public @interface JsonAdapter {
    Class<?> value();
}
