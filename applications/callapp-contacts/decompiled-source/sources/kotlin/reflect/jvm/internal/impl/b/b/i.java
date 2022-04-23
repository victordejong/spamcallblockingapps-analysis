package kotlin.reflect.jvm.internal.impl.b.b;

import java.util.List;
import kotlin.a.z;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37162a = new a(null);

    /* renamed from: c  reason: collision with root package name */
    private static final i f37163c = new i(z.f36608a);

    /* renamed from: b  reason: collision with root package name */
    final List<a.u> f37164b;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/i$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static i a(a.v table) {
            p.d(table, "table");
            if (table.f37135b.size() == 0) {
                return i.f37163c;
            }
            List<a.u> list = table.f37135b;
            p.b(list, "table.requirementList");
            return new i(list, null);
        }
    }

    private i(List<a.u> list) {
        this.f37164b = list;
    }

    public /* synthetic */ i(List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(list);
    }
}
