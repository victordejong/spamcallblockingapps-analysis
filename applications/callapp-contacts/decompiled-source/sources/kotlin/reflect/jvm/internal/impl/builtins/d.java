package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.f.f;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/d.class */
public final class d extends g {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37284a = new a(null);
    private static final d f = new d(false, 1, null);

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/d$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public d() {
        this(false, 1, null);
    }

    public d(boolean z) {
        super(new f("DefaultBuiltIns"));
        if (z) {
            a(false);
        }
    }

    public /* synthetic */ d(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }

    public static final d a() {
        return f;
    }
}
