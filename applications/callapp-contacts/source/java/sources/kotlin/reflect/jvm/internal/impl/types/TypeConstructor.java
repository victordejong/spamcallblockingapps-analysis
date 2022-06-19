package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeConstructor.class */
public interface TypeConstructor extends TypeConstructorMarker {
    AbstractC18940g getBuiltIns();

    AbstractC19129g getDeclarationDescriptor();

    List<TypeParameterDescriptor> getParameters();

    /* renamed from: getSupertypes */
    Collection<KotlinType> mo53752getSupertypes();

    boolean isDenotable();

    TypeConstructor refine(KotlinTypeRefiner kotlinTypeRefiner);
}
