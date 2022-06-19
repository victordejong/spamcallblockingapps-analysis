package org.bson.codecs.pojo.annotations;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Inherited
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/annotations/BsonDiscriminator.class */
public @interface BsonDiscriminator {
    String key() default "_t";

    String value() default "";
}
