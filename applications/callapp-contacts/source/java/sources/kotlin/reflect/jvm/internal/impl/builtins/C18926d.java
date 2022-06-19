package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.p554f.C19276f;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/d.class */
public final class C18926d extends AbstractC18940g {

    /* renamed from: a */
    public static final C18927a f64521a = new C18927a(null);

    /* renamed from: f */
    private static final C18926d f64522f = new C18926d(false, 1, null);

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/d$a.class */
    public static final class C18927a {
        private C18927a() {
        }

        public /* synthetic */ C18927a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public C18926d() {
        this(false, 1, null);
    }

    public C18926d(boolean z) {
        super(new C19276f("DefaultBuiltIns"));
        if (z) {
            m2821a(false);
        }
    }

    public /* synthetic */ C18926d(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }

    /* renamed from: a */
    public static final C18926d m2862a() {
        return f64522f;
    }
}
