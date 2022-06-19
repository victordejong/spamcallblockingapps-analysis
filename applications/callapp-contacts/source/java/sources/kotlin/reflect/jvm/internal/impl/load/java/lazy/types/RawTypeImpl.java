package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.ArrayList;
import java.util.List;
import kotlin.C18538n;
import kotlin.C20130x;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18425p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.RawType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl.class */
public final class RawTypeImpl extends FlexibleType implements RawType {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RawTypeImpl(SimpleType lowerBound, SimpleType upperBound) {
        this(lowerBound, upperBound, false);
        C18524p.m3840d(lowerBound, "lowerBound");
        C18524p.m3840d(upperBound, "upperBound");
    }

    private RawTypeImpl(SimpleType simpleType, SimpleType simpleType2, boolean z) {
        super(simpleType, simpleType2);
        if (!z) {
            boolean isSubtypeOf = KotlinTypeChecker.DEFAULT.isSubtypeOf(simpleType, simpleType2);
            if (!C20130x.f66532a || isSubtypeOf) {
                return;
            }
            throw new AssertionError("Lower bound " + simpleType + " of a flexible type must be a subtype of the upper bound " + simpleType2);
        }
    }

    private static final boolean render$onlyOutDiffers(String str, String str2) {
        return C18524p.m3850a((Object) str, (Object) C18425p.m3931a(str2, (CharSequence) "out ")) || C18524p.m3850a((Object) str2, (Object) "*");
    }

    private static final List<String> render$renderArguments(AbstractC19230c abstractC19230c, KotlinType kotlinType) {
        List<TypeProjection> arguments = kotlinType.getArguments();
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) arguments, 10));
        for (TypeProjection typeProjection : arguments) {
            arrayList.add(abstractC19230c.mo2423a(typeProjection));
        }
        return arrayList;
    }

    private static final String render$replaceArgs(String str, String str2) {
        String a;
        String c;
        if (!C18425p.m3928b((CharSequence) str, '<', false)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        a = C18425p.m3932a(str, '<', str);
        sb.append(a);
        sb.append('<');
        sb.append(str2);
        sb.append('>');
        c = C18425p.m3918c(str, '>', str);
        sb.append(c);
        return sb.toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final SimpleType getDelegate() {
        return getLowerBound();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final AbstractC19834h getMemberScope() {
        AbstractC19129g declarationDescriptor = getConstructor().getDeclarationDescriptor();
        AbstractC19070d abstractC19070d = declarationDescriptor instanceof AbstractC19070d ? (AbstractC19070d) declarationDescriptor : null;
        if (abstractC19070d != null) {
            AbstractC19834h memberScope = abstractC19070d.getMemberScope(RawSubstitution.INSTANCE);
            C18524p.m3843b(memberScope, "classDescriptor.getMemberScope(RawSubstitution)");
            return memberScope;
        }
        throw new IllegalStateException(C18524p.m3847a("Incorrect classifier: ", (Object) getConstructor().getDeclarationDescriptor()).toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final RawTypeImpl makeNullableAsSpecified(boolean z) {
        return new RawTypeImpl(getLowerBound().makeNullableAsSpecified(z), getUpperBound().makeNullableAsSpecified(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final FlexibleType refine(KotlinTypeRefiner kotlinTypeRefiner) {
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new RawTypeImpl((SimpleType) kotlinTypeRefiner.refineType(getLowerBound()), (SimpleType) kotlinTypeRefiner.refineType(getUpperBound()), true);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final String render(AbstractC19230c renderer, AbstractC19257f options) {
        boolean z;
        C18524p.m3840d(renderer, "renderer");
        C18524p.m3840d(options, "options");
        String mo2425a = renderer.mo2425a(getLowerBound());
        String mo2425a2 = renderer.mo2425a(getUpperBound());
        if (options.mo2367b()) {
            return "raw (" + mo2425a + ".." + mo2425a2 + ')';
        } else if (getUpperBound().getArguments().isEmpty()) {
            return renderer.mo2476a(mo2425a, mo2425a2, TypeUtilsKt.getBuiltIns(this));
        } else {
            List<String> render$renderArguments = render$renderArguments(renderer, getLowerBound());
            List<String> render$renderArguments2 = render$renderArguments(renderer, getUpperBound());
            List<String> list = render$renderArguments;
            String a = C18282n.m4148a(list, ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, RawTypeImpl$render$newArgs$1.INSTANCE, 30);
            List<C18538n> d = C18282n.m4127d((Iterable) list, (Iterable) render$renderArguments2);
            if (!d.isEmpty()) {
                for (C18538n c18538n : d) {
                    if (!render$onlyOutDiffers((String) c18538n.f63624a, (String) c18538n.f63625b)) {
                        z = false;
                        break;
                    }
                }
            }
            z = true;
            String str = mo2425a2;
            if (z) {
                str = render$replaceArgs(mo2425a2, a);
            }
            String render$replaceArgs = render$replaceArgs(mo2425a, a);
            return C18524p.m3850a((Object) render$replaceArgs, (Object) str) ? render$replaceArgs : renderer.mo2476a(render$replaceArgs, str, TypeUtilsKt.getBuiltIns(this));
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final RawTypeImpl replaceAnnotations(AbstractC18983g newAnnotations) {
        C18524p.m3840d(newAnnotations, "newAnnotations");
        return new RawTypeImpl(getLowerBound().replaceAnnotations(newAnnotations), getUpperBound().replaceAnnotations(newAnnotations));
    }
}
