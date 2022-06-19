package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.q */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/q.class */
public abstract class AbstractC19179q implements AbstractC19070d {
    public static final C19180a Companion = new C19180a(null);

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.q$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/q$a.class */
    public static final class C19180a {
        private C19180a() {
        }

        public /* synthetic */ C19180a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static AbstractC19834h m2564a(AbstractC19070d abstractC19070d, TypeSubstitution typeSubstitution, KotlinTypeRefiner kotlinTypeRefiner) {
            C18524p.m3840d(abstractC19070d, "<this>");
            C18524p.m3840d(typeSubstitution, "typeSubstitution");
            C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
            AbstractC19179q abstractC19179q = abstractC19070d instanceof AbstractC19179q ? (AbstractC19179q) abstractC19070d : null;
            if (abstractC19179q == null) {
                AbstractC19834h memberScope = abstractC19070d.getMemberScope(typeSubstitution);
                C18524p.m3843b(memberScope, "this.getMemberScope(\n                typeSubstitution\n            )");
                return memberScope;
            }
            return abstractC19179q.getMemberScope(typeSubstitution, kotlinTypeRefiner);
        }

        /* renamed from: a */
        public static AbstractC19834h m2563a(AbstractC19070d abstractC19070d, KotlinTypeRefiner kotlinTypeRefiner) {
            C18524p.m3840d(abstractC19070d, "<this>");
            C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
            AbstractC19179q abstractC19179q = abstractC19070d instanceof AbstractC19179q ? (AbstractC19179q) abstractC19070d : null;
            if (abstractC19179q == null) {
                AbstractC19834h unsubstitutedMemberScope = abstractC19070d.getUnsubstitutedMemberScope();
                C18524p.m3843b(unsubstitutedMemberScope, "this.unsubstitutedMemberScope");
                return unsubstitutedMemberScope;
            }
            return abstractC19179q.getUnsubstitutedMemberScope(kotlinTypeRefiner);
        }
    }

    public abstract AbstractC19834h getMemberScope(TypeSubstitution typeSubstitution, KotlinTypeRefiner kotlinTypeRefiner);

    public abstract AbstractC19834h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner);
}
