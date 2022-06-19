package kotlin.reflect.jvm.internal.impl.resolve.p567e;

import java.util.Collection;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18240ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/h.class */
public interface AbstractC19834h extends AbstractC19841k {

    /* renamed from: g */
    public static final C19835a f66031g = C19835a.f66032a;

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.h$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/h$a.class */
    public static final class C19835a {

        /* renamed from: a */
        static final /* synthetic */ C19835a f66032a = new C19835a();

        /* renamed from: b */
        private static final Function1<C18966e, Boolean> f66033b = C19836a.f66034a;

        /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.h$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/h$a$a.class */
        static final class C19836a extends AbstractC18526r implements Function1<C18966e, Boolean> {

            /* renamed from: a */
            public static final C19836a f66034a = new C19836a();

            C19836a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Boolean invoke(C18966e c18966e) {
                C18966e it2 = c18966e;
                C18524p.m3840d(it2, "it");
                return Boolean.TRUE;
            }
        }

        private C19835a() {
        }

        /* renamed from: a */
        public static Function1<C18966e, Boolean> m1414a() {
            return f66033b;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.h$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/h$b.class */
    public static final class C19837b {
        /* renamed from: a */
        public static void m1413a(AbstractC19834h abstractC19834h, C18966e name, AbstractC18695b location) {
            AbstractC19834h abstractC19834h2 = abstractC19834h;
            C18524p.m3840d(abstractC19834h2, "this");
            C18524p.m3840d(name, "name");
            C18524p.m3840d(location, "location");
            abstractC19834h2.getContributedFunctions(name, location);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.h$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/h$c.class */
    public static final class C19838c extends AbstractC19839i {

        /* renamed from: a */
        public static final C19838c f66035a = new C19838c();

        private C19838c() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
        public final Set<C18966e> getClassifierNames() {
            return C18240ab.f63351a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
        public final Set<C18966e> getFunctionNames() {
            return C18240ab.f63351a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
        public final Set<C18966e> getVariableNames() {
            return C18240ab.f63351a;
        }
    }

    Set<C18966e> getClassifierNames();

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    Collection<? extends AbstractC19025as> getContributedFunctions(C18966e c18966e, AbstractC18695b abstractC18695b);

    Collection<? extends AbstractC19017an> getContributedVariables(C18966e c18966e, AbstractC18695b abstractC18695b);

    Set<C18966e> getFunctionNames();

    Set<C18966e> getVariableNames();
}
