package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/m.class */
public final class m {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static final boolean a(KotlinType kotlinType) {
        UnwrappedType unwrap = kotlinType.unwrap();
        FlexibleType flexibleType = unwrap instanceof FlexibleType ? (FlexibleType) unwrap : null;
        return (flexibleType == null || flexibleType.getLowerBound().isMarkedNullable() == flexibleType.getUpperBound().isMarkedNullable()) ? false : true;
    }
}
