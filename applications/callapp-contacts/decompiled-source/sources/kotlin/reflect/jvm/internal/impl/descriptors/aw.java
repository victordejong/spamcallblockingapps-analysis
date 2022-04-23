package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/aw.class */
public interface aw {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/aw$a.class */
    public static final class a implements aw {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37403a = new a();

        private a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.aw
        public final Collection<KotlinType> a(TypeConstructor currentTypeConstructor, Collection<? extends KotlinType> superTypes, Function1<? super TypeConstructor, ? extends Iterable<? extends KotlinType>> neighbors, Function1<? super KotlinType, v> reportLoop) {
            p.d(currentTypeConstructor, "currentTypeConstructor");
            p.d(superTypes, "superTypes");
            p.d(neighbors, "neighbors");
            p.d(reportLoop, "reportLoop");
            return superTypes;
        }
    }

    Collection<KotlinType> a(TypeConstructor typeConstructor, Collection<? extends KotlinType> collection, Function1<? super TypeConstructor, ? extends Iterable<? extends KotlinType>> function1, Function1<? super KotlinType, v> function12);
}
