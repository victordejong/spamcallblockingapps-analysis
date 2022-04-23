package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.ArrayList;
import java.util.List;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.e.c;
import kotlin.reflect.jvm.internal.impl.e.f;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.RawType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl.class */
public final class RawTypeImpl extends FlexibleType implements RawType {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RawTypeImpl(SimpleType lowerBound, SimpleType upperBound) {
        this(lowerBound, upperBound, false);
        p.d(lowerBound, "lowerBound");
        p.d(upperBound, "upperBound");
    }

    private RawTypeImpl(SimpleType simpleType, SimpleType simpleType2, boolean z) {
        super(simpleType, simpleType2);
        if (!z) {
            boolean isSubtypeOf = KotlinTypeChecker.DEFAULT.isSubtypeOf(simpleType, simpleType2);
            if (x.f38657a && !isSubtypeOf) {
                throw new AssertionError("Lower bound " + simpleType + " of a flexible type must be a subtype of the upper bound " + simpleType2);
            }
        }
    }

    private static final boolean render$onlyOutDiffers(String str, String str2) {
        return p.a((Object) str, (Object) kotlin.h.p.a(str2, (CharSequence) "out ")) || p.a((Object) str2, (Object) "*");
    }

    private static final List<String> render$renderArguments(c cVar, KotlinType kotlinType) {
        List<TypeProjection> arguments = kotlinType.getArguments();
        ArrayList arrayList = new ArrayList(n.a((Iterable) arguments, 10));
        for (TypeProjection typeProjection : arguments) {
            arrayList.add(cVar.a(typeProjection));
        }
        return arrayList;
    }

    private static final String render$replaceArgs(String str, String str2) {
        String a2;
        String c2;
        if (!kotlin.h.p.b((CharSequence) str, '<', false)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        a2 = kotlin.h.p.a(str, '<', str);
        sb.append(a2);
        sb.append('<');
        sb.append(str2);
        sb.append('>');
        c2 = kotlin.h.p.c(str, '>', str);
        sb.append(c2);
        return sb.toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final SimpleType getDelegate() {
        return getLowerBound();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final h getMemberScope() {
        g declarationDescriptor = getConstructor().getDeclarationDescriptor();
        d dVar = declarationDescriptor instanceof d ? (d) declarationDescriptor : null;
        if (dVar != null) {
            h memberScope = dVar.getMemberScope(RawSubstitution.INSTANCE);
            p.b(memberScope, "classDescriptor.getMemberScope(RawSubstitution)");
            return memberScope;
        }
        throw new IllegalStateException(p.a("Incorrect classifier: ", (Object) getConstructor().getDeclarationDescriptor()).toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final RawTypeImpl makeNullableAsSpecified(boolean z) {
        return new RawTypeImpl(getLowerBound().makeNullableAsSpecified(z), getUpperBound().makeNullableAsSpecified(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final FlexibleType refine(KotlinTypeRefiner kotlinTypeRefiner) {
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new RawTypeImpl((SimpleType) kotlinTypeRefiner.refineType(getLowerBound()), (SimpleType) kotlinTypeRefiner.refineType(getUpperBound()), true);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final String render(c renderer, f options) {
        boolean z;
        p.d(renderer, "renderer");
        p.d(options, "options");
        String a2 = renderer.a(getLowerBound());
        String a3 = renderer.a(getUpperBound());
        if (options.b()) {
            return "raw (" + a2 + ".." + a3 + ')';
        } else if (getUpperBound().getArguments().isEmpty()) {
            return renderer.a(a2, a3, TypeUtilsKt.getBuiltIns(this));
        } else {
            List<String> render$renderArguments = render$renderArguments(renderer, getLowerBound());
            List<String> render$renderArguments2 = render$renderArguments(renderer, getUpperBound());
            List<String> list = render$renderArguments;
            String a4 = n.a(list, ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, RawTypeImpl$render$newArgs$1.INSTANCE, 30);
            List<kotlin.n> d2 = n.d((Iterable) list, (Iterable) render$renderArguments2);
            if (!d2.isEmpty()) {
                for (kotlin.n nVar : d2) {
                    if (!render$onlyOutDiffers((String) nVar.f36810a, (String) nVar.f36811b)) {
                        z = false;
                        break;
                    }
                }
            }
            z = true;
            String str = a3;
            if (z) {
                str = render$replaceArgs(a3, a4);
            }
            String render$replaceArgs = render$replaceArgs(a2, a4);
            return p.a((Object) render$replaceArgs, (Object) str) ? render$replaceArgs : renderer.a(render$replaceArgs, str, TypeUtilsKt.getBuiltIns(this));
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final RawTypeImpl replaceAnnotations(kotlin.reflect.jvm.internal.impl.descriptors.a.g newAnnotations) {
        p.d(newAnnotations, "newAnnotations");
        return new RawTypeImpl(getLowerBound().replaceAnnotations(newAnnotations), getUpperBound().replaceAnnotations(newAnnotations));
    }
}
