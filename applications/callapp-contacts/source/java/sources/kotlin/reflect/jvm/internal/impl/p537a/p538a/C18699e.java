package kotlin.reflect.jvm.internal.impl.p537a.p538a;

import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: kotlin.reflect.jvm.internal.impl.a.a.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/a/a/e.class */
public final class C18699e implements Serializable {

    /* renamed from: a */
    public static final C18700a f63807a = new C18700a(null);

    /* renamed from: d */
    private static final C18699e f63808d = new C18699e(-1, -1);

    /* renamed from: b */
    private final int f63809b;

    /* renamed from: c */
    private final int f63810c;

    /* renamed from: kotlin.reflect.jvm.internal.impl.a.a.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/a/a/e$a.class */
    public static final class C18700a {
        private C18700a() {
        }

        public /* synthetic */ C18700a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public C18699e(int i, int i2) {
        this.f63809b = i;
        this.f63810c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C18699e)) {
            return false;
        }
        C18699e c18699e = (C18699e) obj;
        return this.f63809b == c18699e.f63809b && this.f63810c == c18699e.f63810c;
    }

    public final int hashCode() {
        return (this.f63809b * 31) + this.f63810c;
    }

    public final String toString() {
        return "Position(line=" + this.f63809b + ", column=" + this.f63810c + ')';
    }
}
