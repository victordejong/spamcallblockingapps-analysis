package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.C20128v;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.EnumC18698d;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19294g;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.AbstractC19855g;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d;
import kotlin.reflect.jvm.internal.impl.types.ClassTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.l */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/l.class */
public class C19166l extends AbstractC19159e {

    /* renamed from: a */
    static final /* synthetic */ boolean f64923a = true;

    /* renamed from: b */
    private final TypeConstructor f64924b;

    /* renamed from: c */
    private final AbstractC19834h f64925c;

    /* renamed from: d */
    private final AbstractC19296i<Set<C18966e>> f64926d;

    /* renamed from: e */
    private final AbstractC18983g f64927e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.l$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/l$a.class */
    public final class C19167a extends AbstractC19839i {

        /* renamed from: a */
        static final /* synthetic */ boolean f64928a = true;

        /* renamed from: b */
        final /* synthetic */ C19166l f64929b;

        /* renamed from: c */
        private final AbstractC19294g<C18966e, Collection<? extends AbstractC19025as>> f64930c;

        /* renamed from: d */
        private final AbstractC19294g<C18966e, Collection<? extends AbstractC19017an>> f64931d;

        /* renamed from: e */
        private final AbstractC19296i<Collection<AbstractC19193k>> f64932e;

        public C19167a(final C19166l c19166l, AbstractC19302n abstractC19302n) {
            if (abstractC19302n == null) {
                m2578a(0);
            }
            this.f64929b = c19166l;
            this.f64930c = abstractC19302n.mo2310a(new Function1<C18966e, Collection<? extends AbstractC19025as>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.l.a.1
                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ Collection<? extends AbstractC19025as> invoke(C18966e c18966e) {
                    return C19167a.m2575a(C19167a.this, c18966e);
                }
            });
            this.f64931d = abstractC19302n.mo2310a(new Function1<C18966e, Collection<? extends AbstractC19017an>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.l.a.2
                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ Collection<? extends AbstractC19017an> invoke(C18966e c18966e) {
                    return C19167a.m2574b(C19167a.this, c18966e);
                }
            });
            this.f64932e = abstractC19302n.mo2313a(new Function0<Collection<AbstractC19193k>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.l.a.3
                @Override // kotlin.jvm.functions.Function0
                public final /* synthetic */ Collection<AbstractC19193k> invoke() {
                    return C19167a.m2576a(C19167a.this);
                }
            });
        }

        /* renamed from: a */
        private <D extends AbstractC19039b> Collection<? extends D> m2577a(C18966e c18966e, Collection<? extends D> collection) {
            if (c18966e == null) {
                m2578a(10);
            }
            if (collection == null) {
                m2578a(11);
            }
            final LinkedHashSet linkedHashSet = new LinkedHashSet();
            OverridingUtil.f65920a.m1580a(c18966e, collection, Collections.emptySet(), this.f64929b, new AbstractC19855g() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.l.a.4
                /* renamed from: a */
                private static /* synthetic */ void m2573a(int i) {
                    Object[] objArr = new Object[3];
                    if (i == 1) {
                        objArr[0] = "fromSuper";
                    } else if (i != 2) {
                        objArr[0] = "fakeOverride";
                    } else {
                        objArr[0] = "fromCurrent";
                    }
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope$4";
                    if (i == 1 || i == 2) {
                        objArr[2] = "conflict";
                    } else {
                        objArr[2] = "addFakeOverride";
                    }
                    throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
                }

                @Override // kotlin.reflect.jvm.internal.impl.resolve.AbstractC19856h
                /* renamed from: a */
                public final void mo1343a(AbstractC19039b abstractC19039b) {
                    if (abstractC19039b == null) {
                        m2573a(0);
                    }
                    OverridingUtil.m1568a(abstractC19039b, (Function1<AbstractC19039b, C20128v>) null);
                    linkedHashSet.add(abstractC19039b);
                }

                @Override // kotlin.reflect.jvm.internal.impl.resolve.AbstractC19855g
                /* renamed from: a */
                public final void mo1342a(AbstractC19039b abstractC19039b, AbstractC19039b abstractC19039b2) {
                    if (abstractC19039b == null) {
                        m2573a(1);
                    }
                    if (abstractC19039b2 == null) {
                        m2573a(2);
                    }
                }
            });
            return linkedHashSet;
        }

        /* renamed from: a */
        static /* synthetic */ Collection m2576a(C19167a c19167a) {
            HashSet hashSet = new HashSet();
            for (C18966e c18966e : (Set) c19167a.f64929b.f64926d.invoke()) {
                hashSet.addAll(c19167a.getContributedFunctions(c18966e, EnumC18698d.FOR_NON_TRACKED_SCOPE));
                hashSet.addAll(c19167a.getContributedVariables(c18966e, EnumC18698d.FOR_NON_TRACKED_SCOPE));
            }
            return hashSet;
        }

        /* renamed from: a */
        static /* synthetic */ Collection m2575a(C19167a c19167a, C18966e c18966e) {
            if (c18966e == null) {
                m2578a(8);
            }
            return c19167a.m2577a(c18966e, c19167a.m2579a().getContributedFunctions(c18966e, EnumC18698d.FOR_NON_TRACKED_SCOPE));
        }

        /* renamed from: a */
        private AbstractC19834h m2579a() {
            Collection<KotlinType> mo53752getSupertypes = this.f64929b.getTypeConstructor().mo53752getSupertypes();
            if (f64928a || mo53752getSupertypes.size() == 1) {
                AbstractC19834h memberScope = mo53752getSupertypes.iterator().next().getMemberScope();
                if (memberScope == null) {
                    m2578a(9);
                }
                return memberScope;
            }
            throw new AssertionError("Enum entry and its companion object both should have exactly one supertype: ".concat(String.valueOf(mo53752getSupertypes)));
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00ec  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00f4  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00fc  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0104  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x010c  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0114  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0124  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x012e  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x01ac  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0210  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0218  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0220  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0228  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0230  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0238  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x0240  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0248  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0258  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x028c  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static /* synthetic */ void m2578a(int r4) {
            /*
                Method dump skipped, instructions count: 675
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.C19166l.C19167a.m2578a(int):void");
        }

        /* renamed from: b */
        static /* synthetic */ Collection m2574b(C19167a c19167a, C18966e c18966e) {
            if (c18966e == null) {
                m2578a(4);
            }
            return c19167a.m2577a(c18966e, c19167a.m2579a().getContributedVariables(c18966e, EnumC18698d.FOR_NON_TRACKED_SCOPE));
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
        public final Set<C18966e> getClassifierNames() {
            Set<C18966e> emptySet = Collections.emptySet();
            if (emptySet == null) {
                m2578a(18);
            }
            return emptySet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
        public final Collection<AbstractC19193k> getContributedDescriptors(C19825d c19825d, Function1<? super C18966e, Boolean> function1) {
            if (c19825d == null) {
                m2578a(13);
            }
            if (function1 == null) {
                m2578a(14);
            }
            Collection<AbstractC19193k> invoke = this.f64932e.invoke();
            if (invoke == null) {
                m2578a(15);
            }
            return invoke;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
        public final Collection<? extends AbstractC19025as> getContributedFunctions(C18966e c18966e, AbstractC18695b abstractC18695b) {
            if (c18966e == null) {
                m2578a(5);
            }
            if (abstractC18695b == null) {
                m2578a(6);
            }
            Collection<? extends AbstractC19025as> invoke = this.f64930c.invoke(c18966e);
            if (invoke == null) {
                m2578a(7);
            }
            return invoke;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
        public final Collection<? extends AbstractC19017an> getContributedVariables(C18966e c18966e, AbstractC18695b abstractC18695b) {
            if (c18966e == null) {
                m2578a(1);
            }
            if (abstractC18695b == null) {
                m2578a(2);
            }
            Collection<? extends AbstractC19017an> invoke = this.f64931d.invoke(c18966e);
            if (invoke == null) {
                m2578a(3);
            }
            return invoke;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
        public final Set<C18966e> getFunctionNames() {
            Set<C18966e> set = (Set) this.f64929b.f64926d.invoke();
            if (set == null) {
                m2578a(17);
            }
            return set;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
        public final Set<C18966e> getVariableNames() {
            Set<C18966e> set = (Set) this.f64929b.f64926d.invoke();
            if (set == null) {
                m2578a(19);
            }
            return set;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private C19166l(AbstractC19302n abstractC19302n, AbstractC19070d abstractC19070d, KotlinType kotlinType, C18966e c18966e, AbstractC19296i<Set<C18966e>> abstractC19296i, AbstractC18983g abstractC18983g, AbstractC19026at abstractC19026at) {
        super(abstractC19302n, abstractC19070d, c18966e, abstractC19026at, false);
        if (abstractC19302n == null) {
            m2582a(6);
        }
        if (abstractC19070d == null) {
            m2582a(7);
        }
        if (kotlinType == null) {
            m2582a(8);
        }
        if (c18966e == null) {
            m2582a(9);
        }
        if (abstractC19296i == null) {
            m2582a(10);
        }
        if (abstractC18983g == null) {
            m2582a(11);
        }
        if (abstractC19026at == null) {
            m2582a(12);
        }
        if (f64923a || abstractC19070d.getKind() == EnumC19127e.ENUM_CLASS) {
            this.f64927e = abstractC18983g;
            this.f64924b = new ClassTypeConstructorImpl(this, Collections.emptyList(), Collections.singleton(kotlinType), abstractC19302n);
            this.f64925c = new C19167a(this, abstractC19302n);
            this.f64926d = abstractC19296i;
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public static C19166l m2580a(AbstractC19302n abstractC19302n, AbstractC19070d abstractC19070d, C18966e c18966e, AbstractC19296i<Set<C18966e>> abstractC19296i, AbstractC18983g abstractC18983g, AbstractC19026at abstractC19026at) {
        if (abstractC19302n == null) {
            m2582a(0);
        }
        if (abstractC19070d == null) {
            m2582a(1);
        }
        if (c18966e == null) {
            m2582a(2);
        }
        if (abstractC19296i == null) {
            m2582a(3);
        }
        if (abstractC18983g == null) {
            m2582a(4);
        }
        if (abstractC19026at == null) {
            m2582a(5);
        }
        return new C19166l(abstractC19302n, abstractC19070d, abstractC19070d.getDefaultType(), c18966e, abstractC19296i, abstractC18983g, abstractC19026at);
    }

    /* renamed from: a */
    private static /* synthetic */ void m2582a(int i) {
        String str;
        int i2;
        IllegalArgumentException illegalArgumentException;
        switch (i) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "enumClass";
                break;
            case 2:
            case 9:
                objArr[0] = "name";
                break;
            case 3:
            case 10:
                objArr[0] = "enumMemberNames";
                break;
            case 4:
            case 11:
                objArr[0] = "annotations";
                break;
            case 5:
            case 12:
                objArr[0] = Payload.SOURCE;
                break;
            case 6:
            default:
                objArr[0] = "storageManager";
                break;
            case 7:
                objArr[0] = "containingClass";
                break;
            case 8:
                objArr[0] = "supertype";
                break;
            case 13:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor";
                break;
        }
        switch (i) {
            case 14:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 15:
                objArr[1] = "getStaticScope";
                break;
            case 16:
                objArr[1] = "getConstructors";
                break;
            case 17:
                objArr[1] = "getTypeConstructor";
                break;
            case 18:
                objArr[1] = "getKind";
                break;
            case 19:
                objArr[1] = "getModality";
                break;
            case 20:
                objArr[1] = "getVisibility";
                break;
            case 21:
                objArr[1] = "getAnnotations";
                break;
            case 22:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 23:
                objArr[1] = "getSealedSubclasses";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor";
                break;
        }
        switch (i) {
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "<init>";
                break;
            case 13:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                break;
            default:
                objArr[2] = "create";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                illegalArgumentException = new IllegalStateException(format);
                break;
            default:
                illegalArgumentException = new IllegalArgumentException(format);
                break;
        }
        throw illegalArgumentException;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a
    public AbstractC18983g getAnnotations() {
        AbstractC18983g abstractC18983g = this.f64927e;
        if (abstractC18983g == null) {
            m2582a(21);
        }
        return abstractC18983g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19070d getCompanionObjectDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public Collection<AbstractC19065c> getConstructors() {
        List emptyList = Collections.emptyList();
        if (emptyList == null) {
            m2582a(16);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h
    public List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        List<TypeParameterDescriptor> emptyList = Collections.emptyList();
        if (emptyList == null) {
            m2582a(22);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public EnumC19127e getKind() {
        EnumC19127e enumC19127e = EnumC19127e.ENUM_ENTRY;
        if (enumC19127e == null) {
            m2582a(18);
        }
        return enumC19127e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public EnumC19222y getModality() {
        EnumC19222y enumC19222y = EnumC19222y.FINAL;
        if (enumC19222y == null) {
            m2582a(19);
        }
        return enumC19222y;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public Collection<AbstractC19070d> getSealedSubclasses() {
        List emptyList = Collections.emptyList();
        if (emptyList == null) {
            m2582a(23);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19834h getStaticScope() {
        AbstractC19834h.C19838c c19838c = AbstractC19834h.C19838c.f66035a;
        if (c19838c == null) {
            m2582a(15);
        }
        return c19838c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g
    public TypeConstructor getTypeConstructor() {
        TypeConstructor typeConstructor = this.f64924b;
        if (typeConstructor == null) {
            m2582a(17);
        }
        return typeConstructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19179q
    public AbstractC19834h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner) {
        if (kotlinTypeRefiner == null) {
            m2582a(13);
        }
        AbstractC19834h abstractC19834h = this.f64925c;
        if (abstractC19834h == null) {
            m2582a(14);
        }
        return abstractC19834h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public AbstractC19065c getUnsubstitutedPrimaryConstructor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public AbstractC19213s getVisibility() {
        AbstractC19213s abstractC19213s = C19200r.f65006e;
        if (abstractC19213s == null) {
            m2582a(20);
        }
        return abstractC19213s;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public boolean isCompanionObject() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public boolean isData() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public boolean isExpect() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public boolean isFun() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h
    public boolean isInner() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public boolean isValue() {
        return false;
    }

    public String toString() {
        return "enum entry " + getName();
    }
}
