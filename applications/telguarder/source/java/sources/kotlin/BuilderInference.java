package kotlin;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.annotation.AnnotationRetention;
import kotlin.annotation.AnnotationTarget;
@Target({ElementType.METHOD, ElementType.PARAMETER})
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n��\b\u0087\u0002\u0018��2\u00020\u0001B��¨\u0006\u0002"}, m400d2 = {"Lkotlin/BuilderInference;", "", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
@kotlin.annotation.Target(allowedTargets = {AnnotationTarget.VALUE_PARAMETER, AnnotationTarget.FUNCTION, AnnotationTarget.PROPERTY})
@Retention(RetentionPolicy.CLASS)
@kotlin.annotation.Retention(AnnotationRetention.BINARY)
/* loaded from: classes2-dex2jar.jar:kotlin/BuilderInference.class */
public @interface BuilderInference {
}
