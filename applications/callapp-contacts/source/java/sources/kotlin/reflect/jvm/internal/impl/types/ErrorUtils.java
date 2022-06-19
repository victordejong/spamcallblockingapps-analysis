package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.builtins.C18926d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19013aj;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m;
import kotlin.reflect.jvm.internal.impl.descriptors.C18998aa;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19158d;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19160f;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.C19276f;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorSimpleFunctionDescriptorImpl;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/ErrorUtils.class */
public class ErrorUtils {
    private static final AbstractC19017an ERROR_PROPERTY;
    private static final Set<AbstractC19017an> ERROR_PROPERTY_GROUP;
    private static final AbstractC18999ab ERROR_MODULE = new AbstractC18999ab() { // from class: kotlin.reflect.jvm.internal.impl.types.ErrorUtils.1
        /* JADX WARN: Removed duplicated region for block: B:32:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00d4  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00dc  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00e4  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00ec  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00f4  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00fc  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0106  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0184  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x01d0  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x01d8  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x01e0  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x01e8  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x01f0  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0200  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x0238  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static /* synthetic */ void $$$reportNull$$$0(int r4) {
            /*
                Method dump skipped, instructions count: 591
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.ErrorUtils.C199831.$$$reportNull$$$0(int):void");
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
        public final <R, D> R accept(AbstractC19195m<R, D> abstractC19195m, D d) {
            if (abstractC19195m == null) {
                $$$reportNull$$$0(11);
                return null;
            }
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a
        public final AbstractC18983g getAnnotations() {
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            AbstractC18983g m2705a = AbstractC18983g.C18984a.m2705a();
            if (m2705a == null) {
                $$$reportNull$$$0(1);
            }
            return m2705a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab
        public final AbstractC18940g getBuiltIns() {
            C18926d m2862a = C18926d.m2862a();
            if (m2862a == null) {
                $$$reportNull$$$0(14);
            }
            return m2862a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab
        public final <T> T getCapability(C18998aa<T> c18998aa) {
            if (c18998aa == null) {
                $$$reportNull$$$0(0);
                return null;
            }
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
        public final AbstractC19193k getContainingDeclaration() {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab
        public final List<AbstractC18999ab> getExpectedByModules() {
            C18297z c18297z = C18297z.f63400a;
            if (c18297z == null) {
                $$$reportNull$$$0(9);
            }
            return c18297z;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19000ac
        public final C18966e getName() {
            return C18966e.m2715c("<ERROR MODULE>");
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
        public final AbstractC19193k getOriginal() {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab
        public final AbstractC19013aj getPackage(C18961b c18961b) {
            if (c18961b == null) {
                $$$reportNull$$$0(7);
            }
            throw new IllegalStateException("Should not be called!");
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab
        public final Collection<C18961b> getSubPackagesOf(C18961b c18961b, Function1<? super C18966e, Boolean> function1) {
            if (c18961b == null) {
                $$$reportNull$$$0(2);
            }
            if (function1 == null) {
                $$$reportNull$$$0(3);
            }
            C18297z c18297z = C18297z.f63400a;
            if (c18297z == null) {
                $$$reportNull$$$0(4);
            }
            return c18297z;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab
        public final boolean shouldSeeInternalsOf(AbstractC18999ab abstractC18999ab) {
            if (abstractC18999ab == null) {
                $$$reportNull$$$0(12);
                return false;
            }
            return false;
        }
    };
    private static final ErrorClassDescriptor ERROR_CLASS = new ErrorClassDescriptor(C18966e.m2715c("<ERROR CLASS>"));
    public static final SimpleType ERROR_TYPE_FOR_LOOP_IN_SUPERTYPES = createErrorType("<LOOP IN SUPERTYPES>");
    private static final KotlinType ERROR_PROPERTY_TYPE = createErrorType("<ERROR PROPERTY TYPE>");

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor.class */
    public static class ErrorClassDescriptor extends C19160f {
        private static /* synthetic */ void $$$reportNull$$$0(int i) {
            String str = (i == 2 || i == 5 || i == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 2 || i == 5 || i == 8) ? 2 : 3];
            switch (i) {
                case 1:
                    objArr[0] = "substitutor";
                    break;
                case 2:
                case 5:
                case 8:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor";
                    break;
                case 3:
                    objArr[0] = "typeArguments";
                    break;
                case 4:
                case 7:
                    objArr[0] = "kotlinTypeRefiner";
                    break;
                case 6:
                    objArr[0] = "typeSubstitution";
                    break;
                default:
                    objArr[0] = "name";
                    break;
            }
            if (i == 2) {
                objArr[1] = "substitute";
            } else if (i == 5 || i == 8) {
                objArr[1] = "getMemberScope";
            } else {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor";
            }
            switch (i) {
                case 1:
                    objArr[2] = "substitute";
                    break;
                case 2:
                case 5:
                case 8:
                    break;
                case 3:
                case 4:
                case 6:
                case 7:
                    objArr[2] = "getMemberScope";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String format = String.format(str, objArr);
            throw ((i == 2 || i == 5 || i == 8) ? new IllegalStateException(format) : new IllegalArgumentException(format));
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ErrorClassDescriptor(C18966e c18966e) {
            super(ErrorUtils.getErrorModule(), c18966e, EnumC19222y.OPEN, EnumC19127e.CLASS, Collections.emptyList(), AbstractC19026at.f64759a, false, C19276f.f65120a);
            if (c18966e == null) {
                $$$reportNull$$$0(0);
            }
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            C19158d m2586a = C19158d.m2586a(this, AbstractC18983g.C18984a.m2705a(), AbstractC19026at.f64759a);
            m2586a.m2588a(Collections.emptyList(), C19200r.f65005d);
            AbstractC19834h createErrorScope = ErrorUtils.createErrorScope(getName().m2721a());
            m2586a.setReturnType(new ErrorType(ErrorUtils.createErrorTypeConstructorWithCustomDebugName("<ERROR>", this), createErrorScope));
            initialize(createErrorScope, Collections.singleton(m2586a), m2586a);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19137a, kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19179q
        public AbstractC19834h getMemberScope(TypeSubstitution typeSubstitution, KotlinTypeRefiner kotlinTypeRefiner) {
            if (typeSubstitution == null) {
                $$$reportNull$$$0(6);
            }
            if (kotlinTypeRefiner == null) {
                $$$reportNull$$$0(7);
            }
            AbstractC19834h createErrorScope = ErrorUtils.createErrorScope("Error scope for class " + getName() + " with arguments: " + typeSubstitution);
            if (createErrorScope == null) {
                $$$reportNull$$$0(8);
            }
            return createErrorScope;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19137a, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19030av
        /* renamed from: substitute */
        public AbstractC19130h substitute2(TypeSubstitutor typeSubstitutor) {
            if (typeSubstitutor == null) {
                $$$reportNull$$$0(1);
            }
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.C19160f
        public String toString() {
            return getName().m2721a();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorScope.class */
    public static class ErrorScope implements AbstractC19834h {
        private final String debugMessage;

        /* JADX WARN: Removed duplicated region for block: B:16:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00cc  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x00d4  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00dc  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00e4  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00ec  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00f4  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00fc  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x015c  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x01c0  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x01c8  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x01d0  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x01d8  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x01e0  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x01e8  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x01f0  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x01f8  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0200  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0211  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0238  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static /* synthetic */ void $$$reportNull$$$0(int r4) {
            /*
                Method dump skipped, instructions count: 591
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.ErrorUtils.ErrorScope.$$$reportNull$$$0(int):void");
        }

        private ErrorScope(String str) {
            if (str == null) {
                $$$reportNull$$$0(0);
            }
            this.debugMessage = str;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
        public Set<C18966e> getClassifierNames() {
            Set<C18966e> emptySet = Collections.emptySet();
            if (emptySet == null) {
                $$$reportNull$$$0(13);
            }
            return emptySet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
        public AbstractC19129g getContributedClassifier(C18966e c18966e, AbstractC18695b abstractC18695b) {
            if (c18966e == null) {
                $$$reportNull$$$0(1);
            }
            if (abstractC18695b == null) {
                $$$reportNull$$$0(2);
            }
            return ErrorUtils.createErrorClass(c18966e.m2721a());
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
        public Collection<AbstractC19193k> getContributedDescriptors(C19825d c19825d, Function1<? super C18966e, Boolean> function1) {
            if (c19825d == null) {
                $$$reportNull$$$0(16);
            }
            if (function1 == null) {
                $$$reportNull$$$0(17);
            }
            List emptyList = Collections.emptyList();
            if (emptyList == null) {
                $$$reportNull$$$0(18);
            }
            return emptyList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
        public Set<? extends AbstractC19025as> getContributedFunctions(C18966e c18966e, AbstractC18695b abstractC18695b) {
            if (c18966e == null) {
                $$$reportNull$$$0(8);
            }
            if (abstractC18695b == null) {
                $$$reportNull$$$0(9);
            }
            Set<? extends AbstractC19025as> singleton = Collections.singleton(ErrorUtils.createErrorFunction(this));
            if (singleton == null) {
                $$$reportNull$$$0(10);
            }
            return singleton;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
        public Set<? extends AbstractC19017an> getContributedVariables(C18966e c18966e, AbstractC18695b abstractC18695b) {
            if (c18966e == null) {
                $$$reportNull$$$0(5);
            }
            if (abstractC18695b == null) {
                $$$reportNull$$$0(6);
            }
            Set<? extends AbstractC19017an> set = ErrorUtils.ERROR_PROPERTY_GROUP;
            if (set == null) {
                $$$reportNull$$$0(7);
            }
            return set;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
        public Set<C18966e> getFunctionNames() {
            Set<C18966e> emptySet = Collections.emptySet();
            if (emptySet == null) {
                $$$reportNull$$$0(11);
            }
            return emptySet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
        public Set<C18966e> getVariableNames() {
            Set<C18966e> emptySet = Collections.emptySet();
            if (emptySet == null) {
                $$$reportNull$$$0(12);
            }
            return emptySet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
        public void recordLookup(C18966e c18966e, AbstractC18695b abstractC18695b) {
            if (c18966e == null) {
                $$$reportNull$$$0(14);
            }
            if (abstractC18695b == null) {
                $$$reportNull$$$0(15);
            }
        }

        public String toString() {
            return "ErrorScope{" + this.debugMessage + '}';
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ThrowingScope.class */
    public static class ThrowingScope implements AbstractC19834h {
        private final String debugMessage;

        private static /* synthetic */ void $$$reportNull$$$0(int i) {
            Object[] objArr = new Object[3];
            switch (i) {
                case 1:
                case 3:
                case 5:
                case 7:
                case 11:
                case 13:
                    objArr[0] = "name";
                    break;
                case 2:
                case 4:
                case 6:
                case 8:
                case 12:
                    objArr[0] = "location";
                    break;
                case 9:
                    objArr[0] = "kindFilter";
                    break;
                case 10:
                    objArr[0] = "nameFilter";
                    break;
                case 14:
                    objArr[0] = "p";
                    break;
                default:
                    objArr[0] = "message";
                    break;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ThrowingScope";
            switch (i) {
                case 1:
                case 2:
                    objArr[2] = "getContributedClassifier";
                    break;
                case 3:
                case 4:
                    objArr[2] = "getContributedClassifierIncludeDeprecated";
                    break;
                case 5:
                case 6:
                    objArr[2] = "getContributedVariables";
                    break;
                case 7:
                case 8:
                    objArr[2] = "getContributedFunctions";
                    break;
                case 9:
                case 10:
                    objArr[2] = "getContributedDescriptors";
                    break;
                case 11:
                case 12:
                    objArr[2] = "recordLookup";
                    break;
                case 13:
                    objArr[2] = "definitelyDoesNotContainName";
                    break;
                case 14:
                    objArr[2] = "printScopeStructure";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        private ThrowingScope(String str) {
            if (str == null) {
                $$$reportNull$$$0(0);
            }
            this.debugMessage = str;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
        public Set<C18966e> getClassifierNames() {
            throw new IllegalStateException();
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
        public AbstractC19129g getContributedClassifier(C18966e c18966e, AbstractC18695b abstractC18695b) {
            if (c18966e == null) {
                $$$reportNull$$$0(1);
            }
            if (abstractC18695b == null) {
                $$$reportNull$$$0(2);
            }
            throw new IllegalStateException(this.debugMessage + ", required name: " + c18966e);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
        public Collection<AbstractC19193k> getContributedDescriptors(C19825d c19825d, Function1<? super C18966e, Boolean> function1) {
            if (c19825d == null) {
                $$$reportNull$$$0(9);
            }
            if (function1 == null) {
                $$$reportNull$$$0(10);
            }
            throw new IllegalStateException(this.debugMessage);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
        public Collection<? extends AbstractC19025as> getContributedFunctions(C18966e c18966e, AbstractC18695b abstractC18695b) {
            if (c18966e == null) {
                $$$reportNull$$$0(7);
            }
            if (abstractC18695b == null) {
                $$$reportNull$$$0(8);
            }
            throw new IllegalStateException(this.debugMessage + ", required name: " + c18966e);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
        public Collection<? extends AbstractC19017an> getContributedVariables(C18966e c18966e, AbstractC18695b abstractC18695b) {
            if (c18966e == null) {
                $$$reportNull$$$0(5);
            }
            if (abstractC18695b == null) {
                $$$reportNull$$$0(6);
            }
            throw new IllegalStateException(this.debugMessage + ", required name: " + c18966e);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
        public Set<C18966e> getFunctionNames() {
            throw new IllegalStateException();
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
        public Set<C18966e> getVariableNames() {
            throw new IllegalStateException();
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
        public void recordLookup(C18966e c18966e, AbstractC18695b abstractC18695b) {
            if (c18966e == null) {
                $$$reportNull$$$0(11);
            }
            if (abstractC18695b == null) {
                $$$reportNull$$$0(12);
            }
            throw new IllegalStateException();
        }

        public String toString() {
            return "ThrowingScope{" + this.debugMessage + '}';
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/ErrorUtils$UninferredParameterTypeConstructor.class */
    public static class UninferredParameterTypeConstructor implements TypeConstructor {
        private final TypeConstructor errorTypeConstructor;
        private final TypeParameterDescriptor typeParameterDescriptor;

        private static /* synthetic */ void $$$reportNull$$$0(int i) {
            String str = (i == 1 || i == 2 || i == 3 || i == 4 || i == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 1 || i == 2 || i == 3 || i == 4 || i == 6) ? 2 : 3];
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 6:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$UninferredParameterTypeConstructor";
                    break;
                case 5:
                    objArr[0] = "kotlinTypeRefiner";
                    break;
                default:
                    objArr[0] = "descriptor";
                    break;
            }
            if (i == 1) {
                objArr[1] = "getTypeParameterDescriptor";
            } else if (i == 2) {
                objArr[1] = "getParameters";
            } else if (i == 3) {
                objArr[1] = "getSupertypes";
            } else if (i == 4) {
                objArr[1] = "getBuiltIns";
            } else if (i != 6) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$UninferredParameterTypeConstructor";
            } else {
                objArr[1] = "refine";
            }
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 6:
                    break;
                case 5:
                    objArr[2] = "refine";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String format = String.format(str, objArr);
            throw ((i == 1 || i == 2 || i == 3 || i == 4 || i == 6) ? new IllegalStateException(format) : new IllegalArgumentException(format));
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public AbstractC18940g getBuiltIns() {
            AbstractC18940g m1526d = C19756a.m1526d(this.typeParameterDescriptor);
            if (m1526d == null) {
                $$$reportNull$$$0(4);
            }
            return m1526d;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public AbstractC19129g getDeclarationDescriptor() {
            return this.errorTypeConstructor.getDeclarationDescriptor();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public List<TypeParameterDescriptor> getParameters() {
            List<TypeParameterDescriptor> parameters = this.errorTypeConstructor.getParameters();
            if (parameters == null) {
                $$$reportNull$$$0(2);
            }
            return parameters;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        /* renamed from: getSupertypes */
        public Collection<KotlinType> mo53752getSupertypes() {
            Collection<KotlinType> mo53752getSupertypes = this.errorTypeConstructor.mo53752getSupertypes();
            if (mo53752getSupertypes == null) {
                $$$reportNull$$$0(3);
            }
            return mo53752getSupertypes;
        }

        public TypeParameterDescriptor getTypeParameterDescriptor() {
            TypeParameterDescriptor typeParameterDescriptor = this.typeParameterDescriptor;
            if (typeParameterDescriptor == null) {
                $$$reportNull$$$0(1);
            }
            return typeParameterDescriptor;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public boolean isDenotable() {
            return this.errorTypeConstructor.isDenotable();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public TypeConstructor refine(KotlinTypeRefiner kotlinTypeRefiner) {
            if (kotlinTypeRefiner == null) {
                $$$reportNull$$$0(5);
            }
            return this;
        }
    }

    private static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 4 || i == 6 || i == 19) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 4 || i == 6 || i == 19) ? 2 : 3];
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 7:
            case 11:
            case 15:
                objArr[0] = "debugMessage";
                break;
            case 4:
            case 6:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils";
                break;
            case 5:
                objArr[0] = "ownerScope";
                break;
            case 8:
            case 9:
            case 16:
            case 17:
                objArr[0] = "debugName";
                break;
            case 10:
                objArr[0] = "typeConstructor";
                break;
            case 12:
            case 14:
                objArr[0] = "arguments";
                break;
            case 13:
                objArr[0] = "presentableName";
                break;
            case 18:
                objArr[0] = "errorClass";
                break;
            case 20:
                objArr[0] = "typeParameterDescriptor";
                break;
            default:
                objArr[0] = "function";
                break;
        }
        if (i == 4) {
            objArr[1] = "createErrorProperty";
        } else if (i == 6) {
            objArr[1] = "createErrorFunction";
        } else if (i != 19) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils";
        } else {
            objArr[1] = "getErrorModule";
        }
        switch (i) {
            case 1:
                objArr[2] = "createErrorClass";
                break;
            case 2:
            case 3:
                objArr[2] = "createErrorScope";
                break;
            case 4:
            case 6:
            case 19:
                break;
            case 5:
                objArr[2] = "createErrorFunction";
                break;
            case 7:
                objArr[2] = "createErrorType";
                break;
            case 8:
                objArr[2] = "createErrorTypeWithCustomDebugName";
                break;
            case 9:
            case 10:
                objArr[2] = "createErrorTypeWithCustomConstructor";
                break;
            case 11:
            case 12:
                objArr[2] = "createErrorTypeWithArguments";
                break;
            case 13:
            case 14:
                objArr[2] = "createUnresolvedType";
                break;
            case 15:
                objArr[2] = "createErrorTypeConstructor";
                break;
            case 16:
            case 17:
            case 18:
                objArr[2] = "createErrorTypeConstructorWithCustomDebugName";
                break;
            case 20:
                objArr[2] = "createUninferredParameterType";
                break;
            default:
                objArr[2] = "containsErrorTypeInParameters";
                break;
        }
        String format = String.format(str, objArr);
        throw ((i == 4 || i == 6 || i == 19) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    static {
        PropertyDescriptorImpl createErrorProperty = createErrorProperty();
        ERROR_PROPERTY = createErrorProperty;
        ERROR_PROPERTY_GROUP = Collections.singleton(createErrorProperty);
    }

    public static AbstractC19070d createErrorClass(String str) {
        if (str == null) {
            $$$reportNull$$$0(1);
        }
        return new ErrorClassDescriptor(C18966e.m2715c("<ERROR CLASS: " + str + ">"));
    }

    public static AbstractC19025as createErrorFunction(ErrorScope errorScope) {
        if (errorScope == null) {
            $$$reportNull$$$0(5);
        }
        ErrorSimpleFunctionDescriptorImpl errorSimpleFunctionDescriptorImpl = new ErrorSimpleFunctionDescriptorImpl(ERROR_CLASS, errorScope);
        errorSimpleFunctionDescriptorImpl.initialize((AbstractC19020aq) null, (AbstractC19020aq) null, Collections.emptyList(), Collections.emptyList(), (KotlinType) createErrorType("<ERROR FUNCTION RETURN TYPE>"), EnumC19222y.OPEN, C19200r.f65006e);
        return errorSimpleFunctionDescriptorImpl;
    }

    private static PropertyDescriptorImpl createErrorProperty() {
        ErrorClassDescriptor errorClassDescriptor = ERROR_CLASS;
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        PropertyDescriptorImpl m2629a = PropertyDescriptorImpl.m2629a(errorClassDescriptor, AbstractC18983g.C18984a.m2705a(), EnumC19222y.OPEN, C19200r.f65006e, C18966e.m2715c("<ERROR PROPERTY>"), AbstractC19039b.EnumC19040a.DECLARATION, AbstractC19026at.f64759a);
        m2629a.m2627a(ERROR_PROPERTY_TYPE, Collections.emptyList(), (AbstractC19020aq) null, (AbstractC19020aq) null);
        return m2629a;
    }

    public static AbstractC19834h createErrorScope(String str) {
        if (str == null) {
            $$$reportNull$$$0(2);
        }
        return createErrorScope(str, false);
    }

    public static AbstractC19834h createErrorScope(String str, boolean z) {
        if (str == null) {
            $$$reportNull$$$0(3);
        }
        return z ? new ThrowingScope(str) : new ErrorScope(str);
    }

    public static SimpleType createErrorType(String str) {
        if (str == null) {
            $$$reportNull$$$0(7);
        }
        return createErrorTypeWithArguments(str, Collections.emptyList());
    }

    public static TypeConstructor createErrorTypeConstructor(String str) {
        if (str == null) {
            $$$reportNull$$$0(15);
        }
        return createErrorTypeConstructorWithCustomDebugName("[ERROR : " + str + "]", ERROR_CLASS);
    }

    public static TypeConstructor createErrorTypeConstructorWithCustomDebugName(String str) {
        if (str == null) {
            $$$reportNull$$$0(16);
        }
        return createErrorTypeConstructorWithCustomDebugName(str, ERROR_CLASS);
    }

    public static TypeConstructor createErrorTypeConstructorWithCustomDebugName(final String str, final ErrorClassDescriptor errorClassDescriptor) {
        if (str == null) {
            $$$reportNull$$$0(17);
        }
        if (errorClassDescriptor == null) {
            $$$reportNull$$$0(18);
        }
        return new TypeConstructor() { // from class: kotlin.reflect.jvm.internal.impl.types.ErrorUtils.2
            private static /* synthetic */ void $$$reportNull$$$0(int i) {
                String str2 = i != 3 ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                Object[] objArr = new Object[i != 3 ? 2 : 3];
                if (i != 3) {
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$2";
                } else {
                    objArr[0] = "kotlinTypeRefiner";
                }
                if (i == 1) {
                    objArr[1] = "getSupertypes";
                } else if (i == 2) {
                    objArr[1] = "getBuiltIns";
                } else if (i == 3) {
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$2";
                } else if (i != 4) {
                    objArr[1] = "getParameters";
                } else {
                    objArr[1] = "refine";
                }
                if (i == 3) {
                    objArr[2] = "refine";
                }
                String format = String.format(str2, objArr);
                throw (i != 3 ? new IllegalStateException(format) : new IllegalArgumentException(format));
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
            public final AbstractC18940g getBuiltIns() {
                C18926d m2862a = C18926d.m2862a();
                if (m2862a == null) {
                    $$$reportNull$$$0(2);
                }
                return m2862a;
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
            public final AbstractC19129g getDeclarationDescriptor() {
                return errorClassDescriptor;
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
            public final List<TypeParameterDescriptor> getParameters() {
                C18297z c18297z = C18297z.f63400a;
                if (c18297z == null) {
                    $$$reportNull$$$0(0);
                }
                return c18297z;
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
            /* renamed from: getSupertypes */
            public final Collection<KotlinType> mo53752getSupertypes() {
                C18297z c18297z = C18297z.f63400a;
                if (c18297z == null) {
                    $$$reportNull$$$0(1);
                }
                return c18297z;
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
            public final boolean isDenotable() {
                return false;
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
            public final TypeConstructor refine(KotlinTypeRefiner kotlinTypeRefiner) {
                if (kotlinTypeRefiner == null) {
                    $$$reportNull$$$0(3);
                }
                return this;
            }

            public final String toString() {
                return str;
            }
        };
    }

    public static SimpleType createErrorTypeWithArguments(String str, List<TypeProjection> list) {
        if (str == null) {
            $$$reportNull$$$0(11);
        }
        if (list == null) {
            $$$reportNull$$$0(12);
        }
        return new ErrorType(createErrorTypeConstructor(str), createErrorScope(str), list, false);
    }

    public static SimpleType createErrorTypeWithCustomConstructor(String str, TypeConstructor typeConstructor) {
        if (str == null) {
            $$$reportNull$$$0(9);
        }
        if (typeConstructor == null) {
            $$$reportNull$$$0(10);
        }
        return new ErrorType(typeConstructor, createErrorScope(str));
    }

    public static SimpleType createErrorTypeWithCustomDebugName(String str) {
        if (str == null) {
            $$$reportNull$$$0(8);
        }
        return createErrorTypeWithCustomConstructor(str, createErrorTypeConstructorWithCustomDebugName(str));
    }

    public static AbstractC18999ab getErrorModule() {
        AbstractC18999ab abstractC18999ab = ERROR_MODULE;
        if (abstractC18999ab == null) {
            $$$reportNull$$$0(19);
        }
        return abstractC18999ab;
    }

    public static boolean isError(AbstractC19193k abstractC19193k) {
        if (abstractC19193k == null) {
            return false;
        }
        return isErrorClass(abstractC19193k) || isErrorClass(abstractC19193k.getContainingDeclaration()) || abstractC19193k == ERROR_MODULE;
    }

    private static boolean isErrorClass(AbstractC19193k abstractC19193k) {
        return abstractC19193k instanceof ErrorClassDescriptor;
    }

    public static boolean isUninferredParameter(KotlinType kotlinType) {
        return kotlinType != null && (kotlinType.getConstructor() instanceof UninferredParameterTypeConstructor);
    }
}
