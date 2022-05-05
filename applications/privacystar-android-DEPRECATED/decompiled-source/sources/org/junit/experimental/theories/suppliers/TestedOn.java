package org.junit.experimental.theories.suppliers;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.junit.experimental.theories.ParametersSuppliedBy;
@Target({ElementType.PARAMETER})
@ParametersSuppliedBy(TestedOnSupplier.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2-dex2jar.jar:org/junit/experimental/theories/suppliers/TestedOn.class */
public @interface TestedOn {
    int[] ints();
}
