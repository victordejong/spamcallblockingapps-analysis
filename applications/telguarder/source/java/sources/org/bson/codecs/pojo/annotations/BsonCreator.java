package org.bson.codecs.pojo.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/annotations/BsonCreator.class */
public @interface BsonCreator {
}
