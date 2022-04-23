package kotlin.reflect.jvm.internal.impl.a.a;

import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/a/a/e.class */
public final class e implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public static final a f36965a = new a(null);

    /* renamed from: d  reason: collision with root package name */
    private static final e f36966d = new e(-1, -1);

    /* renamed from: b  reason: collision with root package name */
    private final int f36967b;

    /* renamed from: c  reason: collision with root package name */
    private final int f36968c;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/a/a/e$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public e(int i, int i2) {
        this.f36967b = i;
        this.f36968c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f36967b == eVar.f36967b && this.f36968c == eVar.f36968c;
    }

    public final int hashCode() {
        return (this.f36967b * 31) + this.f36968c;
    }

    public final String toString() {
        return "Position(line=" + this.f36967b + ", column=" + this.f36968c + ')';
    }
}
