package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.n;
import kotlin.jvm.internal.r;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Function1<Object, Object> f38506a = f.f38515a;

    /* renamed from: b  reason: collision with root package name */
    private static final Function1<Object, Boolean> f38507b = b.f38511a;

    /* renamed from: c  reason: collision with root package name */
    private static final Function1<Object, Object> f38508c = a.f38510a;

    /* renamed from: d  reason: collision with root package name */
    private static final Function1<Object, v> f38509d = c.f38512a;
    private static final Function2<Object, Object, v> e = C0722d.f38513a;
    private static final n<Object, Object, Object, v> f = e.f38514a;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/d$a.class */
    static final class a extends r implements Function1 {

        /* renamed from: a  reason: collision with root package name */
        public static final a f38510a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return null;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/d$b.class */
    static final class b extends r implements Function1<Object, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f38511a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
            return Boolean.TRUE;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/d$c.class */
    static final class c extends r implements Function1<Object, v> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f38512a = new c();

        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ v invoke(Object obj) {
            return v.f38654a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.d$d  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/d$d.class */
    static final class C0722d extends r implements Function2<Object, Object, v> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0722d f38513a = new C0722d();

        C0722d() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* bridge */ /* synthetic */ v invoke(Object obj, Object obj2) {
            return v.f38654a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/d$e.class */
    static final class e extends r implements n<Object, Object, Object, v> {

        /* renamed from: a  reason: collision with root package name */
        public static final e f38514a = new e();

        e() {
            super(3);
        }

        @Override // kotlin.jvm.functions.n
        public final /* bridge */ /* synthetic */ v a(Object obj, Object obj2, Object obj3) {
            return v.f38654a;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/d$f.class */
    static final class f extends r implements Function1<Object, Object> {

        /* renamed from: a  reason: collision with root package name */
        public static final f f38515a = new f();

        f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return obj;
        }
    }

    public static final <T> Function1<T, Boolean> a() {
        return (Function1<T, Boolean>) f38507b;
    }

    public static final n<Object, Object, Object, v> b() {
        return f;
    }
}
