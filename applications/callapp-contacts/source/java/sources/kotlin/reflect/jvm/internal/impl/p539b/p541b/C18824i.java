package kotlin.reflect.jvm.internal.impl.p539b.p541b;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
/* renamed from: kotlin.reflect.jvm.internal.impl.b.b.i */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/i.class */
public final class C18824i {

    /* renamed from: a */
    public static final C18825a f64325a = new C18825a(null);

    /* renamed from: c */
    private static final C18824i f64326c = new C18824i(C18297z.f63400a);

    /* renamed from: b */
    final List<C18702a.C18790u> f64327b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.b.i$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/i$a.class */
    public static final class C18825a {
        private C18825a() {
        }

        public /* synthetic */ C18825a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static C18824i m3040a(C18702a.C18797v table) {
            C18524p.m3840d(table, "table");
            if (table.f64239b.size() == 0) {
                return C18824i.f64326c;
            }
            List<C18702a.C18790u> list = table.f64239b;
            C18524p.m3843b(list, "table.requirementList");
            return new C18824i(list, null);
        }
    }

    private C18824i(List<C18702a.C18790u> list) {
        this.f64327b = list;
    }

    public /* synthetic */ C18824i(List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(list);
    }
}
