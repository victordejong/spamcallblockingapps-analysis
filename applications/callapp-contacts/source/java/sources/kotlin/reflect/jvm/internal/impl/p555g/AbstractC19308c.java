package kotlin.reflect.jvm.internal.impl.p555g;

import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: kotlin.reflect.jvm.internal.impl.g.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/c.class */
public abstract class AbstractC19308c {

    /* renamed from: a */
    public final boolean f65152a;

    /* renamed from: kotlin.reflect.jvm.internal.impl.g.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/c$a.class */
    public static final class C19309a extends AbstractC19308c {

        /* renamed from: b */
        public static final C19309a f65153b = new C19309a();

        private C19309a() {
            super(false, null);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.g.c$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/c$b.class */
    public static final class C19310b extends AbstractC19308c {

        /* renamed from: b */
        private final String f65154b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19310b(String error) {
            super(false, null);
            C18524p.m3840d(error, "error");
            this.f65154b = error;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.g.c$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/c$c.class */
    public static final class C19311c extends AbstractC19308c {

        /* renamed from: b */
        public static final C19311c f65155b = new C19311c();

        private C19311c() {
            super(true, null);
        }
    }

    private AbstractC19308c(boolean z) {
        this.f65152a = z;
    }

    public /* synthetic */ AbstractC19308c(boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(z);
    }
}
