package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/q.class */
public abstract class q implements d {
    public static final a Companion = new a(null);

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/q$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static h a(d dVar, TypeSubstitution typeSubstitution, KotlinTypeRefiner kotlinTypeRefiner) {
            p.d(dVar, "<this>");
            p.d(typeSubstitution, "typeSubstitution");
            p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
            q qVar = dVar instanceof q ? (q) dVar : null;
            if (qVar != null) {
                return qVar.getMemberScope(typeSubstitution, kotlinTypeRefiner);
            }
            h memberScope = dVar.getMemberScope(typeSubstitution);
            p.b(memberScope, "this.getMemberScope(\n                typeSubstitution\n            )");
            return memberScope;
        }

        public static h a(d dVar, KotlinTypeRefiner kotlinTypeRefiner) {
            p.d(dVar, "<this>");
            p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
            q qVar = dVar instanceof q ? (q) dVar : null;
            if (qVar != null) {
                return qVar.getUnsubstitutedMemberScope(kotlinTypeRefiner);
            }
            h unsubstitutedMemberScope = dVar.getUnsubstitutedMemberScope();
            p.b(unsubstitutedMemberScope, "this.unsubstitutedMemberScope");
            return unsubstitutedMemberScope;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract h getMemberScope(TypeSubstitution typeSubstitution, KotlinTypeRefiner kotlinTypeRefiner);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner);
}
