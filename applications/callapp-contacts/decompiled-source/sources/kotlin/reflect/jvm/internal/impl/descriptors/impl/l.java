package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.a.a.d;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.ClassTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/l.class */
public class l extends e {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f37538a = true;

    /* renamed from: b  reason: collision with root package name */
    private final TypeConstructor f37539b;

    /* renamed from: c  reason: collision with root package name */
    private final h f37540c;

    /* renamed from: d  reason: collision with root package name */
    private final i<Set<e>> f37541d;
    private final g e;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/l$a.class */
    final class a extends kotlin.reflect.jvm.internal.impl.resolve.e.i {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ boolean f37542a = true;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ l f37543b;

        /* renamed from: c  reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.f.g<e, Collection<? extends as>> f37544c;

        /* renamed from: d  reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.f.g<e, Collection<? extends an>> f37545d;
        private final i<Collection<k>> e;

        public a(final l lVar, n nVar) {
            if (nVar == null) {
                a(0);
            }
            this.f37543b = lVar;
            this.f37544c = nVar.a(new Function1<e, Collection<? extends as>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.l.a.1
                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ Collection<? extends as> invoke(e eVar) {
                    return a.a(a.this, eVar);
                }
            });
            this.f37545d = nVar.a(new Function1<e, Collection<? extends an>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.l.a.2
                @Override // kotlin.jvm.functions.Function1
                public final /* synthetic */ Collection<? extends an> invoke(e eVar) {
                    return a.b(a.this, eVar);
                }
            });
            this.e = nVar.a(new Function0<Collection<k>>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.l.a.3
                @Override // kotlin.jvm.functions.Function0
                public final /* synthetic */ Collection<k> invoke() {
                    return a.a(a.this);
                }
            });
        }

        private <D extends b> Collection<? extends D> a(e eVar, Collection<? extends D> collection) {
            if (eVar == null) {
                a(10);
            }
            if (collection == null) {
                a(11);
            }
            final LinkedHashSet linkedHashSet = new LinkedHashSet();
            OverridingUtil.f38207a.a(eVar, collection, Collections.emptySet(), this.f37543b, new kotlin.reflect.jvm.internal.impl.resolve.g() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.l.a.4
                private static /* synthetic */ void a(int i) {
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

                @Override // kotlin.reflect.jvm.internal.impl.resolve.h
                public final void a(b bVar) {
                    if (bVar == null) {
                        a(0);
                    }
                    OverridingUtil.a(bVar, (Function1<b, v>) null);
                    linkedHashSet.add(bVar);
                }

                @Override // kotlin.reflect.jvm.internal.impl.resolve.g
                public final void a(b bVar, b bVar2) {
                    if (bVar == null) {
                        a(1);
                    }
                    if (bVar2 == null) {
                        a(2);
                    }
                }
            });
            return linkedHashSet;
        }

        static /* synthetic */ Collection a(a aVar) {
            HashSet hashSet = new HashSet();
            for (e eVar : (Set) aVar.f37543b.f37541d.invoke()) {
                hashSet.addAll(aVar.getContributedFunctions(eVar, d.FOR_NON_TRACKED_SCOPE));
                hashSet.addAll(aVar.getContributedVariables(eVar, d.FOR_NON_TRACKED_SCOPE));
            }
            return hashSet;
        }

        static /* synthetic */ Collection a(a aVar, e eVar) {
            if (eVar == null) {
                a(8);
            }
            return aVar.a(eVar, aVar.a().getContributedFunctions(eVar, d.FOR_NON_TRACKED_SCOPE));
        }

        private h a() {
            Collection<KotlinType> supertypes = this.f37543b.getTypeConstructor().mo7371getSupertypes();
            if (f37542a || supertypes.size() == 1) {
                h memberScope = supertypes.iterator().next().getMemberScope();
                if (memberScope == null) {
                    a(9);
                }
                return memberScope;
            }
            throw new AssertionError("Enum entry and its companion object both should have exactly one supertype: ".concat(String.valueOf(supertypes)));
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
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static /* synthetic */ void a(int r4) {
            /*
                Method dump skipped, instructions count: 675
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.l.a.a(int):void");
        }

        static /* synthetic */ Collection b(a aVar, e eVar) {
            if (eVar == null) {
                a(4);
            }
            return aVar.a(eVar, aVar.a().getContributedVariables(eVar, d.FOR_NON_TRACKED_SCOPE));
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
        public final Set<e> getClassifierNames() {
            Set<e> emptySet = Collections.emptySet();
            if (emptySet == null) {
                a(18);
            }
            return emptySet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
        public final Collection<k> getContributedDescriptors(kotlin.reflect.jvm.internal.impl.resolve.e.d dVar, Function1<? super e, Boolean> function1) {
            if (dVar == null) {
                a(13);
            }
            if (function1 == null) {
                a(14);
            }
            Collection<k> invoke = this.e.invoke();
            if (invoke == null) {
                a(15);
            }
            return invoke;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h, kotlin.reflect.jvm.internal.impl.resolve.e.k
        public final Collection<? extends as> getContributedFunctions(e eVar, kotlin.reflect.jvm.internal.impl.a.a.b bVar) {
            if (eVar == null) {
                a(5);
            }
            if (bVar == null) {
                a(6);
            }
            Collection<? extends as> invoke = this.f37544c.invoke(eVar);
            if (invoke == null) {
                a(7);
            }
            return invoke;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
        public final Collection<? extends an> getContributedVariables(e eVar, kotlin.reflect.jvm.internal.impl.a.a.b bVar) {
            if (eVar == null) {
                a(1);
            }
            if (bVar == null) {
                a(2);
            }
            Collection<? extends an> invoke = this.f37545d.invoke(eVar);
            if (invoke == null) {
                a(3);
            }
            return invoke;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
        public final Set<e> getFunctionNames() {
            Set<e> set = (Set) this.f37543b.f37541d.invoke();
            if (set == null) {
                a(17);
            }
            return set;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
        public final Set<e> getVariableNames() {
            Set<e> set = (Set) this.f37543b.f37541d.invoke();
            if (set == null) {
                a(19);
            }
            return set;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private l(n nVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, KotlinType kotlinType, e eVar, i<Set<e>> iVar, g gVar, at atVar) {
        super(nVar, dVar, eVar, atVar, false);
        if (nVar == null) {
            a(6);
        }
        if (dVar == null) {
            a(7);
        }
        if (kotlinType == null) {
            a(8);
        }
        if (eVar == null) {
            a(9);
        }
        if (iVar == null) {
            a(10);
        }
        if (gVar == null) {
            a(11);
        }
        if (atVar == null) {
            a(12);
        }
        if (f37538a || dVar.getKind() == kotlin.reflect.jvm.internal.impl.descriptors.e.ENUM_CLASS) {
            this.e = gVar;
            this.f37539b = new ClassTypeConstructorImpl(this, Collections.emptyList(), Collections.singleton(kotlinType), nVar);
            this.f37540c = new a(this, nVar);
            this.f37541d = iVar;
            return;
        }
        throw new AssertionError();
    }

    public static l a(n nVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, e eVar, i<Set<e>> iVar, g gVar, at atVar) {
        if (nVar == null) {
            a(0);
        }
        if (dVar == null) {
            a(1);
        }
        if (eVar == null) {
            a(2);
        }
        if (iVar == null) {
            a(3);
        }
        if (gVar == null) {
            a(4);
        }
        if (atVar == null) {
            a(5);
        }
        return new l(nVar, dVar, dVar.getDefaultType(), eVar, iVar, gVar, atVar);
    }

    private static /* synthetic */ void a(int i) {
        String str;
        int i2;
        Throwable th;
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
                th = new IllegalStateException(format);
                break;
            default:
                th = new IllegalArgumentException(format);
                break;
        }
        throw th;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public g getAnnotations() {
        g gVar = this.e;
        if (gVar == null) {
            a(21);
        }
        return gVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.d getCompanionObjectDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<c> getConstructors() {
        List emptyList = Collections.emptyList();
        if (emptyList == null) {
            a(16);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.h
    public List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        List<TypeParameterDescriptor> emptyList = Collections.emptyList();
        if (emptyList == null) {
            a(22);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.e getKind() {
        kotlin.reflect.jvm.internal.impl.descriptors.e eVar = kotlin.reflect.jvm.internal.impl.descriptors.e.ENUM_ENTRY;
        if (eVar == null) {
            a(18);
        }
        return eVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.x
    public y getModality() {
        y yVar = y.FINAL;
        if (yVar == null) {
            a(19);
        }
        return yVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> getSealedSubclasses() {
        List emptyList = Collections.emptyList();
        if (emptyList == null) {
            a(23);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public h getStaticScope() {
        h.c cVar = h.c.f38297a;
        if (cVar == null) {
            a(15);
        }
        return cVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public TypeConstructor getTypeConstructor() {
        TypeConstructor typeConstructor = this.f37539b;
        if (typeConstructor == null) {
            a(17);
        }
        return typeConstructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.q
    public h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner) {
        if (kotlinTypeRefiner == null) {
            a(13);
        }
        h hVar = this.f37540c;
        if (hVar == null) {
            a(14);
        }
        return hVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public c getUnsubstitutedPrimaryConstructor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.x
    public s getVisibility() {
        s sVar = r.e;
        if (sVar == null) {
            a(20);
        }
        return sVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isCompanionObject() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isData() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isExpect() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isFun() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.h
    public boolean isInner() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isValue() {
        return false;
    }

    public String toString() {
        return "enum entry " + getName();
    }
}
