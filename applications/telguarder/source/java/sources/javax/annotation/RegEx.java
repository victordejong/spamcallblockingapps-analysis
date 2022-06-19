package javax.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import javax.annotation.meta.TypeQualifierValidator;
import javax.annotation.meta.When;
@Syntax("RegEx")
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2-dex2jar.jar:javax/annotation/RegEx.class */
public @interface RegEx {

    /* loaded from: classes2-dex2jar.jar:javax/annotation/RegEx$Checker.class */
    public static class Checker implements TypeQualifierValidator<RegEx> {
        public When forConstantValue(RegEx regEx, Object obj) {
            if (!(obj instanceof String)) {
                return When.NEVER;
            }
            try {
                Pattern.compile((String) obj);
                return When.ALWAYS;
            } catch (PatternSyntaxException e) {
                return When.NEVER;
            }
        }
    }

    When when() default When.ALWAYS;
}
