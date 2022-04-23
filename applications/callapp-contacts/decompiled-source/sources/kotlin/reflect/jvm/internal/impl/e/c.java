package kotlin.reflect.jvm.internal.impl.e;

import kotlin.a.ab;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.e.b;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c.class */
public abstract class c {

    /* renamed from: a */
    public static final a f37599a = new a(null);

    /* renamed from: b */
    public static final c f37600b = a.a(d.f37606a);

    /* renamed from: c */
    public static final c f37601c = a.a(b.f37604a);

    /* renamed from: d */
    public static final c f37602d = a.a(C0677c.f37605a);
    public static final c e = a.a(e.f37607a);
    public static final c f = a.a(j.f37612a);
    public static final c g = a.a(g.f37609a);
    public static final c h = a.a(h.f37610a);
    public static final c i = a.a(k.f37613a);
    public static final c j = a.a(f.f37608a);
    public static final c k = a.a(i.f37611a);

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$a.class */
    public static final class a {

        /* renamed from: kotlin.reflect.jvm.internal.impl.e.c$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$a$a.class */
        public final /* synthetic */ class C0676a {

            /* renamed from: a */
            public static final /* synthetic */ int[] f37603a;

            static {
                int[] iArr = new int[kotlin.reflect.jvm.internal.impl.descriptors.e.values().length];
                iArr[kotlin.reflect.jvm.internal.impl.descriptors.e.CLASS.ordinal()] = 1;
                iArr[kotlin.reflect.jvm.internal.impl.descriptors.e.INTERFACE.ordinal()] = 2;
                iArr[kotlin.reflect.jvm.internal.impl.descriptors.e.ENUM_CLASS.ordinal()] = 3;
                iArr[kotlin.reflect.jvm.internal.impl.descriptors.e.OBJECT.ordinal()] = 4;
                iArr[kotlin.reflect.jvm.internal.impl.descriptors.e.ANNOTATION_CLASS.ordinal()] = 5;
                iArr[kotlin.reflect.jvm.internal.impl.descriptors.e.ENUM_ENTRY.ordinal()] = 6;
                f37603a = iArr;
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static c a(Function1<? super kotlin.reflect.jvm.internal.impl.e.f, v> changeOptions) {
            p.d(changeOptions, "changeOptions");
            kotlin.reflect.jvm.internal.impl.e.g gVar = new kotlin.reflect.jvm.internal.impl.e.g();
            changeOptions.invoke(gVar);
            gVar.e();
            return new kotlin.reflect.jvm.internal.impl.e.d(gVar);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$b.class */
    static final class b extends r implements Function1<kotlin.reflect.jvm.internal.impl.e.f, v> {

        /* renamed from: a */
        public static final b f37604a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(kotlin.reflect.jvm.internal.impl.e.f fVar) {
            kotlin.reflect.jvm.internal.impl.e.f fVar2 = fVar;
            p.d(fVar2, "<this>");
            fVar2.f(false);
            fVar2.b(ab.f36567a);
            return v.f38654a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.c$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$c.class */
    static final class C0677c extends r implements Function1<kotlin.reflect.jvm.internal.impl.e.f, v> {

        /* renamed from: a */
        public static final C0677c f37605a = new C0677c();

        C0677c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(kotlin.reflect.jvm.internal.impl.e.f fVar) {
            kotlin.reflect.jvm.internal.impl.e.f fVar2 = fVar;
            p.d(fVar2, "<this>");
            fVar2.f(false);
            fVar2.b(ab.f36567a);
            fVar2.g(true);
            return v.f38654a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$d.class */
    static final class d extends r implements Function1<kotlin.reflect.jvm.internal.impl.e.f, v> {

        /* renamed from: a */
        public static final d f37606a = new d();

        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(kotlin.reflect.jvm.internal.impl.e.f fVar) {
            kotlin.reflect.jvm.internal.impl.e.f fVar2 = fVar;
            p.d(fVar2, "<this>");
            fVar2.f(false);
            return v.f38654a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$e.class */
    static final class e extends r implements Function1<kotlin.reflect.jvm.internal.impl.e.f, v> {

        /* renamed from: a */
        public static final e f37607a = new e();

        e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(kotlin.reflect.jvm.internal.impl.e.f fVar) {
            kotlin.reflect.jvm.internal.impl.e.f fVar2 = fVar;
            p.d(fVar2, "<this>");
            fVar2.b(ab.f36567a);
            fVar2.a(b.C0675b.f37597a);
            fVar2.a(kotlin.reflect.jvm.internal.impl.e.k.ONLY_NON_SYNTHESIZED);
            return v.f38654a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$f.class */
    static final class f extends r implements Function1<kotlin.reflect.jvm.internal.impl.e.f, v> {

        /* renamed from: a */
        public static final f f37608a = new f();

        f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(kotlin.reflect.jvm.internal.impl.e.f fVar) {
            kotlin.reflect.jvm.internal.impl.e.f fVar2 = fVar;
            p.d(fVar2, "<this>");
            fVar2.a(true);
            fVar2.a(b.a.f37596a);
            fVar2.b(kotlin.reflect.jvm.internal.impl.e.e.ALL);
            return v.f38654a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$g.class */
    static final class g extends r implements Function1<kotlin.reflect.jvm.internal.impl.e.f, v> {

        /* renamed from: a */
        public static final g f37609a = new g();

        g() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(kotlin.reflect.jvm.internal.impl.e.f fVar) {
            kotlin.reflect.jvm.internal.impl.e.f fVar2 = fVar;
            p.d(fVar2, "<this>");
            fVar2.b(kotlin.reflect.jvm.internal.impl.e.e.ALL_EXCEPT_ANNOTATIONS);
            return v.f38654a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$h.class */
    static final class h extends r implements Function1<kotlin.reflect.jvm.internal.impl.e.f, v> {

        /* renamed from: a */
        public static final h f37610a = new h();

        h() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(kotlin.reflect.jvm.internal.impl.e.f fVar) {
            kotlin.reflect.jvm.internal.impl.e.f fVar2 = fVar;
            p.d(fVar2, "<this>");
            fVar2.b(kotlin.reflect.jvm.internal.impl.e.e.ALL);
            return v.f38654a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$i.class */
    static final class i extends r implements Function1<kotlin.reflect.jvm.internal.impl.e.f, v> {

        /* renamed from: a */
        public static final i f37611a = new i();

        i() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(kotlin.reflect.jvm.internal.impl.e.f fVar) {
            kotlin.reflect.jvm.internal.impl.e.f fVar2 = fVar;
            p.d(fVar2, "<this>");
            fVar2.a(m.HTML);
            fVar2.b(kotlin.reflect.jvm.internal.impl.e.e.ALL);
            return v.f38654a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$j.class */
    static final class j extends r implements Function1<kotlin.reflect.jvm.internal.impl.e.f, v> {

        /* renamed from: a */
        public static final j f37612a = new j();

        j() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(kotlin.reflect.jvm.internal.impl.e.f fVar) {
            kotlin.reflect.jvm.internal.impl.e.f fVar2 = fVar;
            p.d(fVar2, "<this>");
            fVar2.f(false);
            fVar2.b(ab.f36567a);
            fVar2.a(b.C0675b.f37597a);
            fVar2.h(true);
            fVar2.a(kotlin.reflect.jvm.internal.impl.e.k.NONE);
            fVar2.b(true);
            fVar2.c(true);
            fVar2.g(true);
            fVar2.d(true);
            return v.f38654a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$k.class */
    static final class k extends r implements Function1<kotlin.reflect.jvm.internal.impl.e.f, v> {

        /* renamed from: a */
        public static final k f37613a = new k();

        k() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(kotlin.reflect.jvm.internal.impl.e.f fVar) {
            kotlin.reflect.jvm.internal.impl.e.f fVar2 = fVar;
            p.d(fVar2, "<this>");
            fVar2.a(b.C0675b.f37597a);
            fVar2.a(kotlin.reflect.jvm.internal.impl.e.k.ONLY_NON_SYNTHESIZED);
            return v.f38654a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$l.class */
    public interface l {

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/c$l$a.class */
        public static final class a implements l {

            /* renamed from: a */
            public static final a f37614a = new a();

            private a() {
            }

            @Override // kotlin.reflect.jvm.internal.impl.e.c.l
            public final void a(StringBuilder builder) {
                p.d(builder, "builder");
                builder.append("(");
            }

            @Override // kotlin.reflect.jvm.internal.impl.e.c.l
            public final void a(ba parameter, int i, int i2, StringBuilder builder) {
                p.d(parameter, "parameter");
                p.d(builder, "builder");
                if (i != i2 - 1) {
                    builder.append(", ");
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.e.c.l
            public final void a(ba parameter, StringBuilder builder) {
                p.d(parameter, "parameter");
                p.d(builder, "builder");
            }

            @Override // kotlin.reflect.jvm.internal.impl.e.c.l
            public final void b(StringBuilder builder) {
                p.d(builder, "builder");
                builder.append(")");
            }
        }

        void a(StringBuilder sb);

        void a(ba baVar, int i, int i2, StringBuilder sb);

        void a(ba baVar, StringBuilder sb);

        void b(StringBuilder sb);
    }

    public abstract String a(String str, String str2, kotlin.reflect.jvm.internal.impl.builtins.g gVar);

    public abstract String a(kotlin.reflect.jvm.internal.impl.c.c cVar);

    public abstract String a(kotlin.reflect.jvm.internal.impl.c.e eVar, boolean z);

    public abstract String a(kotlin.reflect.jvm.internal.impl.descriptors.a.c cVar, kotlin.reflect.jvm.internal.impl.descriptors.a.e eVar);

    public abstract String a(kotlin.reflect.jvm.internal.impl.descriptors.k kVar);

    public abstract String a(KotlinType kotlinType);

    public abstract String a(TypeProjection typeProjection);
}
