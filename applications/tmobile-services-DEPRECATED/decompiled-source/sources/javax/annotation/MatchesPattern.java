package javax.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.meta.TypeQualifier;
import javax.annotation.meta.TypeQualifierValidator;
@TypeQualifier
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2-dex2jar.jar:javax/annotation/MatchesPattern.class */
public @interface MatchesPattern {

    /* loaded from: classes2-dex2jar.jar:javax/annotation/MatchesPattern$Checker.class */
    public static class Checker implements TypeQualifierValidator<MatchesPattern> {
    }
}
