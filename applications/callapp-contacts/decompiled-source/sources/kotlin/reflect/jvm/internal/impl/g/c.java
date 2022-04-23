package kotlin.reflect.jvm.internal.impl.g;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/c.class */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f37670a;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/c$a.class */
    public static final class a extends c {

        /* renamed from: b  reason: collision with root package name */
        public static final a f37671b = new a();

        private a() {
            super(false, null);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/c$b.class */
    public static final class b extends c {

        /* renamed from: b  reason: collision with root package name */
        private final String f37672b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String error) {
            super(false, null);
            p.d(error, "error");
            this.f37672b = error;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.g.c$c  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/c$c.class */
    public static final class C0681c extends c {

        /* renamed from: b  reason: collision with root package name */
        public static final C0681c f37673b = new C0681c();

        private C0681c() {
            super(true, null);
        }
    }

    private c(boolean z) {
        this.f37670a = z;
    }

    public /* synthetic */ c(boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(z);
    }
}
