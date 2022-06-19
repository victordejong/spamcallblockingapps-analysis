package kotlin.reflect.jvm.internal.impl.descriptors;

import com.callapp.contacts.recorder.service.RecordService;
import java.util.Map;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.p519a.C18229c;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.be */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be.class */
public final class C19054be {

    /* renamed from: b */
    private static final Map<AbstractC19064bf, Integer> f64771b;

    /* renamed from: a */
    public static final C19054be f64770a = new C19054be();

    /* renamed from: c */
    private static final C19062h f64772c = C19062h.f64780a;

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.be$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$a.class */
    public static final class C19055a extends AbstractC19064bf {

        /* renamed from: a */
        public static final C19055a f64773a = new C19055a();

        private C19055a() {
            super("inherited", false);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.be$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$b.class */
    public static final class C19056b extends AbstractC19064bf {

        /* renamed from: a */
        public static final C19056b f64774a = new C19056b();

        private C19056b() {
            super("internal", false);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.be$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$c.class */
    public static final class C19057c extends AbstractC19064bf {

        /* renamed from: a */
        public static final C19057c f64775a = new C19057c();

        private C19057c() {
            super("invisible_fake", false);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.be$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$d.class */
    public static final class C19058d extends AbstractC19064bf {

        /* renamed from: a */
        public static final C19058d f64776a = new C19058d();

        private C19058d() {
            super("local", false);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.be$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$e.class */
    public static final class C19059e extends AbstractC19064bf {

        /* renamed from: a */
        public static final C19059e f64777a = new C19059e();

        private C19059e() {
            super(RecordService.PRIVATE_NUMBER_STRING, false);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.be$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$f.class */
    public static final class C19060f extends AbstractC19064bf {

        /* renamed from: a */
        public static final C19060f f64778a = new C19060f();

        private C19060f() {
            super("private_to_this", false);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19064bf
        /* renamed from: a */
        public final String mo2675a() {
            return "private/*private to this*/";
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.be$g */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$g.class */
    public static final class C19061g extends AbstractC19064bf {

        /* renamed from: a */
        public static final C19061g f64779a = new C19061g();

        private C19061g() {
            super("protected", true);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.be$h */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$h.class */
    public static final class C19062h extends AbstractC19064bf {

        /* renamed from: a */
        public static final C19062h f64780a = new C19062h();

        private C19062h() {
            super("public", true);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.be$i */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/be$i.class */
    public static final class C19063i extends AbstractC19064bf {

        /* renamed from: a */
        public static final C19063i f64781a = new C19063i();

        private C19063i() {
            super("unknown", false);
        }
    }

    static {
        C18229c builder = new C18229c();
        builder.put(C19060f.f64778a, 0);
        builder.put(C19059e.f64777a, 0);
        builder.put(C19056b.f64774a, 1);
        builder.put(C19061g.f64779a, 1);
        builder.put(C19062h.f64780a, 2);
        C18524p.m3840d(builder, "builder");
        C18229c c18229c = builder;
        c18229c.m4288a();
        c18229c.f63330a = true;
        f64771b = c18229c;
    }

    private C19054be() {
    }

    /* renamed from: a */
    public static Integer m2677a(AbstractC19064bf first, AbstractC19064bf second) {
        C18524p.m3840d(first, "first");
        C18524p.m3840d(second, "second");
        if (first == second) {
            return 0;
        }
        Map<AbstractC19064bf, Integer> map = f64771b;
        Integer num = map.get(first);
        Integer num2 = map.get(second);
        if (num != null && num2 != null && !C18524p.m3850a(num, num2)) {
            return Integer.valueOf(num.intValue() - num2.intValue());
        }
        return null;
    }

    /* renamed from: a */
    public static boolean m2678a(AbstractC19064bf visibility) {
        C18524p.m3840d(visibility, "visibility");
        return visibility == C19059e.f64777a || visibility == C19060f.f64778a;
    }
}
