package org.junit.validator;

import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@Inherited
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2-dex2jar.jar:org/junit/validator/ValidateWith.class */
public @interface ValidateWith {
    Class<? extends AnnotationValidator> value();
}
