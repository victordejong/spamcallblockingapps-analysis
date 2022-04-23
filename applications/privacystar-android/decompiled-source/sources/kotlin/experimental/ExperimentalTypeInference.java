package kotlin.experimental;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Experimental;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.annotation.AnnotationRetention;
import kotlin.annotation.AnnotationTarget;
@Target({ElementType.ANNOTATION_TYPE})
@SinceKotlin(version = "1.3")
@kotlin.annotation.Target(allowedTargets = {AnnotationTarget.ANNOTATION_CLASS})
@Retention(RetentionPolicy.CLASS)
@kotlin.annotation.Retention(AnnotationRetention.BINARY)
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n��\b\u0087\u0002\u0018��2\u00020\u0001B��¨\u0006\u0002"}, m254d2 = {"Lkotlin/experimental/ExperimentalTypeInference;", "", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
@Experimental(level = Experimental.Level.ERROR)
/* loaded from: classes2-dex2jar.jar:kotlin/experimental/ExperimentalTypeInference.class */
public @interface ExperimentalTypeInference {
}
