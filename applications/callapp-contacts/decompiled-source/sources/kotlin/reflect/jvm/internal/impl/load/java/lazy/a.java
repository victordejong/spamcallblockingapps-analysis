package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.Lazy;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.l;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.load.java.d.y;
import kotlin.reflect.jvm.internal.impl.load.java.s;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/a.class */
public final class a {

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/a$a.class */
    public static final class C0684a extends r implements Function0<s> {

        /* renamed from: a */
        final /* synthetic */ g f37778a;

        /* renamed from: b */
        final /* synthetic */ f f37779b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0684a(g gVar, f fVar) {
            super(0);
            this.f37778a = gVar;
            this.f37779b = fVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ s invoke() {
            return a.a(this.f37778a, this.f37779b.getAnnotations());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/a$b.class */
    public static final class b extends r implements Function0<s> {

        /* renamed from: a */
        final /* synthetic */ g f37780a;

        /* renamed from: b */
        final /* synthetic */ g f37781b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(g gVar, g gVar2) {
            super(0);
            this.f37780a = gVar;
            this.f37781b = gVar2;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ s invoke() {
            return a.a(this.f37780a, this.f37781b);
        }
    }

    public static /* synthetic */ g a(g gVar, f containingDeclaration, y yVar, int i) {
        if ((i & 2) != 0) {
            yVar = null;
        }
        p.d(gVar, "<this>");
        p.d(containingDeclaration, "containingDeclaration");
        return a(gVar, containingDeclaration, yVar, 0, h.a(l.NONE, new C0684a(gVar, containingDeclaration)));
    }

    public static final g a(g gVar, k containingDeclaration, y typeParameterOwner, int i) {
        p.d(gVar, "<this>");
        p.d(containingDeclaration, "containingDeclaration");
        p.d(typeParameterOwner, "typeParameterOwner");
        return a(gVar, containingDeclaration, typeParameterOwner, i, gVar.f37884c);
    }

    private static final g a(g gVar, k kVar, y yVar, int i, Lazy<s> lazy) {
        kotlin.reflect.jvm.internal.impl.load.java.lazy.b bVar = gVar.f37882a;
        h hVar = yVar == null ? null : new h(gVar, kVar, yVar, i);
        return new g(bVar, hVar == null ? gVar.f37883b : hVar, lazy);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x019b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0035 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.reflect.jvm.internal.impl.load.java.s a(kotlin.reflect.jvm.internal.impl.load.java.lazy.g r8, kotlin.reflect.jvm.internal.impl.descriptors.a.g r9) {
        /*
            Method dump skipped, instructions count: 601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.a.a(kotlin.reflect.jvm.internal.impl.load.java.lazy.g, kotlin.reflect.jvm.internal.impl.descriptors.a.g):kotlin.reflect.jvm.internal.impl.load.java.s");
    }

    public static final g b(g gVar, g additionalAnnotations) {
        p.d(gVar, "<this>");
        p.d(additionalAnnotations, "additionalAnnotations");
        return additionalAnnotations.a() ? gVar : new g(gVar.f37882a, gVar.f37883b, h.a(l.NONE, new b(gVar, additionalAnnotations)));
    }
}
