package kotlin.reflect.jvm.internal;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.a.e;
import kotlin.reflect.jvm.internal.impl.b.c.a.h;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.resolve.d;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.j;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.u;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\u001a \u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0002\u001a\f\u0010\t\u001a\u00020\b*\u00020\nH\u0002\"\"\u0010��\u001a\u0004\u0018\u00010\u0001*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u000b"}, d2 = {"boundReceiver", "", "Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;", "getBoundReceiver", "(Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;)Ljava/lang/Object;", "computeCallerForAccessor", "Lkotlin/reflect/jvm/internal/calls/Caller;", "isGetter", "", "isJvmFieldPropertyInCompanionObject", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "kotlin-reflection"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/v.class */
public final class v {

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"isJvmStaticProperty", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/v$a.class */
    public static final class a extends r implements Function0<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u.a f38608a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(u.a aVar) {
            super(0);
            this.f38608a = aVar;
        }

        public final boolean a() {
            return this.f38608a.a().b().getAnnotations().b(aj.a());
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Boolean invoke() {
            return Boolean.valueOf(a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"isNotNullProperty", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/v$b.class */
    public static final class b extends r implements Function0<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u.a f38609a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(u.a aVar) {
            super(0);
            this.f38609a = aVar;
        }

        public final boolean a() {
            return !TypeUtils.isNullableType(this.f38609a.a().b().g());
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Boolean invoke() {
            return Boolean.valueOf(a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0002\b\u0004"}, d2 = {"computeFieldCaller", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Field;", "field", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/v$c.class */
    public static final class c extends r implements Function1<Field, e<? extends Field>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ u.a f38610a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f38611b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b f38612c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ a f38613d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(u.a aVar, boolean z, b bVar, a aVar2) {
            super(1);
            this.f38610a = aVar;
            this.f38611b = z;
            this.f38612c = bVar;
            this.f38613d = aVar2;
        }

        /* renamed from: a */
        public final e<Field> invoke(Field field) {
            p.d(field, "field");
            if (v.a(this.f38610a.a().b()) || !Modifier.isStatic(field.getModifiers())) {
                if (this.f38611b) {
                    return this.f38610a.a().f() ? new e.f.a(field, v.a(this.f38610a)) : new e.f.c(field);
                }
                return this.f38610a.a().f() ? new e.g.a(field, this.f38612c.a(), v.a(this.f38610a)) : new e.g.c(field, this.f38612c.a());
            } else if (!this.f38613d.a()) {
                return this.f38611b ? new e.f.C0617e(field) : new e.g.C0618e(field, this.f38612c.a());
            } else {
                if (this.f38611b) {
                    return this.f38610a.a().f() ? new e.f.b(field) : new e.f.d(field);
                }
                return this.f38610a.a().f() ? new e.g.b(field, this.f38612c.a()) : new e.g.d(field, this.f38612c.a());
            }
        }
    }

    public static final Object a(u.a<?, ?> boundReceiver) {
        p.d(boundReceiver, "$this$boundReceiver");
        return boundReceiver.a().i();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0195  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.reflect.jvm.internal.a.d<?> a(kotlin.reflect.jvm.internal.u.a<?, ?> r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 967
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.v.a(kotlin.reflect.jvm.internal.u$a, boolean):kotlin.reflect.jvm.internal.a.d");
    }

    public static final /* synthetic */ boolean a(an anVar) {
        k containingDeclaration = anVar.getContainingDeclaration();
        p.b(containingDeclaration, "containingDeclaration");
        if (!d.g(containingDeclaration)) {
            return false;
        }
        k containingDeclaration2 = containingDeclaration.getContainingDeclaration();
        if (d.l(containingDeclaration2) || d.k(containingDeclaration2)) {
            return (anVar instanceof j) && h.a(((j) anVar).g);
        }
        return true;
    }
}
