package android.arch.persistence.room;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes-dex2jar.jar:android/arch/persistence/room/Index.class */
public @interface Index {
    String name() default "";

    boolean unique() default false;

    String[] value();
}
