package android.arch.persistence.room;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.METHOD, ElementType.FIELD, ElementType.CONSTRUCTOR})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes-dex2jar.jar:android/arch/persistence/room/Ignore.class */
public @interface Ignore {
}
