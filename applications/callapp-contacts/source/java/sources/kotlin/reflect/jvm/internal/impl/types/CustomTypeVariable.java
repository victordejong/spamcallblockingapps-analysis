package kotlin.reflect.jvm.internal.impl.types;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/CustomTypeVariable.class */
public interface CustomTypeVariable {
    boolean isTypeVariable();

    KotlinType substitutionResult(KotlinType kotlinType);
}
