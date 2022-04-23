package kotlin.reflect.jvm.internal.impl.g;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/g.class */
public interface g {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/g$a.class */
    public static final class a implements g {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37686a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.g.g
        public final boolean a(k what, k from) {
            p.d(what, "what");
            p.d(from, "from");
            return true;
        }
    }

    boolean a(k kVar, k kVar2);
}
