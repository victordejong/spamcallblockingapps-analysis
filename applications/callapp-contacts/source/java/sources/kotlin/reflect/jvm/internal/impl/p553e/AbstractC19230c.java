package kotlin.reflect.jvm.internal.impl.p553e;

import kotlin.C20128v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18240ab;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.EnumC18980e;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19226b;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
/* renamed from: kotlin.reflect.jvm.internal.impl.e.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c.class */
public abstract class AbstractC19230c {

    /* renamed from: a */
    public static final C19231a f65024a = new C19231a(null);

    /* renamed from: b */
    public static final AbstractC19230c f65025b = C19231a.m2490a(C19235d.f65038a);

    /* renamed from: c */
    public static final AbstractC19230c f65026c = C19231a.m2490a(C19233b.f65036a);

    /* renamed from: d */
    public static final AbstractC19230c f65027d = C19231a.m2490a(C19234c.f65037a);

    /* renamed from: e */
    public static final AbstractC19230c f65028e = C19231a.m2490a(C19236e.f65039a);

    /* renamed from: f */
    public static final AbstractC19230c f65029f = C19231a.m2490a(C19241j.f65044a);

    /* renamed from: g */
    public static final AbstractC19230c f65030g = C19231a.m2490a(C19238g.f65041a);

    /* renamed from: h */
    public static final AbstractC19230c f65031h = C19231a.m2490a(C19239h.f65042a);

    /* renamed from: i */
    public static final AbstractC19230c f65032i = C19231a.m2490a(C19242k.f65045a);

    /* renamed from: j */
    public static final AbstractC19230c f65033j = C19231a.m2490a(C19237f.f65040a);

    /* renamed from: k */
    public static final AbstractC19230c f65034k = C19231a.m2490a(C19240i.f65043a);

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$a.class */
    public static final class C19231a {

        /* renamed from: kotlin.reflect.jvm.internal.impl.e.c$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$a$a.class */
        public final /* synthetic */ class C19232a {

            /* renamed from: a */
            public static final /* synthetic */ int[] f65035a;

            static {
                int[] iArr = new int[EnumC19127e.values().length];
                iArr[EnumC19127e.CLASS.ordinal()] = 1;
                iArr[EnumC19127e.INTERFACE.ordinal()] = 2;
                iArr[EnumC19127e.ENUM_CLASS.ordinal()] = 3;
                iArr[EnumC19127e.OBJECT.ordinal()] = 4;
                iArr[EnumC19127e.ANNOTATION_CLASS.ordinal()] = 5;
                iArr[EnumC19127e.ENUM_ENTRY.ordinal()] = 6;
                f65035a = iArr;
            }
        }

        private C19231a() {
        }

        public /* synthetic */ C19231a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static AbstractC19230c m2490a(Function1<? super AbstractC19257f, C20128v> changeOptions) {
            C18524p.m3840d(changeOptions, "changeOptions");
            C19258g c19258g = new C19258g();
            changeOptions.invoke(c19258g);
            c19258g.m2360e();
            return new C19245d(c19258g);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.c$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$b.class */
    static final class C19233b extends AbstractC18526r implements Function1<AbstractC19257f, C20128v> {

        /* renamed from: a */
        public static final C19233b f65036a = new C19233b();

        C19233b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(AbstractC19257f abstractC19257f) {
            AbstractC19257f abstractC19257f2 = abstractC19257f;
            C18524p.m3840d(abstractC19257f2, "<this>");
            abstractC19257f2.mo2357f(false);
            abstractC19257f2.mo2366b(C18240ab.f63351a);
            return C20128v.f66529a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.c$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$c.class */
    static final class C19234c extends AbstractC18526r implements Function1<AbstractC19257f, C20128v> {

        /* renamed from: a */
        public static final C19234c f65037a = new C19234c();

        C19234c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(AbstractC19257f abstractC19257f) {
            AbstractC19257f abstractC19257f2 = abstractC19257f;
            C18524p.m3840d(abstractC19257f2, "<this>");
            abstractC19257f2.mo2357f(false);
            abstractC19257f2.mo2366b(C18240ab.f63351a);
            abstractC19257f2.mo2356g(true);
            return C20128v.f66529a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.c$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$d.class */
    static final class C19235d extends AbstractC18526r implements Function1<AbstractC19257f, C20128v> {

        /* renamed from: a */
        public static final C19235d f65038a = new C19235d();

        C19235d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(AbstractC19257f abstractC19257f) {
            AbstractC19257f abstractC19257f2 = abstractC19257f;
            C18524p.m3840d(abstractC19257f2, "<this>");
            abstractC19257f2.mo2357f(false);
            return C20128v.f66529a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.c$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$e.class */
    static final class C19236e extends AbstractC18526r implements Function1<AbstractC19257f, C20128v> {

        /* renamed from: a */
        public static final C19236e f65039a = new C19236e();

        C19236e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(AbstractC19257f abstractC19257f) {
            AbstractC19257f abstractC19257f2 = abstractC19257f;
            C18524p.m3840d(abstractC19257f2, "<this>");
            abstractC19257f2.mo2366b(C18240ab.f63351a);
            abstractC19257f2.mo2371a(AbstractC19226b.C19228b.f65022a);
            abstractC19257f2.mo2370a(EnumC19265k.ONLY_NON_SYNTHESIZED);
            return C20128v.f66529a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.c$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$f.class */
    static final class C19237f extends AbstractC18526r implements Function1<AbstractC19257f, C20128v> {

        /* renamed from: a */
        public static final C19237f f65040a = new C19237f();

        C19237f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(AbstractC19257f abstractC19257f) {
            AbstractC19257f abstractC19257f2 = abstractC19257f;
            C18524p.m3840d(abstractC19257f2, "<this>");
            abstractC19257f2.mo2368a(true);
            abstractC19257f2.mo2371a(AbstractC19226b.C19227a.f65021a);
            abstractC19257f2.mo2366b(EnumC19255e.ALL);
            return C20128v.f66529a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.c$g */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$g.class */
    static final class C19238g extends AbstractC18526r implements Function1<AbstractC19257f, C20128v> {

        /* renamed from: a */
        public static final C19238g f65041a = new C19238g();

        C19238g() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(AbstractC19257f abstractC19257f) {
            AbstractC19257f abstractC19257f2 = abstractC19257f;
            C18524p.m3840d(abstractC19257f2, "<this>");
            abstractC19257f2.mo2366b(EnumC19255e.ALL_EXCEPT_ANNOTATIONS);
            return C20128v.f66529a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.c$h */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$h.class */
    static final class C19239h extends AbstractC18526r implements Function1<AbstractC19257f, C20128v> {

        /* renamed from: a */
        public static final C19239h f65042a = new C19239h();

        C19239h() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(AbstractC19257f abstractC19257f) {
            AbstractC19257f abstractC19257f2 = abstractC19257f;
            C18524p.m3840d(abstractC19257f2, "<this>");
            abstractC19257f2.mo2366b(EnumC19255e.ALL);
            return C20128v.f66529a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.c$i */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$i.class */
    static final class C19240i extends AbstractC18526r implements Function1<AbstractC19257f, C20128v> {

        /* renamed from: a */
        public static final C19240i f65043a = new C19240i();

        C19240i() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(AbstractC19257f abstractC19257f) {
            AbstractC19257f abstractC19257f2 = abstractC19257f;
            C18524p.m3840d(abstractC19257f2, "<this>");
            abstractC19257f2.mo2369a(EnumC19267m.HTML);
            abstractC19257f2.mo2366b(EnumC19255e.ALL);
            return C20128v.f66529a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.c$j */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$j.class */
    static final class C19241j extends AbstractC18526r implements Function1<AbstractC19257f, C20128v> {

        /* renamed from: a */
        public static final C19241j f65044a = new C19241j();

        C19241j() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(AbstractC19257f abstractC19257f) {
            AbstractC19257f abstractC19257f2 = abstractC19257f;
            C18524p.m3840d(abstractC19257f2, "<this>");
            abstractC19257f2.mo2357f(false);
            abstractC19257f2.mo2366b(C18240ab.f63351a);
            abstractC19257f2.mo2371a(AbstractC19226b.C19228b.f65022a);
            abstractC19257f2.mo2355h(true);
            abstractC19257f2.mo2370a(EnumC19265k.NONE);
            abstractC19257f2.mo2365b(true);
            abstractC19257f2.mo2363c(true);
            abstractC19257f2.mo2356g(true);
            abstractC19257f2.mo2361d(true);
            return C20128v.f66529a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.c$k */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$k.class */
    static final class C19242k extends AbstractC18526r implements Function1<AbstractC19257f, C20128v> {

        /* renamed from: a */
        public static final C19242k f65045a = new C19242k();

        C19242k() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(AbstractC19257f abstractC19257f) {
            AbstractC19257f abstractC19257f2 = abstractC19257f;
            C18524p.m3840d(abstractC19257f2, "<this>");
            abstractC19257f2.mo2371a(AbstractC19226b.C19228b.f65022a);
            abstractC19257f2.mo2370a(EnumC19265k.ONLY_NON_SYNTHESIZED);
            return C20128v.f66529a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.c$l */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$l.class */
    public interface AbstractC19243l {

        /* renamed from: kotlin.reflect.jvm.internal.impl.e.c$l$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$l$a.class */
        public static final class C19244a implements AbstractC19243l {

            /* renamed from: a */
            public static final C19244a f65046a = new C19244a();

            private C19244a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c.AbstractC19243l
            /* renamed from: a */
            public final void mo2489a(StringBuilder builder) {
                C18524p.m3840d(builder, "builder");
                builder.append("(");
            }

            @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c.AbstractC19243l
            /* renamed from: a */
            public final void mo2488a(AbstractC19050ba parameter, int i, int i2, StringBuilder builder) {
                C18524p.m3840d(parameter, "parameter");
                C18524p.m3840d(builder, "builder");
                if (i != i2 - 1) {
                    builder.append(", ");
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c.AbstractC19243l
            /* renamed from: a */
            public final void mo2487a(AbstractC19050ba parameter, StringBuilder builder) {
                C18524p.m3840d(parameter, "parameter");
                C18524p.m3840d(builder, "builder");
            }

            @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c.AbstractC19243l
            /* renamed from: b */
            public final void mo2486b(StringBuilder builder) {
                C18524p.m3840d(builder, "builder");
                builder.append(")");
            }
        }

        /* renamed from: a */
        void mo2489a(StringBuilder sb);

        /* renamed from: a */
        void mo2488a(AbstractC19050ba abstractC19050ba, int i, int i2, StringBuilder sb);

        /* renamed from: a */
        void mo2487a(AbstractC19050ba abstractC19050ba, StringBuilder sb);

        /* renamed from: b */
        void mo2486b(StringBuilder sb);
    }

    /* renamed from: a */
    public abstract String mo2476a(String str, String str2, AbstractC18940g abstractC18940g);

    /* renamed from: a */
    public abstract String mo2461a(C18962c c18962c);

    /* renamed from: a */
    public abstract String mo2460a(C18966e c18966e, boolean z);

    /* renamed from: a */
    public abstract String mo2457a(AbstractC18977c abstractC18977c, EnumC18980e enumC18980e);

    /* renamed from: a */
    public abstract String mo2447a(AbstractC19193k abstractC19193k);

    /* renamed from: a */
    public abstract String mo2425a(KotlinType kotlinType);

    /* renamed from: a */
    public abstract String mo2423a(TypeProjection typeProjection);
}
