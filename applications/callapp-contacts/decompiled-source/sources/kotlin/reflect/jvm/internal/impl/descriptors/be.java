package kotlin.reflect.jvm.internal.impl.descriptors;

import com.callapp.contacts.recorder.service.RecordService;
import java.util.Map;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be.class */
public final class be {

    /* renamed from: b  reason: collision with root package name */
    private static final Map<bf, Integer> f37413b;

    /* renamed from: a  reason: collision with root package name */
    public static final be f37412a = new be();

    /* renamed from: c  reason: collision with root package name */
    private static final h f37414c = h.f37422a;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$a.class */
    public static final class a extends bf {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37415a = new a();

        private a() {
            super("inherited", false);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$b.class */
    public static final class b extends bf {

        /* renamed from: a  reason: collision with root package name */
        public static final b f37416a = new b();

        private b() {
            super("internal", false);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$c.class */
    public static final class c extends bf {

        /* renamed from: a  reason: collision with root package name */
        public static final c f37417a = new c();

        private c() {
            super("invisible_fake", false);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$d.class */
    public static final class d extends bf {

        /* renamed from: a  reason: collision with root package name */
        public static final d f37418a = new d();

        private d() {
            super("local", false);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$e.class */
    public static final class e extends bf {

        /* renamed from: a  reason: collision with root package name */
        public static final e f37419a = new e();

        private e() {
            super(RecordService.PRIVATE_NUMBER_STRING, false);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$f.class */
    public static final class f extends bf {

        /* renamed from: a  reason: collision with root package name */
        public static final f f37420a = new f();

        private f() {
            super("private_to_this", false);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.bf
        public final String a() {
            return "private/*private to this*/";
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$g.class */
    public static final class g extends bf {

        /* renamed from: a  reason: collision with root package name */
        public static final g f37421a = new g();

        private g() {
            super("protected", true);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$h.class */
    public static final class h extends bf {

        /* renamed from: a  reason: collision with root package name */
        public static final h f37422a = new h();

        private h() {
            super("public", true);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$i.class */
    public static final class i extends bf {

        /* renamed from: a  reason: collision with root package name */
        public static final i f37423a = new i();

        private i() {
            super("unknown", false);
        }
    }

    static {
        kotlin.a.a.c builder = new kotlin.a.a.c();
        builder.put(f.f37420a, 0);
        builder.put(e.f37419a, 0);
        builder.put(b.f37416a, 1);
        builder.put(g.f37421a, 1);
        builder.put(h.f37422a, 2);
        p.d(builder, "builder");
        kotlin.a.a.c cVar = builder;
        cVar.a();
        cVar.f36554a = true;
        f37413b = cVar;
    }

    private be() {
    }

    public static Integer a(bf first, bf second) {
        p.d(first, "first");
        p.d(second, "second");
        if (first == second) {
            return 0;
        }
        Map<bf, Integer> map = f37413b;
        Integer num = map.get(first);
        Integer num2 = map.get(second);
        if (num == null || num2 == null || p.a(num, num2)) {
            return null;
        }
        return Integer.valueOf(num.intValue() - num2.intValue());
    }

    public static boolean a(bf visibility) {
        p.d(visibility, "visibility");
        return visibility == e.f37419a || visibility == f.f37420a;
    }
}
