package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.C18399h;
import kotlin.EnumC18536l;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19128f;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.load.java.C19520s;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19416y;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/a.class */
public final class C19429a {

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/a$a.class */
    public static final class C19430a extends AbstractC18526r implements Function0<C19520s> {

        /* renamed from: a */
        final /* synthetic */ C19501g f65314a;

        /* renamed from: b */
        final /* synthetic */ AbstractC19128f f65315b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19430a(C19501g c19501g, AbstractC19128f abstractC19128f) {
            super(0);
            this.f65314a = c19501g;
            this.f65315b = abstractC19128f;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C19520s invoke() {
            return C19429a.m2160a(this.f65314a, this.f65315b.getAnnotations());
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.a$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/a$b.class */
    public static final class C19431b extends AbstractC18526r implements Function0<C19520s> {

        /* renamed from: a */
        final /* synthetic */ C19501g f65316a;

        /* renamed from: b */
        final /* synthetic */ AbstractC18983g f65317b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19431b(C19501g c19501g, AbstractC18983g abstractC18983g) {
            super(0);
            this.f65316a = c19501g;
            this.f65317b = abstractC18983g;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C19520s invoke() {
            return C19429a.m2160a(this.f65316a, this.f65317b);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ C19501g m2159a(C19501g c19501g, AbstractC19128f containingDeclaration, AbstractC19416y abstractC19416y, int i) {
        if ((i & 2) != 0) {
            abstractC19416y = null;
        }
        C18524p.m3840d(c19501g, "<this>");
        C18524p.m3840d(containingDeclaration, "containingDeclaration");
        return m2157a(c19501g, containingDeclaration, abstractC19416y, 0, C18399h.m3896a(EnumC18536l.NONE, new C19430a(c19501g, containingDeclaration)));
    }

    /* renamed from: a */
    public static final C19501g m2158a(C19501g c19501g, AbstractC19193k containingDeclaration, AbstractC19416y typeParameterOwner, int i) {
        C18524p.m3840d(c19501g, "<this>");
        C18524p.m3840d(containingDeclaration, "containingDeclaration");
        C18524p.m3840d(typeParameterOwner, "typeParameterOwner");
        return m2157a(c19501g, containingDeclaration, typeParameterOwner, i, c19501g.f65482c);
    }

    /* renamed from: a */
    private static final C19501g m2157a(C19501g c19501g, AbstractC19193k abstractC19193k, AbstractC19416y abstractC19416y, int i, Lazy<C19520s> lazy) {
        C19432b c19432b = c19501g.f65480a;
        C19502h c19502h = abstractC19416y == null ? null : new C19502h(c19501g, abstractC19193k, abstractC19416y, i);
        return new C19501g(c19432b, c19502h == null ? c19501g.f65481b : c19502h, lazy);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x019b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0035 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.reflect.jvm.internal.impl.load.java.C19520s m2160a(kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g r8, kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g r9) {
        /*
            Method dump skipped, instructions count: 601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.C19429a.m2160a(kotlin.reflect.jvm.internal.impl.load.java.lazy.g, kotlin.reflect.jvm.internal.impl.descriptors.a.g):kotlin.reflect.jvm.internal.impl.load.java.s");
    }

    /* renamed from: b */
    public static final C19501g m2156b(C19501g c19501g, AbstractC18983g additionalAnnotations) {
        C18524p.m3840d(c19501g, "<this>");
        C18524p.m3840d(additionalAnnotations, "additionalAnnotations");
        return additionalAnnotations.mo1275a() ? c19501g : new C19501g(c19501g.f65480a, c19501g.f65481b, C18399h.m3896a(EnumC18536l.NONE, new C19431b(c19501g, additionalAnnotations)));
    }
}
