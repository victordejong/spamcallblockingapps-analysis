package com.google.api.client.json;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: com.google.api.client.json.g */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/json/g.class */
public @interface AbstractC8673g {

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.google.api.client.json.g$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/json/g$a.class */
    public @interface AbstractC8674a {
        String key();

        Class<?> ref();
    }

    AbstractC8674a[] typeDefinitions();
}
