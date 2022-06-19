package kotlin.reflect.jvm.internal;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.AbstractC20079u;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18859h;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.C19933j;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.p535a.AbstractC18586e;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\u001a \u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0002\u001a\f\u0010\t\u001a\u00020\b*\u00020\nH\u0002\"\"\u0010��\u001a\u0004\u0018\u00010\u0001*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u000b"}, m4298d2 = {"boundReceiver", "", "Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;", "getBoundReceiver", "(Lkotlin/reflect/jvm/internal/KPropertyImpl$Accessor;)Ljava/lang/Object;", "computeCallerForAccessor", "Lkotlin/reflect/jvm/internal/calls/Caller;", "isGetter", "", "isJvmFieldPropertyInCompanionObject", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "kotlin-reflection"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.v */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/v.class */
public final class C20090v {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"isJvmStaticProperty", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.v$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/v$a.class */
    public static final class C20091a extends AbstractC18526r implements Function0<Boolean> {

        /* renamed from: a */
        final /* synthetic */ AbstractC20079u.AbstractC20080a f66481a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20091a(AbstractC20079u.AbstractC20080a abstractC20080a) {
            super(0);
            this.f66481a = abstractC20080a;
        }

        /* renamed from: a */
        public final boolean m1129a() {
            return this.f66481a.mo1142a().mo1137b().getAnnotations().mo1338b(C18635aj.m3768a());
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Boolean invoke() {
            return Boolean.valueOf(m1129a());
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"isNotNullProperty", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.v$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/v$b.class */
    public static final class C20092b extends AbstractC18526r implements Function0<Boolean> {

        /* renamed from: a */
        final /* synthetic */ AbstractC20079u.AbstractC20080a f66482a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20092b(AbstractC20079u.AbstractC20080a abstractC20080a) {
            super(0);
            this.f66482a = abstractC20080a;
        }

        /* renamed from: a */
        public final boolean m1128a() {
            return !TypeUtils.isNullableType(this.f66482a.mo1142a().mo1137b().mo2593g());
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Boolean invoke() {
            return Boolean.valueOf(m1128a());
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"computeFieldCaller", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Field;", "field", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.v$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/v$c.class */
    public static final class C20093c extends AbstractC18526r implements Function1<Field, AbstractC18586e<? extends Field>> {

        /* renamed from: a */
        final /* synthetic */ AbstractC20079u.AbstractC20080a f66483a;

        /* renamed from: b */
        final /* synthetic */ boolean f66484b;

        /* renamed from: c */
        final /* synthetic */ C20092b f66485c;

        /* renamed from: d */
        final /* synthetic */ C20091a f66486d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20093c(AbstractC20079u.AbstractC20080a abstractC20080a, boolean z, C20092b c20092b, C20091a c20091a) {
            super(1);
            this.f66483a = abstractC20080a;
            this.f66484b = z;
            this.f66485c = c20092b;
            this.f66486d = c20091a;
        }

        /* renamed from: a */
        public final AbstractC18586e<Field> invoke(Field field) {
            C18524p.m3840d(field, "field");
            if (C20090v.m1132a(this.f66483a.mo1142a().mo1137b()) || !Modifier.isStatic(field.getModifiers())) {
                if (this.f66484b) {
                    return this.f66483a.mo1142a().mo1139f() ? new AbstractC18586e.AbstractC18592f.C18593a(field, C20090v.m1131a(this.f66483a)) : new AbstractC18586e.AbstractC18592f.C18595c(field);
                }
                return this.f66483a.mo1142a().mo1139f() ? new AbstractC18586e.AbstractC18598g.C18599a(field, this.f66485c.m1128a(), C20090v.m1131a(this.f66483a)) : new AbstractC18586e.AbstractC18598g.C18601c(field, this.f66485c.m1128a());
            } else if (!this.f66486d.m1129a()) {
                return this.f66484b ? new AbstractC18586e.AbstractC18592f.C18597e(field) : new AbstractC18586e.AbstractC18598g.C18603e(field, this.f66485c.m1128a());
            } else if (this.f66484b) {
                return this.f66483a.mo1142a().mo1139f() ? new AbstractC18586e.AbstractC18592f.C18594b(field) : new AbstractC18586e.AbstractC18592f.C18596d(field);
            } else {
                return this.f66483a.mo1142a().mo1139f() ? new AbstractC18586e.AbstractC18598g.C18600b(field, this.f66485c.m1128a()) : new AbstractC18586e.AbstractC18598g.C18602d(field, this.f66485c.m1128a());
            }
        }
    }

    /* renamed from: a */
    public static final Object m1131a(AbstractC20079u.AbstractC20080a<?, ?> boundReceiver) {
        C18524p.m3840d(boundReceiver, "$this$boundReceiver");
        return boundReceiver.mo1142a().m1146i();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0195  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.reflect.jvm.internal.p535a.AbstractC18584d<?> m1130a(kotlin.reflect.jvm.internal.AbstractC20079u.AbstractC20080a<?, ?> r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 967
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.C20090v.m1130a(kotlin.reflect.jvm.internal.u$a, boolean):kotlin.reflect.jvm.internal.a.d");
    }

    /* renamed from: a */
    public static final /* synthetic */ boolean m1132a(AbstractC19017an abstractC19017an) {
        AbstractC19193k containingDeclaration = abstractC19017an.getContainingDeclaration();
        C18524p.m3843b(containingDeclaration, "containingDeclaration");
        if (!C19807d.m1459g(containingDeclaration)) {
            return false;
        }
        AbstractC19193k containingDeclaration2 = containingDeclaration.getContainingDeclaration();
        if (!C19807d.m1454l(containingDeclaration2) && !C19807d.m1455k(containingDeclaration2)) {
            return true;
        }
        return (abstractC19017an instanceof C19933j) && C18859h.m2920a(((C19933j) abstractC19017an).f66208g);
    }
}
