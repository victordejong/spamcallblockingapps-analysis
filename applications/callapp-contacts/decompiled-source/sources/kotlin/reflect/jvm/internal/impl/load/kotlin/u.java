package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.List;
import kotlin.a.z;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/u.class */
public interface u {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/u$a.class */
    public static final class a implements u {

        /* renamed from: a  reason: collision with root package name */
        public static final a f38096a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.u
        public final List<String> a(String packageFqName) {
            p.d(packageFqName, "packageFqName");
            return z.f36608a;
        }
    }

    List<String> a(String str);
}
