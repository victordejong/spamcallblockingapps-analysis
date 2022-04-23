package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.protobuf.h;
import okhttp3.internal.http2.Settings;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/f.class */
public final class f {

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f38126b = false;

    /* renamed from: c  reason: collision with root package name */
    private static final f f38127c = new f(true);

    /* renamed from: a  reason: collision with root package name */
    final Map<a, h.e<?, ?>> f38128a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/f$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Object f38129a;

        /* renamed from: b  reason: collision with root package name */
        private final int f38130b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Object obj, int i) {
            this.f38129a = obj;
            this.f38130b = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f38129a == aVar.f38129a && this.f38130b == aVar.f38130b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f38129a) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.f38130b;
        }
    }

    f() {
        this.f38128a = new HashMap();
    }

    private f(boolean z) {
        this.f38128a = Collections.emptyMap();
    }

    public static f a() {
        return new f();
    }

    public static f b() {
        return f38127c;
    }

    public final void a(h.e<?, ?> eVar) {
        this.f38128a.put(new a(eVar.f38150a, eVar.f38153d.f38147b), eVar);
    }
}
