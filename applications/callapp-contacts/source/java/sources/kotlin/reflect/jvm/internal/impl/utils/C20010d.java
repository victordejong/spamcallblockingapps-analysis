package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.C20128v;
import kotlin.jvm.functions.AbstractC18473n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AbstractC18526r;
/* renamed from: kotlin.reflect.jvm.internal.impl.utils.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/d.class */
public final class C20010d {

    /* renamed from: a */
    private static final Function1<Object, Object> f66350a = C20016f.f66361a;

    /* renamed from: b */
    private static final Function1<Object, Boolean> f66351b = C20012b.f66357a;

    /* renamed from: c */
    private static final Function1<Object, Object> f66352c = C20011a.f66356a;

    /* renamed from: d */
    private static final Function1<Object, C20128v> f66353d = C20013c.f66358a;

    /* renamed from: e */
    private static final Function2<Object, Object, C20128v> f66354e = C20014d.f66359a;

    /* renamed from: f */
    private static final AbstractC18473n<Object, Object, Object, C20128v> f66355f = C20015e.f66360a;

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/d$a.class */
    static final class C20011a extends AbstractC18526r implements Function1 {

        /* renamed from: a */
        public static final C20011a f66356a = new C20011a();

        C20011a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return null;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.d$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/d$b.class */
    static final class C20012b extends AbstractC18526r implements Function1<Object, Boolean> {

        /* renamed from: a */
        public static final C20012b f66357a = new C20012b();

        C20012b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
            return Boolean.TRUE;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.d$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/d$c.class */
    static final class C20013c extends AbstractC18526r implements Function1<Object, C20128v> {

        /* renamed from: a */
        public static final C20013c f66358a = new C20013c();

        C20013c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ C20128v invoke(Object obj) {
            return C20128v.f66529a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.d$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/d$d.class */
    static final class C20014d extends AbstractC18526r implements Function2<Object, Object, C20128v> {

        /* renamed from: a */
        public static final C20014d f66359a = new C20014d();

        C20014d() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* bridge */ /* synthetic */ C20128v invoke(Object obj, Object obj2) {
            return C20128v.f66529a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.d$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/d$e.class */
    static final class C20015e extends AbstractC18526r implements AbstractC18473n<Object, Object, Object, C20128v> {

        /* renamed from: a */
        public static final C20015e f66360a = new C20015e();

        C20015e() {
            super(3);
        }

        @Override // kotlin.jvm.functions.AbstractC18473n
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ C20128v mo1164a(Object obj, Object obj2, Object obj3) {
            return C20128v.f66529a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.d$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/d$f.class */
    static final class C20016f extends AbstractC18526r implements Function1<Object, Object> {

        /* renamed from: a */
        public static final C20016f f66361a = new C20016f();

        C20016f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return obj;
        }
    }

    /* renamed from: a */
    public static final <T> Function1<T, Boolean> m1198a() {
        return (Function1<T, Boolean>) f66351b;
    }

    /* renamed from: b */
    public static final AbstractC18473n<Object, Object, Object, C20128v> m1197b() {
        return f66355f;
    }
}
