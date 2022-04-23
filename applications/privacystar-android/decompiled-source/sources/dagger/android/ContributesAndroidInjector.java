package dagger.android;

import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
@Target({ElementType.METHOD})
/* loaded from: classes2-dex2jar.jar:dagger/android/ContributesAndroidInjector.class */
public @interface ContributesAndroidInjector {
    Class<?>[] modules() default {};
}
