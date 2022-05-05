package androidx.databinding;

import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE})
/* loaded from: classes-dex2jar.jar:androidx/databinding/BindingMethod.class */
public @interface BindingMethod {
    String attribute();

    String method();

    Class type();
}
