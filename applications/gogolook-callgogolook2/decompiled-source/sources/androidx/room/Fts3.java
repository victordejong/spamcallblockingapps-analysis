package androidx.room;

import androidx.annotation.RequiresApi;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.CLASS)
@RequiresApi(16)
/* loaded from: classes-dex2jar.jar:androidx/room/Fts3.class */
public @interface Fts3 {
    String tokenizer() default "simple";

    String[] tokenizerArgs() default {};
}
