package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.m */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/m.class */
public final class C19577m {
    /* renamed from: a */
    public static final boolean m2001a(KotlinType kotlinType) {
        UnwrappedType unwrap = kotlinType.unwrap();
        FlexibleType flexibleType = unwrap instanceof FlexibleType ? (FlexibleType) unwrap : null;
        return (flexibleType == null || flexibleType.getLowerBound().isMarkedNullable() == flexibleType.getUpperBound().isMarkedNullable()) ? false : true;
    }
}
