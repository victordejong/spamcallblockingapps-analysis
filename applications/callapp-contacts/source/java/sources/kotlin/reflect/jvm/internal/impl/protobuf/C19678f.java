package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h;
import okhttp3.internal.http2.Settings;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/f.class */
public final class C19678f {

    /* renamed from: b */
    private static volatile boolean f65827b = false;

    /* renamed from: c */
    private static final C19678f f65828c = new C19678f(true);

    /* renamed from: a */
    final Map<C19679a, AbstractC19683h.C19690e<?, ?>> f65829a;

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.f$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/f$a.class */
    public static final class C19679a {

        /* renamed from: a */
        private final Object f65830a;

        /* renamed from: b */
        private final int f65831b;

        public C19679a(Object obj, int i) {
            this.f65830a = obj;
            this.f65831b = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof C19679a)) {
                return false;
            }
            C19679a c19679a = (C19679a) obj;
            return this.f65830a == c19679a.f65830a && this.f65831b == c19679a.f65831b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f65830a) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.f65831b;
        }
    }

    C19678f() {
        this.f65829a = new HashMap();
    }

    private C19678f(boolean z) {
        this.f65829a = Collections.emptyMap();
    }

    /* renamed from: a */
    public static C19678f m1734a() {
        return new C19678f();
    }

    /* renamed from: b */
    public static C19678f m1732b() {
        return f65828c;
    }

    /* renamed from: a */
    public final void m1733a(AbstractC19683h.C19690e<?, ?> c19690e) {
        this.f65829a.put(new C19679a(c19690e.f65852a, c19690e.f65855d.f65848b), c19690e);
    }
}
